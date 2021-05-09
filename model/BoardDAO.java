package model;

import java.util.ArrayList;

public class BoardDAO {
	ArrayList<BoardBean> b = new ArrayList<>();
	
	static int num=1;
	
	public void insertBoard(BoardBean bBean) {
		bBean.setPostNo(num);
		b.add(bBean);
		num++;
	}
	
	public ArrayList<BoardBean> getBoard(){
		return b;
	}
	
	public int sizeBoard() {
		return b.size();
	}
	
	public BoardBean getPostOne(int num) {
		BoardBean bBean = null;
		for(int i=0; i<b.size();i++) {
			if(b.get(i).getPostNo()==num) {
				bBean = b.get(i);
				break;
			}
		}
		return bBean;
	}
	
	public void add_clickCounter(BoardBean bBean) {
		for(int i=0; i<b.size(); i++) {
			if(b.get(i).getPostNo()==bBean.getPostNo()) {
				b.get(i).setClickCounter(b.get(i).getClickCounter()+1);
				break;
			}
		}
	}
	
	public void add_upGoodCounter(BoardBean bBean) {
		for(int i=0; i<b.size(); i++) {
			if(b.get(i).getPostNo()==bBean.getPostNo()) {
				b.get(i).setUpGoodCounter(b.get(i).getUpGoodCounter()+1);
				break;
			}
		}
	}
	
	public void modifyBoard(BoardBean bBean) {
		for(int i=0; i<b.size(); i++) {
			if(b.get(i).getPostNo()==bBean.getPostNo()) {
				b.get(i).setBoardTitle(bBean.getBoardTitle());
				b.get(i).setBoardCategory(bBean.getBoardCategory());
				b.get(i).setBoardContents(bBean.getBoardContents());
				b.get(i).setBoard3LineSummary(bBean.getBoard3LineSummary());
				break;
			}
		}
	}
	
	public void deleteBoard(int num) {
		for(int i=0; i<b.size(); i++) {
			if(b.get(i).getPostNo()==num) {
				b.remove(i);
				break;
			}
		}
	}
}
