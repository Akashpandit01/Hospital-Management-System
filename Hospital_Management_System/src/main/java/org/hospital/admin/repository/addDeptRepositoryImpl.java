package org.hospital.admin.repository;

import java.util.ArrayList;
import java.util.List;

import org.hospital.admin.config.DBConfig;
import org.hospital.admin.model.DepartmentModel;
import org.hospital.admin.model.addPatientModel;

public class addDeptRepositoryImpl extends DBConfig implements addDeptRepository
{
	
	List<DepartmentModel> list;
      int did=0;
      
      public int getDeptIdAutomatic()
      {
    	  try 
    	  {
    		  psmt=conn.prepareStatement("select max(deptid) from department");
    		  rs=psmt.executeQuery();
    		  if(rs.next())
    		  {
    			  did=rs.getInt(1);
    		  }
    		  ++did;
    		  return did;
    	  }
    	  catch(Exception ex)
    	  {
    		  System.out.println("Error is "+ex);
    		  return -1;
    	  }
      }
	
	public boolean isAddNewDepartment(DepartmentModel model) {
		
		try
		{
			int deptid=this.getDeptIdAutomatic();
			if(deptid != -1)
			{
				psmt=conn.prepareStatement("insert IGNORE into department values(?,?,?)");
				psmt.setInt(1, deptid);
				psmt.setString(2, model.getDeptName());
				psmt.setString(3, model.getCharges());
				
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
			System.out.println("Error is : "+ex);
			return false;
		}
	}

	
	public List<DepartmentModel> getAllDepartments()
	{
		try 
		{
			
			list=new ArrayList<DepartmentModel>();
			
			psmt=conn.prepareStatement("select * from department");
			rs=psmt.executeQuery();
			
			while(rs.next())
			{
				DepartmentModel model=new DepartmentModel();
				model.setDeptId(rs.getInt(1));
				model.setDeptName(rs.getString(2));
				model.setCharges(rs.getString(3));
				
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

	
	public boolean deleteDepartment(String deptId) {
		
		
		try
		{
			psmt=conn.prepareStatement("delete from department where deptid=(?)");
			psmt.setString(1, deptId);
			
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
	public boolean isUpdateDepartment(DepartmentModel model) {
		
		
		try 
		{
			psmt=conn.prepareStatement("update department set deptname=(?),charges=(?) where deptid=(?)");
			psmt.setString(1, model.getDeptName());
			psmt.setString(2,model.getCharges());
			psmt.setInt(3, model.getDeptId());
			
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
	public List<DepartmentModel> getAllDepartmentsSearch(String name) {
				
		

		try 
		{
			list=new ArrayList<DepartmentModel>();
			
			psmt=conn.prepareStatement("select * from department where deptname like '%"+name+"%' ");
			
			rs=psmt.executeQuery();
			while(rs.next())
			{
				DepartmentModel model = new DepartmentModel();
				model.setDeptId(rs.getInt(1));
				model.setDeptName(rs.getString(2));
				model.setCharges(rs.getString(3));
				
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

	
	public int totalDepartments() {
		
		try 
		{
			psmt=conn.prepareStatement(" select count(deptid) from department");
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

}
