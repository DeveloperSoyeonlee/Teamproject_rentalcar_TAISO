package com.taiso.board.action;

import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.taiso.board.db.BoardDAO;
import com.taiso.board.db.BoardDTO;

public class QuestionWriteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println( " M : QuestionWriteAction_execute 호출! ");
	
		// 세션에 아이디 저장 
		HttpSession session = request.getSession();
		String mem_id = (String) session.getAttribute("mem_id");
//		
		ActionForward forward = new ActionForward();
		System.out.println(mem_id);
		
		
		// 세션에 아이디 저장 
		BoardDAO bodao = new BoardDAO();
		int myqnacnt = bodao.getMyqnacnt(mem_id);
		int myreviewcnt = bodao.getMyreviewcnt(mem_id);
	
		request.setAttribute("myqnacnt", myqnacnt);
		request.setAttribute("myreviewcnt", myreviewcnt);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		// 로그인제어(로그인화면으로)
		
		if(mem_id==null) {
			out.print("<script>");
			out.print("alert('로그인이 필요합니다!');");
//			out.print("swal(\"Good job!\", \"You clicked the button!\", \"success\")");
			out.print(" location.href='./MemberLogin.me'; ");
			out.print("</script>");
			out.close();
			return null;
		}
		
		
		// 1) 파일 업로드
		// 업로드 가상폴더 생성 /upload
		// 첨부파일 크기 지정 / 10MB
		
		ServletContext CTX = request.getServletContext();
		String realPath = CTX.getRealPath("./upload");
		System.out.println(" M : realPath : "+realPath);
		int maxSize = 10 * 1024 * 1024;
		
		// 파일업로드 -> 파일업로드 객체 생성(MultipartRequest)
		MultipartRequest multi 
		        = new MultipartRequest(
		        		request,
		        		realPath,
		        		maxSize,
		        		"UTF-8",
		        		new DefaultFileRenamePolicy()
		        		);
		
		System.out.println(" M : 첨부파일 업로드 성공! ");	
		
		// 전달정보 (파라미터 저장)
		BoardDTO bodto = new BoardDTO();
//		bodto.setBo_num(Integer.parseInt(request.getParameter("bo_num")));
//		bodto.setBo_re_ref(Integer.parseInt(request.getParameter("bo_re_ref")));
//		bodto.setBo_re_lev(Integer.parseInt(request.getParameter("bo_re_lev")));
//		bodto.setBo_re_seq(Integer.parseInt(request.getParameter("bo_re_seq")));
		bodto.setMem_id(mem_id);
		bodto.setBo_cate(multi.getParameter("bo_cate"));
		bodto.setBo_title(multi.getParameter("bo_title"));
		bodto.setBo_pass(multi.getParameter("bo_pass"));
		bodto.setBo_content(multi.getParameter("bo_content"));
		bodto.setBo_file(multi.getFilesystemName("bo_file"));
//		bodto.setSysdate(null)
		
		// BoardDAO 객체
//		BoardDAO bodao = new BoardDAO();
		
		// insertBoard()
		bodao.insertQuestion(bodto,mem_id);
		
		// 페이지 이동정보 생성(티켓 생성) 
		forward.setPath("./QuestionList.bo");
		forward.setRedirect(true);
		
		return forward;
	}

}
