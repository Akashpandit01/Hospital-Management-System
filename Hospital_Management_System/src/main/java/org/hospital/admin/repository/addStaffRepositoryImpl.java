package org.hospital.admin.repository;

import java.util.ArrayList;
import java.util.List;

import org.hospital.admin.config.DBConfig;
import org.hospital.admin.model.StaffModel;
import org.hospital.admin.model.addPatientModel;

public class addStaffRepositoryImpl extends DBConfig implements addStaffRepository
{

	List<StaffModel> list;
	List<StaffModel> list1;
	int sid=0;
    public int getStaffIdAutomatic()
    {
    	try 
    	{
    		psmt=conn.prepareStatement("select max(staffid) from staff");
    		rs=psmt.executeQuery();
    		if(rs.next())
    		{
    			sid=rs.getInt(1);
    		}
    		++sid;
    		return sid;
    	}
    	catch(Exception ex)
    	{
    		System.out.println("Error is "+ex);
    		return -1;
    	}
    }
	
	public boolean isAddNewstaff(StaffModel model) 
	{
		
		
		try
		{
			int sid=this.getStaffIdAutomatic();
			
			if(sid != -1)
			{
				
				psmt=conn.prepareStatement("insert ignore into staff values(?,?,?,?,?,?,?)");
				psmt.setInt(1, sid);
				psmt.setString(2, model.getStaffName());
				psmt.setString(3, model.getDesignation());
				psmt.setString(4, model.getContact());
				psmt.setString(5, model.getAddress());
				psmt.setString(6, model.getSpeciallty());
				psmt.setInt(7, model.getDeptId());
				
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

	@Override
	public List<StaffModel> getAllStaff() {
		try 
		{
			list=new ArrayList<StaffModel>();
			psmt=conn.prepareStatement("select s.staffid,s.staffname,d.deptname,s.designation,s.speciality,s.contact from staff s inner join  department d on s.deptid=d.deptid");
			rs=psmt.executeQuery();
			while(rs.next())
			{
				
				StaffModel model=new StaffModel();
				model.setStaffId(rs.getInt(1));
				model.setStaffName(rs.getString(2));
				model.setDeptName(rs.getString(3));
				model.setDesignation(rs.getString(4));
				model.setSpeciallty(rs.getString(5));
				model.setContact(rs.getString(6));
				
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

	@Override
	public boolean deleteStaff(String staffid) {

       try 
       {
    	   psmt=conn.prepareStatement("delete from staff where staffid=(?)");
    	   psmt.setString(1, staffid);
    	   
    	   int value=psmt.executeUpdate();
    	   
    	   return value>0?true:false;
       }
       catch(Exception ex)
       {
    	   System.out.println("Error is "+ex);
    	   return false;
       }
		
	}

	public int getDeptIdByName(String deptName)
	{
		try 
		{
			psmt=conn.prepareStatement("select deptid from department where deptname=(?)");
			psmt.setString(1, deptName);
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
	public boolean isUpdateStaff(StaffModel model) {
		

		try
		{
			int deptid=this.getDeptIdByName(model.getDeptName());
			
			
			psmt=conn.prepareStatement("update staff set staffname=?,designation=?,contact=?,speciality=?,deptid=? where staffid=?");
			psmt.setString(1, model.getStaffName());
			psmt.setString(2, model.getDesignation());
			psmt.setString(3, model.getContact());
			psmt.setString(4, model.getSpeciallty());
			psmt.setInt(5, deptid);
			psmt.setInt(6, model.getStaffId());
			
			
			int value=psmt.executeUpdate();
			
			return value>0?true:false;
		}
		catch(Exception ex)
		{
			System.out.println("Error is "+ex);
			return false;
		}
	}

	
	public List<StaffModel> getAllStaffsByName(String name) 
	{
		try 
		{    
			
			list1=new ArrayList<StaffModel>();
			System.out.println(name);
			psmt=conn.prepareStatement("select * from staff where staffname like '%"+name+"%'");
			
			rs=psmt.executeQuery();
			while(rs.next())
			{
				StaffModel model = new StaffModel();
				model.setStaffId(rs.getInt(1));
				model.setStaffName(rs.getString(2));
				model.setDesignation(rs.getString(3));
				model.setContact(rs.getString(4));
				model.setAddress(rs.getString(5));
				model.setSpeciallty(rs.getString(6));
				
				
				
				String deptname=this.getDeptNameById(rs.getInt(7));
				
				if(deptname !=null)
				{
					model.setDeptName(deptname);
					System.out.println(model.toString());
				}
				else
				{
					return null;
				}
				
				list1.add(model);
				
			}
			return list1.size()>0?list1:null;		
		}
		catch(Exception ex)
		{
			System.out.println("Error is "+ex);
			return null;
		}
		
	}

	public String getDeptNameById(int int1) {
		
		
		try 
		{
			psmt=conn.prepareStatement("select deptname from department where deptid=(?)");
			psmt.setInt(1, int1);
			
			rs=psmt.executeQuery();
			
			if(rs.next())
			{
				return rs.getString(1);
			}
			else
			{
				return null;
			}
		}
		catch(Exception ex)
		{
			System.out.println("error is  "+ex);
			return null;
		}
	}

	@Override
	public List<StaffModel> getAllStaffsByDeptName(String name) {
		
		try 
		{    
			list=new ArrayList<StaffModel>();
			
			psmt=conn.prepareStatement("select s.staffid,s.staffname,s.designation,s.speciality,s.contact,d.deptname from staff s inner join department d on s.deptid=d.deptid where d.deptname  like '%"+name+"%' ");
			
			rs=psmt.executeQuery();
			while(rs.next())
			{
				StaffModel model = new StaffModel();
				model.setStaffId(rs.getInt(1));
				model.setStaffName(rs.getString(2));
				model.setDesignation(rs.getString(3));
				model.setSpeciallty(rs.getString(4));
				model.setContact(rs.getString(5));
				model.setDeptName(rs.getString(6));
				
				
				
				
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

	
	public int totalDoctors() {
		
		try 
		{
			psmt=conn.prepareStatement("select count(staffid) from staff");
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

	
	public List<StaffModel> getAllDoctors() {
		
		
		try 
		{
			list1=new ArrayList<StaffModel>();
			
			psmt=conn.prepareStatement("select staffid,staffname,speciality from staff where designation='doctor' ");
			rs=psmt.executeQuery();
			
			while(rs.next())
			{
				StaffModel model = new StaffModel();
				model.setStaffId(rs.getInt(1));
				model.setStaffName(rs.getString(2));
				model.setSpeciallty(rs.getString(3));
				
				list1.add(model);
			}
			return list1.size()>0?list1:null;
			
		}
		catch(Exception ex)
		{
			System.out.println("error is "+ex);
			return null;
		}
		
	}



}
