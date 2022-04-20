package org.kosta.finalproject;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.kosta.finalproject.model.domain.ImageVO;
import org.kosta.finalproject.model.domain.ItemVO;
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
	

}
