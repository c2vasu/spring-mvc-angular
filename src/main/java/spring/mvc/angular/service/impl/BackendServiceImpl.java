package spring.mvc.angular.service.impl;

import javax.annotation.Resource;


import spring.mvc.angular.common.Constants;
import spring.mvc.angular.domain.ResponseDTO;
import spring.mvc.angular.repository.BackendRepository;
import spring.mvc.angular.service.BackendService;


/**
 * The Interface Backend Service implementation for content.
 *
 * @author Srinivas Rao
 */
public class BackendServiceImpl implements BackendService {

	/** The backend repository. */
    @Resource(name = Constants.BACKEND_REPOSITORY_KEY)
    private BackendRepository repository;
    
	/* 
	 * @see spring.mvc.angular.service.BackendService#getDetails()
	 */
	@Override
	public ResponseDTO getDetails() {
		//Invoke backend repository
		return repository.getDetails();
	}
}
