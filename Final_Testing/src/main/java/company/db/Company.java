package company.db;

public class Company {

	private int com_num;
	private String com_name;
	private String com_add;
	private String com_aff;
	private String com_phone;
	
	public Company() {
		super();
	}

	public Company(int com_num, String com_name, String com_add, String com_aff, String com_phone) {
		super();
		this.com_num = com_num;
		this.com_name = com_name;
		this.com_add = com_add;
		this.com_aff = com_aff;
		this.com_phone = com_phone;
	}

	@Override
	public String toString() {
		return "Company [com_num=" + com_num + ", com_name=" + com_name + ", com_add=" + com_add + ", com_aff="
				+ com_aff + ", com_phone=" + com_phone + "]";
	}

	public int getCom_num() {
		return com_num;
	}

	public void setCom_num(int com_num) {
		this.com_num = com_num;
	}

	public String getCom_name() {
		return com_name;
	}

	public void setCom_name(String com_name) {
		this.com_name = com_name;
	}

	public String getCom_add() {
		return com_add;
	}

	public void setCom_add(String com_add) {
		this.com_add = com_add;
	}

	public String getCom_aff() {
		return com_aff;
	}

	public void setCom_aff(String com_aff) {
		this.com_aff = com_aff;
	}

	public String getCom_phone() {
		return com_phone;
	}

	public void setCom_phone(String com_phone) {
		this.com_phone = com_phone;
	}

}
