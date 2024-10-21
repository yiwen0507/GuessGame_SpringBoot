package com.nanshan.guessgame.controller;

import com.nanshan.guessgame.model.GuessGame;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Random;

@Controller
public class GuessGameController {

    @PostMapping("/guessStart")
    public String guessGameStart(@RequestParam("randomNum") int randomNum, HttpSession session) {

        session.removeAttribute("guessGame");
        int randomNumber = 0;
        Random rand = new Random();
        randomNumber = rand.nextInt(randomNum)+1;
        GuessGame guessGame = new GuessGame(3, randomNumber);
        session.setAttribute("guessGame", guessGame);
        return "GuessGame";
    }

    @PostMapping("/guessNumber")
    public String guessGame(@RequestParam("number") int number, HttpSession session) {

        GuessGame guessGame = (GuessGame) session.getAttribute("guessGame");
        boolean result = guessGame.guess(number);

        if(result) {
            session.removeAttribute("guessGame");
            return "YouWin";
        }
        else if(guessGame.getRemain() > 1) {
            guessGame.setRemain(guessGame.getRemain() - 1);
            session.setAttribute("guessGame", guessGame); // 將更新的對象重新設置回會話
            return "GuessGame";
        }
        return "YouLose";
    }
}
