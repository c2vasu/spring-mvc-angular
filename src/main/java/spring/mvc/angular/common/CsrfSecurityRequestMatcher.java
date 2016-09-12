package spring.mvc.angular.common;

import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.security.web.util.matcher.RegexRequestMatcher;
import org.springframework.security.web.util.matcher.RequestMatcher;


/**
 * CsrfSecurityRequestMatcher is to determine if the csrf to be bypassed based on predefined url, e.g. /retrieveQuoteInfo.
 * 
 * @author Srinivas Rao
 *
 */
public class CsrfSecurityRequestMatcher implements RequestMatcher {
	private static final Logger LOGGER = Logger.getLogger(CsrfSecurityRequestMatcher.class);
	private Pattern allowedMethods = Pattern.compile("^(GET|HEAD|TRACE|OPTIONS)$");
    private RegexRequestMatcher retrieveInfoMatcher = new RegexRequestMatcher(Constants.RETRIEVE_INFORMATION, null);
    private RegexRequestMatcher sampleMatcher = new RegexRequestMatcher(Constants.SAMPLE, null);
 
    /**
     * To determine if the request should bypass csrf check. False if it should be, true other otherwise.
     * @param request the HttpServletRequest.
     * 
     * @author Srinivas Rao
     */
    @Override
    public boolean matches(HttpServletRequest request) {
    	if(LOGGER.isInfoEnabled()){
    		LOGGER.info("Context root: " + request.getContextPath() + "; Servlet path: " + request.getServletPath());
    	}
        if(allowedMethods.matcher(request.getMethod()).matches()){
            return false;
        }
 
        if (retrieveInfoMatcher.matches(request))
        	return false;

        if (sampleMatcher.matches(request))
        	return false;
        
        
        return true;
    }
}
