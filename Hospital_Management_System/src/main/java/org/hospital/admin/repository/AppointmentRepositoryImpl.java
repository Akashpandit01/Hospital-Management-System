package org.hospital.admin.repository;

import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import org.hospital.admin.config.DBConfig;
import org.hospital.admin.model.AppointmentModel;

public class AppointmentRepositoryImpl extends DBConfig implements AppointmentRepository
{
	int aid=0;
	
	List<AppointmentModel> list;
	public boolean isScheduleAppointmentBooked(String todayDate,AppointmentModel model)
	{
		try 
		{
			psmt=conn.prepareStatement("select * from appointment where starttime between ? and ?");
			
			psmt.setString(1, model.getStartTime());
			psmt.setString(2, model.getEndTime());
			
			rs=psmt.executeQuery();
			if(rs.next())
			{
				System.out.println("yrs");
				return false;
			}
			else 
			{
				
				return true;
			}
		}
		catch(Exception ex)
		{
			System.out.println("Error is "+ex);
			return false;
		}		
	}

	public boolean isScheduleAppointment(String todayDate, AppointmentModel apModel, String currentTime)
	{
		try 
		{
			
			if(this.isScheduleAppointmentBooked(todayDate, apModel))
			{
			 System.out.println("Yes");
			// split today date
			String []todayDateSplit=todayDate.split("-");
			
			String [] appointDateSplit=apModel.getDate().split("-");
			
			
			String []currentTimeSplit=currentTime.split(":");
			
			
			String []startTimeSplit=apModel.getStartTime().split(":");
			System.out.println(startTimeSplit[0]);
			System.out.println(startTimeSplit[1]);
			
			
			if(Integer.parseInt(appointDateSplit[0]) >= Integer.parseInt(todayDateSplit[0]) && Integer.parseInt(appointDateSplit[1]) >= Integer.parseInt(todayDateSplit[1]))
			{
				if(Integer.parseInt(appointDateSplit[2]) >= Integer.parseInt(todayDateSplit[2])) // for date>=current date
				{
					 
						
						if(Integer.parseInt(startTimeSplit[0])>= Integer.parseInt(currentTimeSplit[0]) ||(Integer.parseInt(startTimeSplit[1])>= Integer.parseInt(currentTimeSplit[1])))
						{
							
								System.out.println("You can Appoint Patient.....");							
								try 
								{
									int pid=this.getAppointmentIdAutomatic();
									
									if(pid != -1)
									{
										
									  psmt=conn.prepareStatement("insert into appointment values(?,?,?,?,?,?)");
									  psmt.setInt(1, pid);
									  psmt.setString(2, apModel.getDate());
									   psmt.setString(3, apModel.getStartTime().concat(":00"));
									   psmt.setString(4, apModel.getEndTime().concat(":00"));
									  psmt.setInt(5,apModel.getPatientid());
									   psmt.setInt(6, apModel.getStaffid());
									 
									  int value=psmt.executeUpdate();
									 return value>0?true:false;
								}
									else
									{
										System.out.println("else");
										return false;
										
									}
								}
								catch(Exception ex)
								{
									System.out.println("Error is "+ex);
									return false;
								}
						}
						else 
						{
							System.out.println("You May be intered Previous Minutes");
							return false;
						}
					
						
				}
				else 
				{
					System.out.println("You may be Entered Previous Date");
					return false;
				}
			}
			else
			{
				System.out.println("You may be entered Previous Month or Year");
				return false;
			}
			}
		}
		catch(Exception ex)
		{
			System.out.println("Error is "+ex);
			return false;
		}
		return false;
		
	}
	
	
    public int getAppointmentIdAutomatic()
    {
    	try 
    	{
    		psmt=conn.prepareStatement("select max(appointid) from appointment");
    		rs=psmt.executeQuery();
    		if(rs.next())
    		{
    			aid=rs.getInt(1);
    		}
    		++aid;
    		return aid;
    	}
    	catch(Exception ex)
    	{
    		System.out.println("Error is "+ex);
    		return -1;
    	}
    }

	@Override
	public List<AppointmentModel> getAllAppointments() {
		try 
		{
			list=new ArrayList<AppointmentModel>();
			
			psmt=conn.prepareStatement("select p.patientname,s.staffname,a.appointid,a.date,a.starttime,a.endtime,a.patientid,a.staffid from  patient p inner join appointment a on p.patientid=a.patientid inner join staff s on a.staffid=s.staffid");
			rs=psmt.executeQuery();
			while(rs.next())
			{
				AppointmentModel model=new AppointmentModel();
				model.setPatientName(rs.getString(1));
				model.setStaffName(rs.getString(2));
				model.setAppointid(rs.getInt(3));
				model.setDate(rs.getString(4));
				model.setStartTime(rs.getString(5));
				model.setEndTime(rs.getString(6));
				model.setPatientid(7);
				model.setStaffid(8);
				
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
	
	public List<AppointmentModel> getCompletedAppointments() {
		try 
		{
			list=new ArrayList<AppointmentModel>();
			
			psmt=conn.prepareStatement("select p.patientname,s.staffname,a.appointid,a.date,a.starttime,a.endtime,a.patientid,a.staffid from  patient p inner join appointment a on p.patientid=a.patientid inner join staff s on a.staffid=s.staffid where a.date < CURDATE() OR (a.date=CURDATE() AND a.endtime < CURTIME())");
			rs=psmt.executeQuery();
			while(rs.next())
			{
				AppointmentModel model=new AppointmentModel();
				model.setPatientName(rs.getString(1));
				model.setStaffName(rs.getString(2));
				model.setAppointid(rs.getInt(3));
				model.setDate(rs.getString(4));
				model.setStartTime(rs.getString(5));
				model.setEndTime(rs.getString(6));
				model.setPatientid(7);
				model.setStaffid(8);
				
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
	
	public List<AppointmentModel> getProcessingAppointments() {
		try 
		{
			list=new ArrayList<AppointmentModel>();
			
			psmt=conn.prepareStatement("select p.patientname,s.staffname,a.appointid,a.date,a.starttime,a.endtime,a.patientid,a.staffid from  patient p inner join appointment a on p.patientid=a.patientid inner join staff s on a.staffid=s.staffid where a.starttime <= curtime()  AND a.endtime >= curtime() AND a.date=CURDATE()");
			rs=psmt.executeQuery();
			while(rs.next())
			{
				AppointmentModel model=new AppointmentModel();
				model.setPatientName(rs.getString(1));
				model.setStaffName(rs.getString(2));
				model.setAppointid(rs.getInt(3));
				model.setDate(rs.getString(4));
				model.setStartTime(rs.getString(5));
				model.setEndTime(rs.getString(6));
				model.setPatientid(7);
				model.setStaffid(8);
				
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
	public List<AppointmentModel> getPendingAppointments() {
		try 
		{
			list=new ArrayList<AppointmentModel>();
			
			psmt=conn.prepareStatement("select p.patientname,s.staffname,a.appointid,a.date,a.starttime,a.endtime,a.patientid,a.staffid from  patient p inner join appointment a on p.patientid=a.patientid inner join staff s on a.staffid=s.staffid where starttime > curtime()  AND a.date >= CURDATE();");
			rs=psmt.executeQuery();
			while(rs.next())
			{
				AppointmentModel model=new AppointmentModel();
				model.setPatientName(rs.getString(1));
				model.setStaffName(rs.getString(2));
				model.setAppointid(rs.getInt(3));
				model.setDate(rs.getString(4));
				model.setStartTime(rs.getString(5));
				model.setEndTime(rs.getString(6));
				model.setPatientid(7);
				model.setStaffid(8);
				
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
	public boolean cancelAppointment(String appointid,String endtime) {
		
		try 
		{
			 LocalTime now = LocalTime.now();
		        
		        // Define a formatter for 24-hour format
		        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss");
		       
		        // Format the current time
		        String formattedTime = now.format(formatter);
		        
		        // Print the formatted time
		        System.out.println("Current time in 24-hour format: " + formattedTime);
	               String formattedTime1[]=formattedTime.split(":");
	               int h1=Integer.parseInt(formattedTime1[0]);
	               int m1=Integer.parseInt(formattedTime1[1]);
		      
		        String endtime1[]=endtime.split(":");
		        int h2=Integer.parseInt(endtime1[0]);
	            int m2=Integer.parseInt(endtime1[1]);
		        
		        int totalsec=h1*3600+m1*60;
		        int totalsec2=h2*3600+m2*60;
		        int diff=Math.abs(totalsec - totalsec2);

	        // Get the difference in hours and minutes
	        long hours = diff/3600;
	        long minutes =(diff%3600)/60;

	        // Format the difference as a string in the format '-00:MM:00'
	        String formattedDifference = String.format("-%02d:%02d:00", hours, minutes);
	       
	       psmt=conn.prepareStatement("UPDATE appointment SET starttime = ADDTIME(starttime, ?),  endtime = ADDTIME(endtime, ?) WHERE starttime > CURTIME() AND DATE(date) = CURDATE();");
	       psmt.setString(1,formattedDifference);
	       psmt.setString(2, formattedDifference);
	      
	       int value=psmt.executeUpdate();
	       
	       psmt=conn.prepareStatement("delete from appointment where appointid=(?)");
	       psmt.setInt(1, Integer.parseInt(appointid.trim()));
	       int value1=psmt.executeUpdate();
	       return value1>0?true:false;
	       
		}
		catch(Exception ex)
		{
			System.out.println("Error is 1 "+ex);
			return false;
		}
		
	}

	@Override
	public List<AppointmentModel> getComplDoctAppoint(String doctorName) {
		try 
		{
			list=new ArrayList<AppointmentModel>();
			
			psmt=conn.prepareStatement("select p.patientname,s.staffname,a.appointid,a.date,a.starttime,a.endtime,a.patientid,a.staffid from  patient p inner join appointment a on p.patientid=a.patientid inner join staff s on a.staffid=s.staffid where a.date < CURDATE() OR (a.date=CURDATE() AND a.endtime < CURTIME()) AND s.staffname=?");
		    psmt.setString(1, doctorName);
			rs=psmt.executeQuery();
			while(rs.next())
			{
				AppointmentModel model=new AppointmentModel();
				model.setPatientName(rs.getString(1));
				model.setStaffName(rs.getString(2));
				model.setAppointid(rs.getInt(3));
				model.setDate(rs.getString(4));
				model.setStartTime(rs.getString(5));
				model.setEndTime(rs.getString(6));
				model.setPatientid(7);
				model.setStaffid(8);
				
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
