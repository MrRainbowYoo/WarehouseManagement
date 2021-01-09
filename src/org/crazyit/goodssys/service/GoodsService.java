package org.crazyit.goodssys.service;

import java.util.List;

import org.crazyit.goodssys.dao.GoodsDao;
import org.crazyit.goodssys.domain.Goods;

public interface GoodsService {
	// ÃÌº”Õº È
	int addGoods(Goods goods);

	List<Goods> getAllGoods();

	void deleteGoods(int id);
	
	List<Goods> getGoodsById(String goods_id);
	
	List<Goods> getGoodsByName(String goods_name,String goods_type);

	int updateGoods(Goods goods);
}
