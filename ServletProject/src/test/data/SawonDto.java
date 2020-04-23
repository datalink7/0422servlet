package test.data;

import java.util.Date;

public class SawonDto {
	private String name;
	private String jikwi;
	private int pay;
	private Date ipsaday;
	
	public SawonDto(String name, String jikwi, int pay, Date ipsaday) {
		super();
		this.name = name;
		this.jikwi = jikwi;
		this.pay = pay;
		this.ipsaday = ipsaday;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getJikwi() {
		return jikwi;
	}

	public void setJikwi(String jikwi) {
		this.jikwi = jikwi;
	}

	public int getPay() {
		return pay;
	}

	public void setPay(int pay) {
		this.pay = pay;
	}

	public Date getIpsaday() {
		return ipsaday;
	}

	public void setIpsaday(Date ipsaday) {
		this.ipsaday = ipsaday;
	}
	
	
}

