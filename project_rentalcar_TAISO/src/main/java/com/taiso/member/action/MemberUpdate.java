package com.taiso.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.member.db.MemberDAO;
import com.taiso.member.db.MemberDTO;

public class MemberUpdate implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : MemberUpdate_execute 호출 ");
		
		// 세션제어
		HttpSession session = request.getSession();
		String mem_id = (String) session.getAttribute("mem_id");
		
		ActionForward forward = new ActionForward();
		if(mem_id == null) {
			forward.setPath("./MemberLogin.me");
			forward.setRedirect(true);
			
			return forward;
		}
		
		// DAO - 기존의 회원정보 가져오기 - getMember(mem_id)
		MemberDAO mDAO = new MemberDAO();
		MemberDTO mDTO = mDAO.getMember(mem_id);
		
		// 정보 request 영역 저장
		request.setAttribute("mDTO", mDTO);
		
		// 페이지 이동
		forward.setPath("./member/memberUpdate.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
