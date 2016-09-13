package spring.mvc.angular.domain;

/**
 * The Response DTO for all the AJAX calls using JSON.
 * 
 * @author Srinivas Rao
 *
 */
public class ResponseDTO {
	
	private String guid;
	private String name;
	private String email;
	private String address;
	
	public String getGuid() {
		return guid;
	}
	public void setGuid(String guid) {
		this.guid = guid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
}
