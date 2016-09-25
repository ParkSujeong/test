package pro;

public class deptDTO {

	private int dept_num;
	private String dept_name;

	@Override
	public String toString() {
		return "deptDTO [dept_num=" + dept_num + ", dept_name=" + dept_name + "]";
	}

	public deptDTO(int dept_num, String dept_name) {
		super();
		this.dept_num = dept_num;
		this.dept_name = dept_name;
	}
	
	public deptDTO() {
		super();
	}

	public int getDept_num() {
		return dept_num;
	}

	public void setDept_num(int dept_num) {
		this.dept_num = dept_num;
	}

	public String getDept_name() {
		return dept_name;
	}

	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}

}
