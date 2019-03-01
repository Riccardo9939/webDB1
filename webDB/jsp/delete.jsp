<%@ page contentType="text/html"%>
<%@ page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*,java.text.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Elenco giudici XFactor</title>
    </head>
    <body>
    
     
        <% 
            try{
            String connectionUrl = "jdbc:sqlserver://213.140.22.237\\SQLEXPRESS:1433;databaseName=XFactor;user=zuliani.nicolo;password=xxx123#";

            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            Connection connection = DriverManager.getConnection(connectionUrl);
            
            String nome = request.getParameter("nome");
            String cognome = request.getParameter("cognome");
			
			
		
                   
                
                   
                   
                    
                    
                    // inserimento del nuovo giudice
                    String sql4 = "DELETE FROM giudice WHERE nome =? AND cognome = ?";
                    PreparedStatement prepStmt = connection.prepareStatement(sql4);
                    
                    prepStmt.setString(1, nome);
                    prepStmt.setString(2, cognome);
                    prepStmt.executeUpdate();
                    out.println("giudice rimosso");
			
			
			
			
    		
	        
	        
	        
	        connection.close();
      }catch(Exception e){
          out.println(e);
      }

        %>
    </body>
</html>