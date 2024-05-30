package org.hospital.admin.repository;

import java.util.ArrayList;
import java.util.List;

import org.hospital.admin.config.DBConfig;
import org.hospital.admin.model.SellMedicineModel;

public class SellMedicineRepositoryImpl extends DBConfig implements SellMedicineRepository{

	
	
	 List<SellMedicineModel> list;

	    public int getMedicineId(String medicineName) {
	        int medicineId = -1;
	        try {
	            psmt = conn.prepareStatement("SELECT mid FROM medicine WHERE medicinename = ?");
	            psmt.setString(1, medicineName);
	            rs = psmt.executeQuery();
	            if (rs.next()) {
	                medicineId = rs.getInt("mid");
	            }
	        } catch (Exception e) {
	            System.out.println("Error: " + e);
	        }
	        return medicineId;
	    }

	    public int getMedicinePrice(String medicineName) {
	        int price = 0;
	        try {
	            psmt = conn.prepareStatement("SELECT price FROM medicine WHERE medicinename = ?");
	            psmt.setString(1, medicineName);
	            rs = psmt.executeQuery();
	            if (rs.next()) {
	                price = rs.getInt("price");
	            }
	        } catch (Exception e) {
	            System.out.println("Error calculating price: " + e);
	        }
	        return price;
	    }
	   int sid;
	    public int autoamticSellid() {
	        try {
	            psmt = conn.prepareStatement("select max(sid) from sellmedicine");
	            rs = psmt.executeQuery();
	            if (rs.next()) {
	                sid = rs.getInt(1);
	            }
	            sid++;
	        } catch (Exception e) {
	            System.out.println("Error is" + e);
	        }
	        return sid;
	    }

	    @Override
	    public boolean sellmedicine(SellMedicineModel model, String medicinename, String quantity) {
	        try {
	            int mid = getMedicineId(medicinename);
	            if (mid != -1) {
	                int price = getMedicinePrice(medicinename) * Integer.parseInt(quantity);
	                int sid = this.autoamticSellid();

	                psmt = conn.prepareStatement("insert into sellmedicine VALUES (?,?,?,?,?,?)");
	                psmt.setInt(1, sid);
	                psmt.setInt(2, mid);
	                psmt.setString(3, model.getPatientname());
	                psmt.setString(4, medicinename);
	                psmt.setInt(5, price);
	                psmt.setInt(6, Integer.parseInt(quantity));

	                return psmt.executeUpdate() > 0;
	            } else {
	                return false;
	            }
	        } catch (Exception e) {
	            System.out.println("Error is" + e);
	            return false;
	        }
	    }

	    @Override
	    public List<SellMedicineModel> getAllSellmedicine() {
	        list = new ArrayList<>();
	        try {
	            psmt = conn.prepareStatement("select * from sellmedicine");
	            rs = psmt.executeQuery();
	            while (rs.next()) {
	                SellMedicineModel smode = new SellMedicineModel();
	                smode.setSid(rs.getInt(1));
	                smode.setMid(rs.getInt(2));
	                smode.setPatientname(rs.getString(3));
	                smode.setMedicinename(rs.getString(4));
	                smode.setPrice(rs.getInt(5));
	                smode.setQuanity(rs.getInt(6));
	                list.add(smode);
	            }
	            return list.size() > 0 ? list : null;
	        } catch (Exception e) {
	            System.out.println("Error is " + e);
	        }
	        return null;
	    }
}
