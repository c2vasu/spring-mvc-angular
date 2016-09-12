package spring.mvc.angular.common.domain;

import java.io.Serializable;
import java.util.Locale;


/**
 * The User selected preference of the current http session.
 * 
 * @author Srinivas Rao 
 */
public class SessionPreference implements Serializable {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** The language. */
	private String language;

	/** The locale. */
	private Locale locale;

	
	/**
	 * Default Constructor.
	 */
	public SessionPreference() {
	}


	/**
	 * Gets the language.
	 *
	 * @return the language
	 */
	public String getLanguage() {
		return language;
	}

	/**
	 * Sets the language and the locale with it.
	 * 
	 * @param language
	 *            the language to set
	 */
	public void setLanguage(String language) {
		this.language = language;
		this.locale = new Locale(language);
	}

	/**
	 * To get the locale.
	 * 
	 * @return the locale
	 */
	public Locale getLocale() {
		return locale;
	}
	
	/*
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Session Preference [lang=" + language	+ "]";
	}

	
}
