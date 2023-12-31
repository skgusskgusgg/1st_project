package org.team.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.team.domain.AddProducts;
import org.team.domain.Criteria;
import org.team.domain.ProductVO;
import org.team.join.MemberDTO;
import org.team.mapper.ProductMapperTests;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductServiceTests {
	@Setter(onMethod_ = @Autowired)
	private ProductService service;
	
	@Test
	public void getListTests() {
		Criteria cri = new Criteria(1,10,"");
		ProductVO vo = new ProductVO();
		vo.setColor_id("1");
		vo.setSize_id("1");
		List<ProductVO> list = service.getList(vo,cri,"desc",10000,300000);
		list.forEach(e->log.info(e));
	}
	
	@Test
	public void selectListTests() {
		ProductVO vo = new ProductVO();
		vo.setCategory_id("1");
		vo.setColor_id("1");
		vo.setSize_id("3");

		Criteria cri = new Criteria(1,2,"");
		List<ProductVO> seleList = service.selectList(vo,cri,"desc",50000,150000);
		seleList.forEach(e->log.info(e));
	}
	
	@Test 
	public void postWish() {
		AddProducts vo = new AddProducts();
		
		vo.getProduct().setProduct_name("Classic Wool Overcoat");

		service.postWish(vo, 2);
	}
	@Test 
	public void deleteWish() {
		ProductVO vo = new ProductVO();
	
		vo.setProduct_id(37);
	
		service.deleteWish(vo, 2);
	}
}	
