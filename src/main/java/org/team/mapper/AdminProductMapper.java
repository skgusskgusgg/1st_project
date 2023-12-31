package org.team.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.team.domain.Criteria;
import org.team.domain.ProductVO;

public interface AdminProductMapper {
	public List<ProductVO> getList(@Param("vo") ProductVO vo, @Param("cri") Criteria cri,
			@Param("sort") String sort, @Param("row") int row, @Param("high") int high);

	// "1" : outer, "2" : top, "3" : pants
	public List<ProductVO> selectList(@Param("vo") ProductVO vo, @Param("cri") Criteria cri,
			@Param("sort") String sort, @Param("row") int row, @Param("high") int high);

	public int getTotal(@Param("vo") ProductVO vo, @Param("cri") Criteria cri,
			@Param("sort") String sort, @Param("row") int row, @Param("high") int high);
	
	public int selectTotal(@Param("vo") ProductVO vo, @Param("cri") Criteria cri,
			@Param("sort") String sort, @Param("row") int row, @Param("high") int high); 

	public ProductVO detail(int id);
	
	public int register(@Param("pVo") ProductVO pVo);
	
	public int update(@Param("pVo")ProductVO pVo);
	
	public int delete(@Param("pVo") int pVo);
	
}
