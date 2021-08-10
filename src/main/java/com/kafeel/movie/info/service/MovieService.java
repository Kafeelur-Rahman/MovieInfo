package com.kafeel.movie.info.service;


import com.kafeel.movie.info.model.MovieDetails;

/**
 * @author Kafeelur Rahman T K
 *
 */
public interface MovieService {
	
	/**
	 * @param movieName
	 * @param releaseYear
	 * @return
	 */
	public String getJSONDetails(String movieName,int releaseYear);
	
	/**
	 * @param jsonData
	 * @return
	 */
	public MovieDetails getMovieDetails(String jsonData);
	
}
