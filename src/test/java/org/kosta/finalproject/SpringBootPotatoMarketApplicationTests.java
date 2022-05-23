package org.kosta.finalproject;

import java.util.ArrayList;
import java.util.List;

import org.assertj.core.api.Assert;
import org.junit.jupiter.api.Test;
import org.kosta.finalproject.model.domain.ImageVO;
import org.kosta.finalproject.model.domain.ItemVO;
import org.kosta.finalproject.model.domain.ShoppingCartVO;
import org.kosta.finalproject.model.mapper.ItemMapper;
import org.kosta.finalproject.model.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class SpringBootPotatoMarketApplicationTests {
	@Autowired
	private ItemService itemService;
	@Autowired
	private ItemMapper im;
	
	@Test
	void contextLoads() {
	}
	
	//edit image list
	@Test
	void itemImageList() {
		int[] arr= {3,1};
		for(int a:arr) {
		System.out.println(itemService.findItemImageVOByItemId(a));
		}
	}
	
	//myprofile 수정
	@Test
	void myItemList() {
		String userId="popp";
		List<ItemVO> itemList=im.selectItemListByUserID(userId);
		List<ImageVO> imageList=new ArrayList<ImageVO>();
		for(int i=0;i<itemList.size();i++) {
			imageList.add(itemService.findItemImageVOByItemId(itemList.get(i).getItemId()));
		}
		System.out.println(imageList);

	}
	
	// Insert shopping cart test
	@Test
	void shCartInsertTest() {
//		ShoppingCartVO vo=new ShoppingCartVO(null, 0);
//		vo.setItemId(1);
//		vo.setUserId("1234");
		String userId="1234";
		int itemId=1;
		itemService.insertCart(userId, itemId);
		
	}
	
	//Select Sh list
	@Test
	void shCartSelectTest() {
		String userId="1234";
		List<ItemVO> list =new ArrayList<ItemVO>();
		list=
		itemService.selectCartList(userId);
		for(int i=0;i<list.size();i++) {
			System.out.println(list.get(i));
		}
//		Assert<Assert<SELF,ACTUAL>, ACTUAL>
		
	}
	
 
	
	
	
	

}
