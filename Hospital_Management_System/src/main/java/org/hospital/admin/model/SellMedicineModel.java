package org.hospital.admin.model;

public class SellMedicineModel {

	
	
	
	 private int mid;
	    private String patientname;
	    private String medicinename;
	    private int price;
	    private int quanity;
	    public int getSid() {
			return sid;
		}
		public void setSid(int sid) {
			this.sid = sid;
		}
		private int sid;
		public int getMid() {
			return mid;
		}
		public void setMid(int mid) {
			this.mid = mid;
		}
		
		public String getPatientname() {
			return  patientname;
		}
		public void setPatientname(String patientname) {
			this.patientname = patientname;
		}
		public String getMedicinename() {
			return medicinename;
		}
		public void setMedicinename(String medicinename) {
			this.medicinename = medicinename;
		}
		public int getPrice() {
			return price;
		}
		public void setPrice(int price) {
			this.price = price;
		}
		public int getQuanity() {
			return quanity;
		}
		public void setQuanity(int quanity) {
			this.quanity = quanity;
		}
}
