package org.team.mapper;

import java.util.List;
import java.util.stream.Collectors;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.team.domain.Criteria;
import org.team.domain.ProductVO;
import org.team.domain.ReplyVO;
import org.team.mypage.orderCriteria;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class OrderReplyMapper {
	@Setter(onMethod_ = @Autowired)  
	private OrderMapper mapper;
	
	@Test
	public void replyManagement() {
		orderCriteria criteria = new orderCriteria(1,8);
		List<ReplyVO> list = mapper.replyManagement(2,criteria);
		log.info(list);

	}
	
}
