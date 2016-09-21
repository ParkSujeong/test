package spring.controller;

	import java.text.DateFormat;
	import java.text.SimpleDateFormat;
	import java.util.Date;

	import org.springframework.beans.propertyeditors.CustomDateEditor;
	import org.springframework.stereotype.Controller;
	import org.springframework.validation.BindingResult;
	import org.springframework.web.bind.WebDataBinder;
	import org.springframework.web.bind.annotation.InitBinder;
	import org.springframework.web.bind.annotation.ModelAttribute;
	import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

	@Controller
	public class QueryLogController {

		@ModelAttribute("command")
		public QueryLogCommand formBacking() {
			
			return new QueryLogCommand();
			
		}
		
		@RequestMapping(value = "/log/query.do", method = RequestMethod.GET)
		public String query() {
			
			return "log1/logList";
			
		}
		
		

		@RequestMapping(value ="/log/query.do", method = RequestMethod.POST)
		public String query(@ModelAttribute("command") QueryLogCommand command,
				BindingResult result) {
			return "log1/logList";
		}

		@InitBinder
		protected void initBinder(WebDataBinder binder) {
			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			binder.registerCustomEditor(Date.class, new CustomDateEditor(
					dateFormat, true));
		}
	}