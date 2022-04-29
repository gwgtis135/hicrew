package egovframework.upendmenu.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import egovframework.upendmenu.service.UpendMenuService;
import egovframework.upendmenu.service.UpendMenuVO;

@Controller
public class UpendMenuController {

	@Autowired(required=false)
	private UpendMenuService ums;
	
	@RequestMapping("loadupend.do")
	public ModelAndView loadupend() {
		ModelAndView mv = new ModelAndView("jsonView");
		List<UpendMenuVO> list = ums.selectAllum();
		System.out.println(list.toString());
		mv.addObject("upendlist", list);
		return mv;
	}
}
