package org.kosta.finalproject;

import org.junit.jupiter.api.Test;
import org.kosta.finalproject.model.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class SpringBootPotatoMarketApplicationTests {
	@Autowired
	private ItemService itemService;
	
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
	

}
