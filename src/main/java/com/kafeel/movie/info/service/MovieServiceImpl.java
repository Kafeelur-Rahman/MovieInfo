package com.kafeel.movie.info.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import com.kafeel.movie.info.model.MovieDetails;

/**
 * @author Kafeelur Rahman T K
 *
 */
@Component
public class MovieServiceImpl implements MovieService{

	
	@Value(value="${api_key}")
	public String apiKey;
	
	private BufferedReader reader;
	
	private Logger logger = LogManager.getLogger(MovieServiceImpl.class);
	
	/**
	 *	Returns the JSON formatted String.
	 */
	@Override
	public String getJSONDetails(String movieName,int releaseYear) {
		
		String methodName = "getJSONDetails()";
		
		logger.info("Begginning of {} ",methodName);
		
		try {
			
			movieName=URLEncoder.encode(movieName,"UTF-8");
			
			String link="http://www.omdbapi.com/?t="+movieName+"&y="+releaseYear+"&apikey="+apiKey;
			
			URL url=new URL(link);
			
			reader = new BufferedReader(new InputStreamReader(url.openStream()));
			
			StringBuilder data= new StringBuilder();
			
			String line;
			
			while((line=reader.readLine())!=null) {
				data.append(line);
			}
			
			logger.info("Retrieved Data : {}",data);
			
			logger.info("{} is finished successfully.",methodName);
			
			return data.toString();
		}
		catch(Exception e) {
			e.printStackTrace();
			logger.error("Exception in {} : {} ",methodName,e);
		}
		finally {
			try {
				reader.close();
			} catch (IOException e) {
				logger.error("Exception in {} : {} ",methodName,e);
				e.printStackTrace();
			}
		}
		
		return null;
	}

	/**
	 *	Returns the MovieDetails Object.
	 */
	@Override
	public MovieDetails getMovieDetails(String jsonData){

		String methodName = "getMovieDetails()";
		logger.info("Beggining of {} method.",methodName);
		
		MovieDetails details=new MovieDetails();
		
		if(jsonData !=null) {
			
			JSONObject object=new JSONObject(jsonData);
			
			details.setMovieName(object.getString("Title"));
			details.setPosterUrl(object.getString("Poster"));
			details.setActorsName(object.getString("Actors"));
			details.setDirectorName(object.getString("Director"));
			details.setWritersName(object.getString("Writer"));
			details.setCountry(object.getString("Country"));
			details.setMovieAwards(object.getString("Awards"));
			details.setLanguage(object.getString("Language"));
			details.setReleasedDate(object.getString("Released"));
			
			logger.info("{} is Fininshed.",methodName);
			
			return details;
		}
		return null;
	}
	
}
