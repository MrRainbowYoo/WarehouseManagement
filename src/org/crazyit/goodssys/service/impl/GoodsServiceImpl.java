package org.crazyit.goodssys.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.crazyit.goodssys.dao.GoodsDao;
import org.crazyit.goodssys.domain.Goods;
import org.crazyit.goodssys.service.GoodsService;

public class GoodsServiceImpl implements GoodsService {
	private GoodsDao goodsDao;

	public void setGoodsDao(GoodsDao goodsDao) {
		this.goodsDao = goodsDao;
	}

	@Override
	public int addGoods(Goods goods) {
		return (Integer) goodsDao.save(goods);
	}	
	
	@Override
	public List<Goods> getAllGoods() {
		return goodsDao.findAll(Goods.class);
	}

	@Override
	public void deleteGoods(int id) {
		goodsDao.delete(Goods.class, id);
	}

	@Override
	public List<Goods> getGoodsById(String goods_id) {
		return goodsDao.findById(Goods.class,goods_id);
	}
	
	@Override
	public List<Goods> getGoodsByName(String goods_name,String goods_type) {
		return goodsDao.findByName(Goods.class,goods_name,goods_type);
	}
	
	@Override
	public int updateGoods(Goods goods) {
		int t=0;

		try{
			goodsDao.update(goods);
			t=1;
			
					} catch (Exception e) {
						//¥Ú”° ‰≥ˆ“Ï≥£
						e.printStackTrace();
					}	
		
		// TODO Auto-generated method stub
		return  t;
	}
}
