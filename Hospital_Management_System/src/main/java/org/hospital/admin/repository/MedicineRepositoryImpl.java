package org.hospital.admin.repository;

import java.util.ArrayList;
import java.util.List;

import org.hospital.admin.config.DBConfig;
import org.hospital.admin.model.MedicineModel;

public class MedicineRepositoryImpl extends DBConfig implements MedicineRepository{

List<MedicineModel> list;
	
	
	int mid;
	 public int getmedicineIdAutomatic()
	 {
		try {
			
			psmt=conn.prepareStatement("select max(mid) from medicine");
			rs=psmt.executeQuery();
           if(rs.next())
           {
        	   mid=rs.getInt(1);
           }
           ++mid;
		} catch (Exception ex) {
			System.out.println("Error is "+ex);
			return -1;
			
		} 
		return mid;
	 }
	@Override
	public boolean isAddMedicine(MedicineModel model) {
		try {
			 mid=this.getmedicineIdAutomatic();
			 psmt=conn.prepareStatement("insert into medicine values(?,?,?,?,?)");
			 psmt.setInt(1, mid);
			 psmt.setString(2, model.getName());
			 psmt.setString(3, model.getPrice());
			 psmt.setString(4,model.getManufacture());
			 psmt.setString(5,model.getExpiry());
			 return psmt.executeUpdate()>0?true:false;
		} catch (Exception e) {
			System.out.println("Error is+"+e);
			return false;
		}

	}
	@Override
	public List<MedicineModel> getAllmedicine() {
		try {
			
			list=new ArrayList<MedicineModel>();
			psmt=conn.prepareStatement("select *from medicine");
			rs=psmt.executeQuery();
			while(rs.next())
			{
//				Object[] obj=new Object[] {rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5)};
//				list.add(obj);
				MedicineModel model=new MedicineModel();
				model.setId(rs.getInt(1));
				model.setName(rs.getString(2));
				model.setPrice(rs.getString(3));
				model.setManufacture(rs.getString(4));
				model.setExpiry(rs.getString(5));
				list.add(model);
			}
//			System.out.println(list.size());
			return list.size()>0?list:null;
			
		} catch (Exception e) {
		System.out.println("Error is "+e);	
		}
		return null;
	}
	@Override
	public boolean isDeleteMedicinebyid(int id) {
		try {
			psmt=conn.prepareStatement("delete from medicine where mid=?");
			psmt.setInt(1, id);
			int value=psmt.executeUpdate();
			return value>0?true:false;			
		} catch (Exception e) {
			System.out.println("Error  is "+e);
			return false;
		}
		
	}
	@Override
	public boolean isUpdateMedicine(MedicineModel model) {
		try {
			psmt=conn.prepareStatement("update medicine set medicinename=?,price=?,manufacture=?,Expiry=? where mid=?");
			psmt.setString(1,model.getName());
			psmt.setString(2, model.getPrice());
			psmt.setString(3, model.getManufacture());
			psmt.setString(4, model.getExpiry());
			psmt.setInt(5, model.getId());
			int value=psmt.executeUpdate();
//			System.out.println(value);
			return value>0?true:false;
		} catch (Exception e) {
			System.out.println("Error is"+e);
			return false;
		}
		
	}
	
}
