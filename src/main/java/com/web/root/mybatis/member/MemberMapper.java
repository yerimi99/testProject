package com.web.root.mybatis.member;

import java.util.ArrayList;

import com.web.root.member.dto.MemberDTO;

public interface MemberMapper {

	public MemberDTO userCheck(String id);
	
	public ArrayList<MemberDTO> memberView();
	
	public MemberDTO memberInfo(String id);
	
	public void successWrite(MemberDTO dto);
}
