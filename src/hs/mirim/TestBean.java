package hs.mirim;
//패키지명 반드시 써줘야함!

public class TestBean {//반드시 클래스 먼저 만들어줘야함
	private String name; //접근제어자가 private

	public String getName() {//getProperty의 property속성이 "name"일 경우 getName 자동 호출
		return name;
	}

	public void setName(String name) {//setProperty의 property속성이 "name"일 경우 setName 자동 호출
		this.name = name;
	}
	
}
