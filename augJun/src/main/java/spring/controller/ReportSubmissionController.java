
package spring.controller;

import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.Random;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import spring.mybatis.FileDAO;

import spring.mybatis.SpringFile;

@Controller
public class ReportSubmissionController {

	@RequestMapping(value = "/report/submission.do", method = RequestMethod.GET)
	public String form() {
		
		return "report/submissionForm";
		
	}
	
	
	@RequestMapping(value = "/report/submitReport1.do", method = RequestMethod.POST)
	public String submitReport1(@RequestParam("studentNumber") String studentNumber,
			@RequestParam("report") MultipartFile report) {
		
		if(report.getOriginalFilename().equals("")){
			return "report/submissionForm";
		}
		
		
		printInfo(studentNumber, report);
		upload(report,studentNumber);
		return "report/submissionComplete";
	}

	

	@RequestMapping(value = "/report/submitReport2.do", method = RequestMethod.POST)
	public String submitReport2(MultipartHttpServletRequest request) {
		String studentNumber = request.getParameter("studentNumber");
		MultipartFile report = request.getFile("report");
		
		
		if(report.getOriginalFilename().equals("")){
			return "report/submissionForm";
		}
		
		
		printInfo(studentNumber, report);
		upload(report,studentNumber);
		
		return "report/submissionComplete";
	}

	@RequestMapping(value = "/report/submitReport3.do", method = RequestMethod.POST)
	public String submitReport3(ReportCommand reportCommand) {
			
		if(reportCommand.getReport().getOriginalFilename().equals("")){
			return "report/submissionForm";
		}
		
		
		
		printInfo(reportCommand.getStudentNumber(), reportCommand.getReport());
		upload(reportCommand.getReport(),reportCommand.getStudentNumber());
		
		return "report/submissionComplete";
		}
	
	

	private void printInfo(String studentNumber, MultipartFile report) {
		
		System.out.println(studentNumber + "가 업로드 한 파일: " + report.getOriginalFilename());
		
	}
	
	public void upload(MultipartFile report,String studentinfo){
		Calendar cal = Calendar.getInstance();
		String add_name= String.valueOf(cal.getTimeInMillis());
		String random = String.valueOf((int)(Math.random()*100+1));
		String path="c://test/"+add_name+random+report.getOriginalFilename();
		
		
		
		
		SpringFile sf = new SpringFile();
		sf.setPath(path);
		sf.setRealname(report.getOriginalFilename());
		sf.setFilesize(String.valueOf(report.getSize()));
		sf.setWriter(studentinfo);
		dbupload(sf);
		
		
		File file = new File(path);
		
		
		
		
		
		try {
			report.transferTo(file);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
	}
	
	public void dbupload(SpringFile db){
		
		
		GenericXmlApplicationContext context = new GenericXmlApplicationContext("sql/mybatis.xml");
		FileDAO dao = context.getBean("dao",FileDAO.class);
		dao.insertMem(db);
		
		
	}
	
	
	
}
