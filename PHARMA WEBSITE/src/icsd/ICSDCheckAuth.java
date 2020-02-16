package icsd;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class ICSDCheckAuth {
public static HttpSession CheckAuthOfUser(HttpServletRequest request) throws ICSDAuthException {
	HttpSession session=request.getSession(false);
	if(session==null) {
		throw new ICSDAuthException("Please login again with valid id");
	}
	return session;
	
}
}
