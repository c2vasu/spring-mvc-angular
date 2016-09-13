package spring.mvc.angular.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.context.annotation.Scope;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import spring.mvc.angular.common.Constants;
import spring.mvc.angular.domain.ResponseDTO;
import spring.mvc.angular.service.BackendService;




/**
 * Controller for infinite scrolling sample.
 * 
 * @author Srinivas Rao
 *
 */
@RestController
@Scope(Constants.SESSION)
public class InfiniteScrollingRestController  {

	private static final Logger LOGGER = Logger.getLogger(InfiniteScrollingRestController.class);

	/** The backend service. */
    @Resource(name = Constants.BACKEND_SERVICE_KEY)
    private BackendService service;
    
	/**
	 * Front controller for fetch jons response.
	 * 
	 * @param request the RequestDTO.
	 * @return List<String> the year list.
	 */
    @RequestMapping(value = Constants.API_CONTROLLER, method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<ResponseDTO> generateJson(@PathVariable("id") String id) {
		
		ResponseDTO response = service.getDetails();
		
		if(LOGGER.isInfoEnabled()){
			LOGGER.info("Response from Spring API = " + response);
		}

		return new ResponseEntity<ResponseDTO>(response, HttpStatus.OK);
	}

}
