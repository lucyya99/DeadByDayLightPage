package model;

import java.util.ArrayList;

public class BoardUpGoodDAO {
	ArrayList<BoardUpGoodBean> u = new ArrayList<>();
	static int num=1;
	
	public void insertUpGood(BoardUpGoodBean uBean) {
		uBean.setUpGoodNo(num);
		u.add(uBean);
		num++;
	}
	
	public int getUpGoodCounter(BoardUpGoodBean uBean) {
		int counter=0;
		for(int i=0; i<u.size();i++) {
			System.out.println(u.get(i).getPostNo());
			System.out.println(u.get(i).getUserName());
			System.out.println(uBean.getPostNo());
			System.out.println(uBean.getUserName());
			if(u.get(i).getPostNo()==uBean.getPostNo() && u.get(i).getUserName().equals(uBean.getUserName())) {
				counter++;
				System.out.println("counter"+counter);
			}
		}
		System.out.println("");
		return counter;
	}
	
	public void deleteUpGood(int num) {
		for(int i=0; i<u.size(); i++) {
			if(u.get(i).getPostNo()==num) {
				u.remove(i);
			}
		}
	}
}
