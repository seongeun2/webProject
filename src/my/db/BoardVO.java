package my.db;
import java.util.*;

public class BoardVO {
	private int main_num;			//��ȣ
	private Date main_writeday;		//�ۼ���
	private String main_option;		//�׸� (����, ����)
	private String main_account;	//��������
	private String main_content;	//����
	private int main_price;			//�ݾ�
	private String m_id;
	
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public int getMain_num() {
		return main_num;
	}
	public void setMain_num(int main_num) {
		this.main_num = main_num;
	}
	public Date getMain_writeday() {
		return main_writeday;
	}
	public void setMain_writeday(Date main_writeday) {
		this.main_writeday = main_writeday;
	}
	public String getMain_option() {
		return main_option;
	}
	public void setMain_option(String main_option) {
		this.main_option = main_option;
	}
	public String getMain_account() {
		return main_account;
	}
	public void setMain_account(String main_account) {
		this.main_account = main_account;
	}
	public String getMain_content() {
		return main_content;
	}
	public void setMain_content(String main_content) {
		this.main_content = main_content;
	}
	public int getMain_price() {
		return main_price;
	}
	public void setMain_price(int main_price) {
		this.main_price = main_price;
	}
	
	
}
