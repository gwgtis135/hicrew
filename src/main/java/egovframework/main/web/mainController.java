package egovframework.main.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import egovframework.main.service.LCALSVO;
import egovframework.main.service.MenuDetailVO;
import egovframework.main.service.mainService;
import egovframework.upendmenu.service.UpendMenuVO;

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
		System.out.printf("name : %s, intrcn: %s, level : %s", vo.getLcalsName(), vo.getLcalsIntrcn(),
				vo.getLcalsLevel());
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
			vo.setLcalsId(Integer.parseInt(req.getParameter("LCALS_ID")));
			vo.setMenuContent(req.getParameter("MENU_CONTENT"));
			vo.setMenuLink(req.getParameter("MENU_LINK"));
			vo.setMenuFile(req.getFile("MENU_FILE").getBytes());
			System.out.println(req.getParameterMap());
			System.out.println("asd");
			System.out.println(vo.toString());
			System.out.printf("name : %s, content : %s \n", vo.getMenuName(), vo.getMenuContent());
			mservice.insertMD(vo);
		} catch (Exception e) {
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

	@RequestMapping("cmpnyinfo.do")
	public String cmpnyinfo() {
		return "main/cmpnyinfo";
	}

	@RequestMapping("move.do()")
	public String move() {
		return "main/";
	}

	@RequestMapping("CIintrcn.do")
	public String CIintrcn() {
		return "main/CIintrcn";
	}

	@RequestMapping("directions.do")
	public String recruitment() {
		return "main/directions";
	}

	@RequestMapping("photo.do")
	public String photo() {
		return "main/photo";
	}

	@RequestMapping("pdfsolut.do")
	public String pdfsolut() {
		return "main/pdfsolut";
	}

	@RequestMapping("itsolut.do")
	public String itsolut() {
		return "main/itsolut";
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
		/* , UpendMenuVO vo) { */
		HttpSession hs = req.getSession();

		UpendMenuVO vo = new UpendMenuVO();
		System.out.println("aaaaaaaaa");
		hs.setAttribute("FLAG", true);
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
