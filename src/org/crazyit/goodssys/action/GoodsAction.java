package org.crazyit.goodssys.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.crazyit.goodssys.domain.Goods;
import org.crazyit.goodssys.service.GoodsService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class GoodsAction extends ActionSupport {
	private GoodsService goodsService;

	// ����ע��BookService��������setter������
	// �÷����ķ�����Ҫ��BookService������id��Ӧ
	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}

	private Goods goods;
	private List<Goods> goodsList;
	private int id;
	
	private String goods_id;
	private String goods_name;
	private String goods_type;

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {

		///////
		this.goods = goods;
	}

	public List<Goods> getGoodsList() {
		return goodsList;
	}
	
	public void setGoodsList(List<Goods> goodsList) {
		this.goodsList = goodsList;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(String goods_id) {
		this.goods_id = goods_id;
	}

	public String getGoods_name() {
		return goods_name;
	}

	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}

	public String getGoods_type() {
		return goods_type;
	}

	public void setGoods_type(String goods_type) {
		this.goods_type = goods_type;
	}

	// �������ͼ���add()����
	public String add() {
		// ����ҵ���߼������addBook()�����������û�����

			SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHmmss");
			Date date = new Date(System.currentTimeMillis());
			String time = formatter.format(date);	
			goods.setGoods_id(time);			

		int result = goodsService.addGoods(goods);
		if (result > 0) {
			System.out.println("������ӳɹ�");
			return SUCCESS;
		}
		System.out.println("�������ʧ�ܣ�����������");
		return ERROR;
	}

	// ����ͼ���update()����
	public String update() {
		// ����ҵ���߼������addBook()�����������û�����
		int result = goodsService.updateGoods(goods);
		if (result > 0) {
			System.out.println("�����޸ĳɹ�");
			return SUCCESS;
		}
		System.out.println("�����޸�ʧ�ܣ�����������");
		return ERROR;
	}	
	
	public String list() {
		setGoodsList(goodsService.getAllGoods());
		return SUCCESS;
	}

	public String delete() {
		goodsService.deleteGoods(id);
		return SUCCESS;
	}
	
	public String search() {

		System.out.println(goods_type);
		if(!goods_id.isEmpty())
			setGoodsList(goodsService.getGoodsById(goods_id));
		else {
			if(goods_type == null)
				setGoodsList(goodsService.getGoodsByName(goods_name,""));
			else
				setGoodsList(goodsService.getGoodsByName(goods_name,goods_type));
		}
		return SUCCESS;
	}
}
