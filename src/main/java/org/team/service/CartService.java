package org.team.service;

import java.util.List;
import java.util.Map;

import org.team.cart.CartVO;

public interface CartService {

	public List<CartVO> getCartList(int member_id);
	public Integer getCartCount(int member_id);
	public boolean deleteCartList(List<String> cartSelectList);
	public boolean updateCartAmount(Map<String,String> amountMap);
	public void deleteCurrentCart(int member_id);
}
