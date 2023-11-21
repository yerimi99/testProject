package com.web.root.member.dto;

/*
-- membership 테이블
create table membership(
id VARCHAR2(10) PRIMARY KEY,
pw VARCHAR2(100),
addr VARCHAR2(300)
);
 */
public class MemberDTO {

	private String id;
	private String pw;
	private String addr;
	
	public MemberDTO() {
		super();
	}
	
	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	@Override
	public String toString() {
		return " [id : " + id + "- pw : " + pw + "- addr : " + addr + "]";
	}
}
