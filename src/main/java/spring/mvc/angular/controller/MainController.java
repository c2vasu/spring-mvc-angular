package spring.mvc.angular.controller;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import spring.mvc.angular.common.Constants;




/**
 * Controller for infinite scrolling sample.
 * 
 * @author Srinivas Rao
 *
 */
@Controller
@Scope(Constants.SESSION)
public class MainController {

	@RequestMapping(value = Constants.INDEX_PAGE)
	public ModelAndView root() {
		return new ModelAndView(Constants.INDEX_VIEW);
	}
}
