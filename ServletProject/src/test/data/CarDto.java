package test.data;

import java.util.Date;

public class CarDto {
	private String carName;
	private int carPrice;
	private String carColor;
	private Date carDay;
	
	public CarDto(String carName, int carPrice, String carColor, Date carDay) {
		super();
		this.carName = carName;
		this.carPrice = carPrice;
		this.carColor = carColor;
		this.carDay = carDay;
	}

	public String getCarName() {
		return carName;
	}

	public void setCarName(String carName) {
		this.carName = carName;
	}

	public int getCarPrice() {
		return carPrice;
	}

	public void setCarPrice(int carPrice) {
		this.carPrice = carPrice;
	}

	public String getCarColor() {
		return carColor;
	}

	public void setCarColor(String carColor) {
		this.carColor = carColor;
	}

	public Date getCarDay() {
		return carDay;
	}

	public void setCarDay(Date carDay) {
		this.carDay = carDay;
	}
	
	
}
