package option.db;

public class Mem_Edu {

	private int mem_num;
	private String edu_insti;
	private String edu_name;
	private String edu_date;

	public Mem_Edu() {
		super();
	}

	public Mem_Edu(int mem_num, String edu_insti, String edu_name, String edu_date) {
		super();
		this.mem_num = mem_num;
		this.edu_insti = edu_insti;
		this.edu_name = edu_name;
		this.edu_date = edu_date;
	}

	@Override
	public String toString() {
		return "Mem_Edu [mem_num=" + mem_num + ", edu_insti=" + edu_insti + ", edu_name=" + edu_name + ", edu_date="
				+ edu_date + "]";
	}

	public int getMem_num() {
		return mem_num;
	}

	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}

	public String getEdu_insti() {
		return edu_insti;
	}

	public void setEdu_insti(String edu_insti) {
		this.edu_insti = edu_insti;
	}

	public String getEdu_name() {
		return edu_name;
	}

	public void setEdu_name(String edu_name) {
		this.edu_name = edu_name;
	}

	public String getEdu_date() {
		return edu_date;
	}

	public void setEdu_date(String edu_date) {
		this.edu_date = edu_date;
	}

}
