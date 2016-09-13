package spring.mvc.angular.repository.impl;

import java.util.Random;

import spring.mvc.angular.domain.ResponseDTO;
import spring.mvc.angular.repository.BackendRepository;

/**
 * The Interface Backend Repository implementation for content.
 *
 * @author Srinivas Rao
 */
public class BackendFileRepositoryImpl implements BackendRepository {

	/* 
	 * @see spring.mvc.angular.repository.BackendRepository#getDetails()
	 */
	@Override
	public ResponseDTO getDetails() {
		
		ResponseDTO response = new ResponseDTO();
		int randomNumber = getRandomNumber();
		response.setAddress("Canada, Ontario, Pin- "+ randomNumber);
		response.setEmail(randomNumber + "@demo.com");
		response.setGuid(""+randomNumber);
		response.setName("Mr."+randomNumber);
		return response;
	}
	
	/**
	 * Gets the random number.
	 *
	 * @return the random number
	 */
	private int getRandomNumber(){
		
		Random rn = new Random();
		return rn.nextInt(10) + 1;
	}
}
