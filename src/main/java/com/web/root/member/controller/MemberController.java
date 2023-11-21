package com.web.root.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.web.root.member.dto.MemberDTO;
import com.web.root.member.service.MemberService;
import com.web.root.session.name.MemberSession;

@Controller
@RequestMapping("member") // 매핑url을 정의해줘서 밑에 어노테이션에서는 /member을 생략해줄 수 있다
public class MemberController implements MemberSession {

	@Autowired
	private MemberService ms;
	
	@GetMapping("login")
	public String login() {
		return "member/login"; //반환하는 값에는 member 써줘야함
	}
	
	@PostMapping("user_check")
	public String user_check(HttpServletRequest request, RedirectAttributes ra) {
		int result = ms.userCheck(request);
		if(result ==1) {
			ra.addAttribute("id", request.getParameter("id"));
			return "redirect:successLogin";
		}
		
		return "redirect:login";
		
	}
	
	@RequestMapping("successLogin")
	public String successLogin(@RequestParam("id") String id, HttpSession session) {
		session.setAttribute(LOGIN, id);
		return "member/successLogin";
	}

	@GetMapping("logout")
	public String ligout(HttpSession session) {
		if(session.getAttribute("loginUser") != null) {
			session.invalidate();
		}
		return "redirect:/index"; // index 는 기본컨트롤러(homecontroller)에 있기 때문에 '/' 를 붙여줍니다
	}
	
	@GetMapping("memberInfo")
	public String memberView(Model model) {
		model.addAttribute("list",ms.memberView());
		return "member/memberInfo";
	}
	
	@GetMapping("info")
	public String info(Model model,HttpServletRequest request) {
		model.addAttribute("info", ms.memberInfo(request));
		return "member/info";
	}
	
	@GetMapping("register_form")
	public String registerForm() {
		return "member/register";
	}
	
	
	@PostMapping("register")
	public String successWrite(MemberDTO dto) {
		ms.successWrite(dto);
		return "redirect:/index";
	}
	
}











