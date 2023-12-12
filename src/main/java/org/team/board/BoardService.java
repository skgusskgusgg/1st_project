package org.team.board;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface BoardService {
	public List<BoardVO> getList();
	
	public void boardInsert(BoardVO bVO);
	
	public BoardVO boardDetail(int board_id);
	
	public void boardEdit(BoardVO bVO);
	
	public void boardDelete(int board_id);
	
	public int boardCount();
	
	public List<BoardVO> boardListPage(@Param("displayPost")int displayPost, @Param("postNum")int postNum);
	
	public int updateView(int board_id);
}
