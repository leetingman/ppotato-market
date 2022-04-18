package org.kosta.finalproject.model.service;

import java.util.List;
import java.util.Map;

import org.kosta.finalproject.model.domain.ChatMessage;
import org.kosta.finalproject.model.domain.ChatRoomVO;


public interface ChattingService {
	//채팅 갯수 
	int getChatCount(int itemId);
	//방번호 리턴
	List<ChatMessage> findByChatRoomId(long chatRoomId);
	//채팅 최신순 채팅방 정렬 ->collection 써도 될듭
	List<ChatMessage> chatSort(List<ChatMessage> chatmessagelist);
	//채팅방 생성
	Long createChatRoom(int itemId,String userId,String sellerId);
	//헤더 진입시 유저리스트 찾기
	Map<String, List<ChatMessage>> findListByUserIdHeader(String userId);
	//아이템 디테일 진입시 유저리스트 찾기
	Map<String, List<ChatMessage>> findListByUserId(int itemId,String userId);
	// 채팅룸 찾기
	ChatRoomVO findChatRoomVOBySellerIdAndItemId(int itemId,String sellerId);
	ChatRoomVO findChatRoomVOByUserIdAndItemId(int itemId, String userId);
	ChatRoomVO findChatRoomVOIdByChatRoomId(Long chatRoomId); 
	
	 
}
