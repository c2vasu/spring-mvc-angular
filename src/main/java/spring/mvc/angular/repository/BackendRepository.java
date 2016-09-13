package spring.mvc.angular.repository;

import spring.mvc.angular.domain.ResponseDTO;

/**
 * The Interface Backend Repository for content.
 * 
 * @author Srinivas Rao
 *
 */
public interface BackendRepository {
	
	/**
	 * Gets the details.
	 *
	 * @return the details response dto.
	 */
	ResponseDTO getDetails();

}
