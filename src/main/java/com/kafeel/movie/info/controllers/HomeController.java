package com.kafeel.movie.info.controllers;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kafeel.movie.info.service.MovieService;


/**
 * @author Kafeelur Rahman T K
 *
 */
@Controller
public class HomeController {

	@Autowired
	private MovieService movieService;
	
	private Logger logger = LogManager.getLogger(HomeController.class);
	
	/**
	 * @return
	 */
	@GetMapping("/")
	public String index() {
		
		logger.info("Mapping to the index page.");
		
		return "index";
	}
	
	/**
	 * @param movieName
	 * @param releaseYear
	 * @return
	 */
	@PostMapping("info")
	public ModelAndView info(@RequestParam String movieName ,@RequestParam int releaseYear) {
		
		ModelAndView mv=new ModelAndView("info");
		
		/* Adding Object to the Model.*/
		mv.addObject("movieInfo",movieService.getMovieDetails(movieService.getJSONDetails(movieName,releaseYear)));
		
		return mv;
	}
}
