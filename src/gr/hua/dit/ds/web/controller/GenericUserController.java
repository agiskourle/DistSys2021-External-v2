package gr.hua.dit.ds.web.controller;

import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import gr.hua.dit.ds.web.other.AuthService;

@RequestMapping("/home")
@Controller
public class GenericUserController {

	//private int id;
	
	AuthService myservice = new AuthService();
	
	//--->https://mkyong.com/java/java-11-httpclient-examples/
	
	private final HttpClient httpClient = HttpClient.newBuilder().version(HttpClient.Version.HTTP_2).build();

	@GetMapping("/check")
	public String clear(Model model) {
		return "Check";
	}

	@GetMapping("/checkButton")
	public String checkButton(HttpServletRequest request, Model model) {
		try {
			String s = "" + myservice.getcurrentUserDepartment();
			HttpRequest request1 = HttpRequest.newBuilder().GET() //GET !!!
					.uri(URI.create("http://localhost:8080/spring-mvc-ds-2020-v2/api/students/" + s))
					.setHeader("User-Agent", "Java 11 HttpClient Bot").build();

			HttpResponse<String> response = httpClient.send(request1, HttpResponse.BodyHandlers.ofString());

			// print status code
			//System.out.println(response.statusCode());
			// print response body
			//System.out.println(response.body());

			model.addAttribute("status", response.body());
			return "ShowStatus";
		} catch (Exception e) {
			e.printStackTrace();
			return "GenericError";
		}
	}

	@GetMapping("/change")
	public String change(Model model) {
		return "Change";
	}

	//Update With GETMAPPING - Example
	/*
	@GetMapping("/changeForm")
	public String changeForm(HttpServletRequest request, Model model) {
		String s = "" + myservice.getcurrentUserDepartment();
		try {
			int phone = Integer.parseInt(request.getParameter("phone"));
			String mail = request.getParameter("mail");

			HttpRequest request1 = HttpRequest.newBuilder().GET()
					.uri(URI.create("http://localhost:8080/spring-mvc-ds-2020-v2/api/updateStudentInfo:" + s + "," + phone + "," + mail))
					 .setHeader("User-Agent", "Java 11 HttpClient Bot") // add request header
		                .build();

			httpClient.send(request1, HttpResponse.BodyHandlers.ofString());
			
			return "SuccessfulAction";

		} catch (Exception e) {
			e.printStackTrace();
			return "GenericError";
		}
	}
*/
	//UPDATE WITH POST - /updateStudentInfo2 -> API
	@PostMapping("/changeForm")
	public String changeForm(HttpServletRequest request, Model model) {
		String s = "" + myservice.getcurrentUserDepartment();
		try {
			int phone = Integer.parseInt(request.getParameter("phone"));
			String mail = request.getParameter("mail");
			
	        // json formatted data
	        String json = new StringBuilder()
	   			    .append("{")
	                .append("\"id\":\""+s+"\",")
	                .append("\"phone\":\""+phone+"\",")
	                .append("\"mail\":\""+mail+"\",")
	                .append("}").toString();
	        
	        //StringEntity entity = new StringEntity(json,ContentType.APPLICATION_FORM_URLENCODED);
	        
	        // add json header
	        HttpRequest request1 = HttpRequest.newBuilder()
	                .POST(HttpRequest.BodyPublishers.ofString(json)) // POST OR PUT !!!
	                .uri(URI.create("http://localhost:8080/spring-mvc-ds-2020-v2/api/students/details"))
	                .setHeader("User-Agent", "Java 11 HttpClient Bot") // Add request header
	                .header("Content-Type", "application/json")
	                .build();
	        
	        HttpResponse<String> response = httpClient.send(request1, HttpResponse.BodyHandlers.ofString());

	        // print status code
	        //System.out.println(response.statusCode());
	        // print response body
	        System.out.println(response.body());

			return "SuccessfulAction";
		} catch (Exception e) {
			e.printStackTrace();
			return "GenericError";
		}
}

	@GetMapping("/send")
	public String send(Model model) {
		return "Send";
	}
	
	/*
	 * Send Application WITH GET
	@GetMapping("/sendButton")
	public String sendForm(HttpServletRequest request, Model model) {
		try {
			String s = "" + myservice.getcurrentUserDepartment();
			HttpRequest request1 = HttpRequest.newBuilder().GET()
					.uri(URI.create("http://localhost:8080/spring-mvc-ds-2020-v2/api/updateApplicationStatus:" + s))
					.setHeader("User-Agent", "Java 11 HttpClient Bot").build();

			HttpResponse<String> response =	httpClient.send(request1, HttpResponse.BodyHandlers.ofString());
			model.addAttribute("status", response.body());
			return "ApplicationSent";
		} catch (Exception e) {
			e.printStackTrace();
			return "GenericError";
		}
	}
	*/

	//SEND Application WITH GET OR POST ---> updateApplicationStatus2 -> API
	//https://www.baeldung.com/spring-file-upload
	@GetMapping("/sendButton")
	public String sendForm(HttpServletRequest request, Model model) {
		String s = "" + myservice.getcurrentUserDepartment();
		try {

	        // Json formatted data
	        String json = new StringBuilder()
	   			    .append("{")
	                .append("\"id\":\""+s+"\",")
	                .append("}").toString();
	        
	        //StringEntity entity = new StringEntity(json,ContentType.APPLICATION_FORM_URLENCODED);
	        
	        // Add Json header
	        HttpRequest request1 = HttpRequest.newBuilder()
	                .POST(HttpRequest.BodyPublishers.ofString(json)) //POST OR PUT
	                .uri(URI.create("http://localhost:8080/spring-mvc-ds-2020-v2/api/students/applications"))
	                .setHeader("User-Agent", "Java 11 HttpClient Bot") // add request header
	                .header("Content-Type", "application/json")
	                .build();
	        
	        HttpResponse<String> response = httpClient.send(request1, HttpResponse.BodyHandlers.ofString());

	        // print status code
	        //System.out.println(response.statusCode());
	        // print response body
	        //System.out.println(response.body());
	        
	        if(Integer.parseInt(response.body())==1) {
		        model.addAttribute("status", response.body());
				return "ApplicationSent";
	        } else {
	        	return "NotActivated";
	        }

		} catch (Exception e) {
			e.printStackTrace();
			return "GenericError";
		}
	}
}
