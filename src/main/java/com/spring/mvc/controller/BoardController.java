package com.spring.mvc.controller;

import com.spring.mvc.vo.Board;
import lombok.extern.log4j.Log4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.logging.Logger;

@RestController
@RequestMapping("/board")
@Log4j
public class BoardController {


    @RequestMapping(value = "/{boardNo}" , method = {RequestMethod.GET , RequestMethod.PUT})
    public ResponseEntity<String> modify(@PathVariable("boardNo") int boardNo , @RequestBody Board board){
        log.info("modify");
        log.info(board);
        ResponseEntity<String> entity = new ResponseEntity<String>("SUCCESS" , HttpStatus.OK);

        return entity;
    }

//	@RequestMapping(value = "/{boardNo}" , method = {RequestMethod.GET , RequestMethod.PUT})
//	public ResponseEntity<String> modifyheader(@PathVariable("boardNo") int boardNo ) {
//		System.out.println("test");
//		Logger.info("modifyheader");
//		//Logger.info(board.toString());
//
//		ResponseEntity<String> entity = new ResponseEntity<String>("SUCCESS" , HttpStatus.OK);
//
//		return entity;
//	}
}
