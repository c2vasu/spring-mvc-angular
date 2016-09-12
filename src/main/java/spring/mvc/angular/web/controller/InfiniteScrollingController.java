package spring.mvc.angular.web.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import org.springframework.web.servlet.ModelAndView;

import spring.mvc.angular.common.domain.RequestDTO;
import spring.mvc.angular.common.Constants;




/**
 * Controller for infinite scrolling sample.
 * 
 * @author Srinivas Rao
 *
 */
@Controller
@Scope(Constants.SESSION)
public class InfiniteScrollingController  {

	private static final Logger LOGGER = Logger.getLogger(InfiniteScrollingController.class);

	
	/**
	 * Front controller for fetch jons response.
	 * 
	 * @param request the RequestDTO.
	 * @return List<String> the year list.
	 */
	@RequestMapping(Constants.DEMO_PAGE)
	@ResponseBody
	public String generateJson(@RequestBody final RequestDTO request) {

		if(LOGGER.isInfoEnabled()){
			LOGGER.info("Index = " + request);
		}

		return "";
	}
	
	@RequestMapping(value = Constants.INDEX_PAGE)
	public ModelAndView root() {
		return new ModelAndView(Constants.INDEX_VIEW);
	}

}
