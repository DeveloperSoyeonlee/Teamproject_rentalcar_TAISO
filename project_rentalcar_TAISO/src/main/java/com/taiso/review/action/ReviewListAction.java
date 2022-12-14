package com.taiso.review.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.car.db.CarDAO;
import com.taiso.review.db.ReviewDAO;

public class ReviewListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println("ReviewList_execute() 호출");
		
//		// 세션 제어 (id)
		HttpSession session = request.getSession();
		
		int car_code = Integer.parseInt(request.getParameter("car_code"));
		String car_name = request.getParameter("car_name");
		ActionForward forward = new ActionForward();
    
//		if(mem_id == null) {
//			forward.setPath("./MemberLogin.me");
//			forward.setRedirect(true);
//			return forward;
//		}

		ReviewDAO rDAO = new ReviewDAO();
		CarDAO carDAO = new CarDAO();
		
		// 디비에 등록된 글 개수 불러오기
		int cnt = rDAO.getReviewCount(car_name);
		
		// 디비에 등록된 모든 글 들고오기
		List reviewList = rDAO.getReviewList(car_name);
		
		// 전달정보 저장
		// int rev_num = Integer.parseInt(request.getParameter("rev_num"));
		
		// 세션에 저장
		request.setAttribute("cnt", cnt);
		request.setAttribute("reviewList", reviewList);
		request.setAttribute("carDTO", carDAO.getOneCarList(car_code));
		
//		request.setAttribute("rList", rDAO.selectRandReview());
		request.setAttribute("carList", carDAO.selectRandCar());
		request.setAttribute("carCnt", carDAO.getCarCount());
		request.setAttribute("mCnt", rDAO.getMemberCount());
		request.setAttribute("rezCnt", rDAO.getRezCount());
		
		// 페이지 이동
		forward.setPath("./review/carDetailList.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
