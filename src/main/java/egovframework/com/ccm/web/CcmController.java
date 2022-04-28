package egovframework.com.ccm.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import egovframework.com.ccm.service.CcmService;
import egovframework.com.ccm.service.CcmVO;
import egovframework.com.ccm.service.DetailCodeVO;

@Controller
public class CcmController {
	
	@Autowired CcmService ccmservice;
	
// 공통코드 클릭시 상세코드 조회 
	@GetMapping("detailcodeSelectChose.do")
	public ModelAndView DetailCodeSelectChose(HttpServletRequest req) {
		System.out.println("vo 출력");
		System.out.println("vo 출력");
		System.out.println("vo 출력");
		System.out.println(req.getParameter("ccCode"));
		DetailCodeVO dvo = new DetailCodeVO();
		
		dvo.setCcCode(req.getParameter("ccCode"));
		ModelAndView mv = new ModelAndView("jsonView");
		List<DetailCodeVO> list = ccmservice.selectchoseDetail(dvo);
		System.out.println("list 출력하기 !!!!!!!!!");
		System.out.println(list);
		mv.addObject("choseDetaildata", list);
		return mv;
		
	}
// 공통코드 조회 
	@RequestMapping("ccmSelectAll.do")
	public ModelAndView CcmSelectAll(Model model, CcmVO cvo) {
		ModelAndView mv = new ModelAndView("jsonView");
		
		List<CcmVO> list = ccmservice.selectAllCcm(cvo);
		mv.addObject("Ccmdatas",list);
		System.out.println("공통코드 list 출력");
		System.out.println(list);
		
		return mv;
	}
	
// 상세코드 조회 
	@PostMapping(value="detailcodeSelectAll.do")
	public ModelAndView DetailCodeSelectAll(@RequestParam(required = false, value = "ajaxstr[]") List<String> arr){
		ModelAndView mv = new ModelAndView("");
		mv.setViewName("jsonView");
		
		System.out.println("commandMap 출력");
		System.out.println("commandMap 출력");
		System.out.println(arr.get(1));
		
		DetailCodeVO dvo = new DetailCodeVO();
		List<DetailCodeVO> list = ccmservice.selectAllDetail(dvo);
		
		 mv.addObject("DeailCodedatas",list); System.out.println("상세코드 list 출력");
		  System.out.println(list);
		 		
		return mv;
	}	

//	공통 상세코드 목록 페이지 이동 
	@RequestMapping("ccmCodeList.do")
	public String goccmCodeList() {
		System.out.println("공통관리 목록 페이지 호출");
		return "ccm/ccmCodeList";
	}
	
//	공통 상세코드 등록 페이지 이동 
	@RequestMapping("ccmupendmunuinsert.do")
	public String goChinsert() {
		System.out.println("상세코드 등록 페이지 호출");
		return "ccm/ccmupendmenuinsert";
	}
//	공통 상세코드 목록 페이지 이동 
	@RequestMapping("ccmupendmenu.do")
	public String goCh() {
		System.out.println("공통관리 목록 페이지 호출");
		return "ccm/ccmupendmenu";
	}
}
