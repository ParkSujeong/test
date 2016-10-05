package option.db;

public class Mem_Career {

	private int mem_num;
	private String career_com_name;
	private String career_dept_name;
	private String career_work;
	private String career_date;

	public Mem_Career() {
		super();
	}

	public Mem_Career(int mem_num, String career_com_name, String career_dept_name, String career_work,
			String career_date) {
		super();
		this.mem_num = mem_num;
		this.career_com_name = career_com_name;
		this.career_dept_name = career_dept_name;
		this.career_work = career_work;
		this.career_date = career_date;
	}

	@Override
	public String toString() {
		return "Mem_Career [mem_num=" + mem_num + ", career_com_name=" + career_com_name + ", career_dept_name="
				+ career_dept_name + ", career_work=" + career_work + ", career_date=" + career_date + "]";
	}

	public int getMem_num() {
		return mem_num;
	}

	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}

	public String getCareer_com_name() {
		return career_com_name;
	}

	public void setCareer_com_name(String career_com_name) {
		this.career_com_name = career_com_name;
	}

	public String getCareer_dept_name() {
		return career_dept_name;
	}

	public void setCareer_dept_name(String career_dept_name) {
		this.career_dept_name = career_dept_name;
	}

	public String getCareer_work() {
		return career_work;
	}

	public void setCareer_work(String career_work) {
		this.career_work = career_work;
	}

	public String getCareer_date() {
		return career_date;
	}

	public void setCareer_date(String career_date) {
		this.career_date = career_date;
	}

}
