package egovframework.main.web;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import egovframework.main.service.LCALSVO;
import egovframework.main.service.MenuDetailVO;
import egovframework.main.service.mainService;

@Controller
public class mainController {

	@Autowired
	private mainService mservice;

	@RequestMapping("main.do")
	public String goMain() {
		return "main/index";
	}
	
	@RequestMapping("main2.do")
	public String goMain2() {
		return "main/index2";
	}
	
	@RequestMapping("loaddata")
	public ModelAndView loaddata() {
		ModelAndView mv = new ModelAndView();
		
		return mv;
	}
	
	@RequestMapping("insertLCALS.do")
	public String insertLCALS() {
		return "main/insertLCALS";
	}
	
	@RequestMapping("LCALSinsert.do")
	public String LCALSinsert(LCALSVO vo) {
		System.out.printf("name : %s, intrcn: %s, level : %s",vo.getLCALS_NAME(),vo.getLCALS_INTRCN(),vo.getLCALS_LEVEL());
		mservice.insertLCALS(vo);
		return "redirect:Temp.do";
	}
	
	@RequestMapping("insertMenu.do")
	public String insertMenu() {
		return "main/insertmenu";
	}
	
	@RequestMapping("Menuinsert.do")
	public String Menuinsert(MultipartHttpServletRequest req) {
		try {
		MenuDetailVO vo = new MenuDetailVO();
		vo.setLCALS_ID(Integer.parseInt(req.getParameter("LCALS_ID")));
		vo.setMENU_CONTENT(req.getParameter("MENU_CONTENT"));
		vo.setMENU_LINK(req.getParameter("MENU_LINK"));
		vo.setMENU_FILE(req.getFile("MENU_FILE").getBytes());
		System.out.println(req.getParameterMap());
		System.out.println("asd");
		System.out.println(vo.toString());
		System.out.printf("name : %s, content : %s,",vo.getMENU_NAME(),vo.getMENU_CONTENT());
		mservice.insertMD(vo);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "redirect:Temp.do";
	}
	
	@RequestMapping("Temp.do")
	public String temp() {
		return "redirect:main.do";
	}
	
	@RequestMapping("admin.do")
	public String admin() {
		return "main/Temp";
	}
}
