package com.ahd23.aja106.inno456.controller;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.ahd23.aja106.inno456.bean.Users;
import com.ahd23.aja106.inno456.dao.DBOperations;
import com.ahd23.aja106.inno456.util.Utility;

/**
 * Servlet implementation class FileUpload
 */
public class FileUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, java.io.IOException {
		int i=0;
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		String itemName="";
		String name[]=new String[4];
		ServletContext context=getServletContext();
		if(isMultipart) 
		{
	 		FileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			List items = null;
			try 
			{
				items = upload.parseRequest(request);
			} 
			catch (FileUploadException e) 
			{
				e.printStackTrace();
			}
			Iterator itr = items.iterator();
			while (itr.hasNext()) 
			{
				FileItem item = (FileItem) itr.next();
				if (!item.isFormField())
				{
					try 
					{
						itemName = item.getName();
						
						if(itemName.length() > 0)
						{
							
							
							File savedFile = new File("D:/Abhinav_972885/Zeppelin/WebContent/ProfilePic/"+itemName);
							//System.out.println(context.getContextPath()+"/ProfilePic/"+itemName);
							item.write(savedFile);
							
							/*name[i]="d:/"+itemName;
							System.out.println(i+":"+name[i]);
							i++;*/
						}
					}
					catch (Exception e) 
					{
						e.printStackTrace();
					}
				}
			}
			
			HttpSession session=request.getSession();
			Users users=(Users)session.getAttribute("UserDetail");
			new DBOperations().updateImage(users,"ProfilePic//"+itemName);
			users.setImagePath("ProfilePic//"+itemName);
			session.setAttribute("UserDetail", users);
			RequestDispatcher dispatcher=request.getRequestDispatcher("DashBoard.jsp");
			dispatcher.forward(request, response);
			
		}
		
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, java.io.IOException {

		throw new ServletException("GET method used with " +
				getClass( ).getName( )+": POST method required.");
	} 
}