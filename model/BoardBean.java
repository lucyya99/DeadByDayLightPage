package model;

import java.text.SimpleDateFormat;
import java.util.Date;


public class BoardBean {

	private String boardWriteTime;
	public void init_boardWriteTime() {
		Date from = new Date();
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm");
		String to = transFormat.format(from);
		this.setBoardWriteTime(to);
	}
	
	public void init_clickCounter() {
		this.setClickCounter(0);
	}
	public void init_upGoodCounter() {
		this.setUpGoodCounter(0);
	}
	
	private int postNo;
	private int clickCounter;
	private int upGoodCounter;
	private String boardTitle;
	private String boardWriter;	
	private String boardCategory;
	private String boardContents;
	private String board3LineSummary;
	
	public String getBoardWriteTime() {
		return boardWriteTime;
	}
	public void setBoardWriteTime(String boardWriteTime) {
		this.boardWriteTime = boardWriteTime;
	}
	public String getBoardWriter() {
		return boardWriter;
	}
	public void setBoardWriter(String boardWriter) {
		this.boardWriter = boardWriter;
	}
	public int getClickCounter() {
		return clickCounter;
	}
	public void setClickCounter(int clickCounter) {
		this.clickCounter = clickCounter;
	}
	public int getUpGoodCounter() {
		return upGoodCounter;
	}
	public void setUpGoodCounter(int upGoodCounter) {
		this.upGoodCounter = upGoodCounter;
	}
	public int getPostNo() {
		return postNo;
	}
	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}
	public String getBoardCategory() {
		return boardCategory;
	}
	public void setBoardCategory(String boardCategory) {
		this.boardCategory = boardCategory;
	}	
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContents() {
		return boardContents;
	}
	public void setBoardContents(String boardContents) {
		this.boardContents = boardContents;
	}
	public String getBoard3LineSummary() {
		return board3LineSummary;
	}
	public void setBoard3LineSummary(String board3LineSummary) {
		this.board3LineSummary = board3LineSummary;
	}
	public void add_upGoodCounter() {
		int num = this.getUpGoodCounter()+1;
		this.setUpGoodCounter(num);
	}
}
