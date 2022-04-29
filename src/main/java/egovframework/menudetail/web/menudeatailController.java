package egovframework.menudetail.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import egovframework.menudetail.service.MenuDetailVO;
import egovframework.menudetail.service.menudetailService;

@Controller
public class menudeatailController {

	@Autowired
	private menudetailService mdService;
	
	@RequestMapping("loadmd.do")
	public ModelAndView selectmd() {
		ModelAndView mv = new ModelAndView("jsonView");
		List<MenuDetailVO> list =mdService.selectmdm(); 
		System.out.println(list.toString());
		mv.addObject("md", list);
		return mv;
	}
}
