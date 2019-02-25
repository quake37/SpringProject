package com.StudyDamoyeo.service;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.StudyDamoyeo.domain.AuthVO;
import com.StudyDamoyeo.domain.MemberVO;
import com.StudyDamoyeo.mail.MailHandler;
import com.StudyDamoyeo.mail.TempKey;
import com.StudyDamoyeo.mapper.MemberMapper;


@Service
public class MemberService {

	@Autowired
	private MemberMapper mapper;
	@Autowired
	private JavaMailSender mailSender;
	
	public void insert(MemberVO vo) {
		mapper.insert(vo);
	}
	
	public MemberVO read(String userid) {
		return mapper.read(userid);
	}
	
	public void update(MemberVO vo) {
		mapper.update(vo);
	}
	public void delete(String id) {
		mapper.delete(id);
	}
	
	public List<MemberVO> getList(){
		return mapper.getList();
	}
	public int login(MemberVO vo) {
		return mapper.login(vo);
	}

	public int idcheck(String userid) {
		return mapper.checkid(userid);
	}
	public void insertAuth(AuthVO vo) {
		mapper.insertAuth(vo);
	}

	public int nicknamecheck(String nickname) {
		// TODO Auto-generated method stub
		return mapper.checknickname(nickname);
	}
	public String checkAuth(String userId) {
		return mapper.checkAuth(userId);
	}
	public int updateEmailCheck(MemberVO vo) {
		return mapper.updateEmailCheck(vo);
	}
	public void emailAuth(MemberVO vo) throws MessagingException, UnsupportedEncodingException {
		String key = new TempKey().getKey(50, false);
		mapper.createAuthKey(vo.getUserId(), key);
		MailHandler sendMail = new MailHandler(mailSender);
		sendMail.setSubject("[스터디다모여 서비스 이메일 인증]");
		sendMail.setText(
				new StringBuffer().append("<h1>메일인증</h1>").append("<a href='http://localhost/profile/emailConfirm?userId=").append(vo.getUserId()).append("&key=").append(key).append("' target='_blenk'>이메일 인증 확인</a>").toString());
		sendMail.setFrom("hyj2u94@gmail.com", "스터디다모여 관리자");
		sendMail.setTo(vo.getEmail());
		sendMail.send();
	}
	public void updateVerified(String userId) {
		
	}
	
	
}
