package org.hospital.admin.repository;

import java.util.ArrayList;
import java.util.List;

import org.hospital.admin.config.DBConfig;
import org.hospital.admin.model.addPatientModel;

public class addPatientRepositoryImpl extends DBConfig implements addPatientRepository
{
    List<addPatientModel> list;
	
	int pid=0;
    public int getPatientIdAutomatic()
    {
    	try 
    	{
    		psmt=conn.prepareStatement("select max(patientid) from patient");
    		rs=psmt.executeQuery();
    		if(rs.next())
    		{
    			pid=rs.getInt(1);
    		}
    		++pid;
    		return pid;
    	}
    	catch(Exception ex)
    	{
    		System.out.println("Error is "+ex);
    		return -1;
    	}
    }
	
	public boolean isAddNewPatient(addPatientModel model) 
	{
		try
		{
			int pid=this.getPatientIdAutomatic();
			
			if(pid != -1)
			{
				//System.out.println(model.getDate());
				psmt=conn.prepareStatement("insert ignore into patient values(?,?,?,?,?,?,?,?)");
				psmt.setInt(1, pid);
				psmt.setString(2, model.getName());
				psmt.setString(3, model.getDisease());
				psmt.setString(4, model.getAdress());
				psmt.setString(5, model.getContact());
				psmt.setString(6, model.getGender());
				psmt.setString(7, model.getDate());
				psmt.setString(8, "Not Assigned");
				
				int value=psmt.executeUpdate();
				
				return value>0?true:false;	
			}
			else
			{
				return false;
			}	
		}
		catch(Exception ex)
		{
			System.out.println("Error is "+ex);
			return false;
		}
	}

	
	public int noOfMaleFemale(String gender,String year) {
		
		try 
		{
			int count=0;
			psmt=conn.prepareStatement("select count(gender) from patient where gender=(?) and year(date)=(?)");
			psmt.setString(1, gender);
			psmt.setString(2, year);
			rs=psmt.executeQuery();
			if(rs.next())
			{
				count=rs.getInt(1);
			}
			return count;
		}
		catch(Exception ex)
		{
			System.out.println("Error is "+ex);
			return -1;
		}
	}
	
	
    public List<addPatientModel> getAllPatients() {
		
		try 
		{
			list=new ArrayList<addPatientModel>();
			psmt=conn.prepareStatement("select * from patient");
			rs=psmt.executeQuery();
			while(rs.next())
			{
				addPatientModel model=new addPatientModel();
				model.setPatientid(rs.getInt(1));
				model.setName(rs.getString(2));
				model.setDisease(rs.getString(3));
		        model.setAdress(rs.getString(4));
				model.setContact(rs.getString(5));
				model.setGender(rs.getString(6));
				
				list.add(model);
			}
			
			return list.size()>0?list:null;
		}
		catch(Exception ex)
		{
			System.out.println("Error is "+ex);
			return null;
		}
		
		
	}

	
	

	
    public List<addPatientModel> getAllDocAssignedPatients() {
		
		try 
		{
			list=new ArrayList<addPatientModel>();
			psmt=conn.prepareStatement("select p.patientid,p.patientname,p.gender,p.diseasename,s.staffid,s.staffname as 'doctor' from patient p inner join patientstaff ps on p.patientid=ps.patientid inner join staff s on ps.staffid=s.staffid");
			rs=psmt.executeQuery();
			while(rs.next())
			{
				addPatientModel model=new addPatientModel();
				model.setPatientid(rs.getInt(1));
				model.setName(rs.getString(2));
				model.setGender(rs.getString(3));
				model.setDisease(rs.getString(4));
		        model.setStaffId(rs.getInt(5));
				model.setStaffName(rs.getString(6));
				
				
				list.add(model);
			}
			
			return list.size()>0?list:null;
		}
		catch(Exception ex)
		{
			System.out.println("Error is "+ex);
			return null;
		}
	}
	
	

	public boolean deletePatient(String pid) {
		
		
		try 
		{
			psmt=conn.prepareStatement("delete from patient where patientid=(?)");
			psmt.setString(1, pid);
			
			int value=psmt.executeUpdate();
			return value>0?true:false;
		}
		catch(Exception ex)
		{
			System.out.println("Error is "+ex);
			return false;
		}
		
	}

	
	public boolean isUpdatePatient(addPatientModel model) {
		
		
		try
		{
			
			
			psmt=conn.prepareStatement("update patient set patientname=(?),diseasename=(?),address=(?),contact=(?),gender=(?) where patientid=(?)");
			psmt.setString(1, model.getName());
			psmt.setString(2, model.getDisease());
			psmt.setString(3, model.getAdress());
			psmt.setString(4, model.getContact());
			psmt.setString(5, model.getGender());
			psmt.setInt(6, model.getPatientid());
			
			int value=psmt.executeUpdate();
			
			return value>0?true:false;
		}
		catch(Exception ex)
		{
			System.out.println("Error is "+ex);
			return false;
		}
		
	}

	@Override
	public List<addPatientModel> getAllPatientsByName(String name) {
		
		
		try 
		{
			list=new ArrayList<addPatientModel>();
			
			psmt=conn.prepareStatement("select * from patient where patientname like '%"+name+"%' ");
			
			rs=psmt.executeQuery();
			while(rs.next())
			{
				addPatientModel model = new addPatientModel();
				model.setPatientid(rs.getInt(1));
				model.setName(rs.getString(2));
				model.setDisease(rs.getString(3));
				model.setAdress(rs.getString(4));
				model.setContact(rs.getString(5));
				model.setGender(rs.getString(6));
				
				list.add(model);
				
			}
			return list.size()>0?list:null;
		}
		catch(Exception ex)
		{
			System.out.println("Error is "+ex);
			return null;
		}
		
	}

	
	public int totalPatients() {
		
		try 
		{
			psmt=conn.prepareStatement(" select count(patientid) from patient");
			rs=psmt.executeQuery();
			
			if(rs.next())
			{
				return rs.getInt(1);
			}
			else 
			{
				return -1;
			}
		}
		catch(Exception ex)
		{
			System.out.println("Error is "+ex);
			return -1;
		}
	}

	@Override
	public int noOfFeMale(String gender, String year) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	
	public boolean isAssignDoctor(String patientId, String staffid) {
		
		try 
		{
			psmt=conn.prepareStatement("update patient set doctorStatus='assign' where patientid=(?)");
			psmt.setString(1, patientId);
			psmt.executeUpdate();
			psmt=conn.prepareStatement("insert into patientstaff values(?,?)");
			psmt.setInt(1, Integer.parseInt(patientId));
			psmt.setInt(2,Integer.parseInt(staffid));
			int value=psmt.executeUpdate();
			return value>0?true:false;
		}
		catch(Exception ex)
		{
			System.out.println("Error is "+ex);
			return false;
		}
		
	}
	
	public List<addPatientModel> getPatientWithDoctor()
	{
		try 
		{
			list=new ArrayList<addPatientModel>();
			String sql="select p.patientid,s.staffid, p.patientname,s.staffname,p.diseasename from patient p inner join patientstaff ps on p.patientid=ps.patientid inner join staff s on ps.staffid=s.staffid";
			psmt=conn.prepareStatement(sql);
			rs=psmt.executeQuery();
			
			while(rs.next())
			{
				addPatientModel model=new addPatientModel();
				model.setPatientid(rs.getInt(1));
				model.setStaffId(rs.getInt(2));
				model.setName(rs.getString(3));
				model.setStaffName(rs.getString(4));
				model.setDisease(rs.getString(5));
				list.add(model);
				
			}
			
			return list.size()>0?list:null;
		}
		catch(Exception ex)
		{
			System.out.println("Error is "+ex);
			return null;
			
		}
	}

	
	
	
	
	
	
	
	

	

}
