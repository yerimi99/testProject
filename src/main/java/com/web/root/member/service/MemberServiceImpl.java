package com.web.root.member.service;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.root.member.dto.MemberDTO;
import com.web.root.mybatis.member.MemberMapper;



@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper mapper;
	
	@Override
	public int userCheck(HttpServletRequest request) {
		MemberDTO dto = mapper.userCheck(request.getParameter("id"));
		if(dto !=null) {
			if(request.getParameter("pw").equals(dto.getPw())) {
				return 1;
			}
		}
		return 0; 
	}
	
	@Override
	public ArrayList<MemberDTO> memberView() {
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		list = mapper.memberView();
		return list;
	}
	
	@Override
	public MemberDTO memberInfo(HttpServletRequest request) {
		MemberDTO dto = mapper.userCheck(request.getParameter("id"));
		return dto;
	}
	
	@Override
	public void successWrite(MemberDTO dto) {
		 mapper.successWrite(dto);

	}
}






