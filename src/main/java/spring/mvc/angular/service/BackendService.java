package spring.mvc.angular.service;

import spring.mvc.angular.domain.ResponseDTO;

/**
 * The Interface Backend Service for content.
 * 
 * @author Srinivas Rao
 *
 */
public interface BackendService {
	
	/**
	 * Gets the details.
	 *
	 * @return the details response dto.
	 */
	ResponseDTO getDetails();

}
