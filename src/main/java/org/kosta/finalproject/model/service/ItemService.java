package org.kosta.finalproject.model.service;

import java.io.IOException;
import java.util.List;

import org.kosta.finalproject.model.domain.ImageVO;
import org.kosta.finalproject.model.domain.CategoryVO;
import org.kosta.finalproject.model.domain.ItemVO;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;


public interface ItemService {

	public int registerItem(ItemVO itemVO);
	public ItemVO selectItemByItemId(int itemId);
	public void updateItem(ItemVO itemVO);
	public List<ItemVO> getAllItemList();
	public void deleteItem(int itemId);
	public void uploadMultiImage(ItemVO itemVO,MultipartHttpServletRequest request,
	MultipartFile[] imgfile) throws IllegalStateException, IOException;
	public List<ImageVO> findItemImageListByItemId(int itemId);
	public ImageVO findItemImageVOByItemId(int itemId);
	public void delCheckedImg(List<Integer> list);
	List<ItemVO> selectItemByUserId(String userId);
	public List<CategoryVO> getAllCategoryList();
	public List<ItemVO> selectAllItemListByCondition(ItemVO itemVO);
	public void itemHitUpdate(int itemId);
	public List<ItemVO> getUserItemListByUserId(String userId,int itemId);
	public List<ItemVO> selectItemListByUserID(String userId);
	public List<ItemVO> selectSoldItemListByUserID(String userId);
}
