package com.web.root.member.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.root.member.dto.MemberDTO;



public interface MemberService {

	public int userCheck(HttpServletRequest request);
	
	public ArrayList<MemberDTO> memberView();
	
	public MemberDTO memberInfo(HttpServletRequest request);
	
	public void successWrite(MemberDTO dto);

}
