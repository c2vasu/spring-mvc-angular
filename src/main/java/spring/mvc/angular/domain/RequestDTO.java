package spring.mvc.angular.domain;


/**
 * The request DTO for all the AJAX calls using JSON.
 * 
 * @author Srinivas Rao
 *
 */
public class RequestDTO {
	
	private String id;
	private String method;
	private String index;
	private String jsonrpc;
	
	public String getJsonrpc() {
		return jsonrpc;
	}
	public void setJsonrpc(String jsonrpc) {
		this.jsonrpc = jsonrpc;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMethod() {
		return method;
	}
	public void setMethod(String method) {
		this.method = method;
	}
	public String getIndex() {
		return index;
	}
	public void setIndex(String index) {
		this.index = index;
	}
	
	
}
