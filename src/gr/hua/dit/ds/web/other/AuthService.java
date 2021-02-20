package gr.hua.dit.ds.web.other;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

public class AuthService {

	public String getcurrentUserDepartment() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (!(authentication instanceof AnonymousAuthenticationToken)) {
		    String currentUserName = authentication.getName();
		    Pattern p = Pattern.compile("\\d+");
	        Matcher m = p.matcher(currentUserName);
	        m.find();
	        return m.group();
		} else {
			return "Error2";
		}
	}

}
