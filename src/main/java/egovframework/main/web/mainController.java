package egovframework.main.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import egovframework.main.service.LCALSVO;
import egovframework.main.service.mainService;
import egovframework.menudetail.service.MenuDetailVO;
import egovframework.upendmenu.service.UpendMenuVO;

@Controller
public class mainController {

	@Autowired
	private mainService mservice;
	
	@RequestMapping("move.do/{addr}")
	public String move(@PathVariable String addr,HttpServletRequest req) {
		HttpSession hs = req.getSession();
		hs.invalidate();
		System.out.println(addr);
		String[] b = addr.split("\\.");
		String ret = "main/"+b[0];
		if(b[0].equals("ch")) {
			return "ch/Ch";
		}else if(b[0].equals("orgcht")) {
			return "orgcht/Orgcht";
		}else if(b[0].equals("groupware")) {
			return "main/groupware";
		}else if(b[0].equals("ccmupendmenu")) {
			return "ccm/ccmupendmenu";
		}
		return ret;
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
		System.out.printf("name : %s, intrcn: %s, level : %s", vo.getLcalsName(), vo.getLcalsIntrcn(),
				vo.getLcalsLevel());
		mservice.insertLCALS(vo);
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

	@RequestMapping("upendmenu.do")
	public String upendmenu() {
		return "main/upendmenu";
	}

	@RequestMapping("menudetail.do")
	public String menudeatil(HttpServletRequest req) {
		HttpSession hs = req.getSession();
		hs.setAttribute("FLAG", false);
		System.out.println("bbbbbbbbbbbbbbb");
		return "main/menudetail";
	}

	@PostMapping("menudetail.do")
	public String menudeatil2(HttpServletRequest req) {
		HttpSession hs = req.getSession();

		UpendMenuVO vo = new UpendMenuVO();
		System.out.println("aaaaaaaaa");
		hs.setAttribute("FLAG", true);
		hs.setAttribute("UpendFlag", true);
		vo.setUpendType(Integer.parseInt(req.getParameter("UpendType")));
		vo.setUpendIntrcn(req.getParameter("UpendIntrcn"));
		vo.setUpendLink(req.getParameter("UpendLink"));
		vo.setUpendName(req.getParameter("UpendName"));
		vo.setUpendThema(Integer.parseInt(req.getParameter("UpendThema")));
		vo.setUpendYn(req.getParameter("UpendYn"));
		hs.setAttribute("Upend", vo);
		System.out.println(vo.toString());
		/*
		 * hs.setAttribute("UpendType", req.getParameter("UpendType"));
		 * hs.setAttribute("UpendIntrcn", req.getParameter("UpendIntrcn"));
		 * hs.setAttribute("UpendName", req.getParameter("UpendName"));
		 * hs.setAttribute("UpendLink", req.getParameter("UpendLink"));
		 * hs.setAttribute("UpendYn", req.getParameter("UpendThema"));
		 * hs.setAttribute("UpendThema", req.getParameter("UpendYn"));
		 */

		return "main/menudetail";
	}

	@RequestMapping("loadNav.do")
	public String loadnav(Model model, HttpServletRequest req) {
		LCALSVO vo = new LCALSVO();
		vo.setLcalsLevel(Integer.parseInt(req.getParameter("level")));
		System.out.println("ctrlr : ");
		List<LCALSVO> listvo = mservice.selectnavLCALS(vo);
		System.out.println("ctrlr : " + listvo);
		model.addAttribute("navlist", listvo);
		return "jsonView";
	}
}
