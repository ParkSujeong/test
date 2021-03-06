	package spring.interceptor;
			
	import java.io.IOException;
	import java.util.Calendar;
	import java.util.Date;
			
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
			
	import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
			
	public class EventExpirationCheckInterceptor extends HandlerInterceptorAdapter {
			
		@Override
		public boolean preHandle(HttpServletRequest request,
				HttpServletResponse response, Object handler) throws Exception {
			
			System.out.println(checkEvent(request));
			System.out.println("찍힘?"+checkEventExpiration());
		
			if (checkEvent(request) && checkEventExpiration()) {
				displayEventExpirationPage(request, response);
				return false;
			}
			
			
			return true;
		}
			
		private boolean checkEvent(HttpServletRequest request) {
			return request.getRequestURI().equals(
					request.getContextPath() + "/event/list.do");
		}
			
		private boolean checkEventExpiration() {
			Calendar calendar = Calendar.getInstance();
			calendar.set(2016, 8, 10);
			
			System.out.println("cal::::"+calendar.toString());
			Date now = new Date();
			System.out.println(now.toString());
			return now.after(calendar.getTime());
		}
			
		private void displayEventExpirationPage(HttpServletRequest request,
				HttpServletResponse response) throws IOException {
			response.sendRedirect("eventExpired.do");
		}
			
	}