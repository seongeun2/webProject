package my.db;
import java.util.*;

public class BoardVO {
	private Date writeday;	//작성일
	private String option;	//항목 (지출, 수입)
	private String account;	//계정과목
	private String content;	//내용
	private int price;		//금액
	
	
	public Date getWriteday() {
		return writeday;
	}
	public void setWriteday(Date writeday) {
		this.writeday = writeday;
	}
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
}
