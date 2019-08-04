<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import= "java.util.Date"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel = "stylesheet" href= "styles.css">
		<title>Index</title>
	</head>
	<body>
		<div id= "container">
			<!-- getting the value for the parameters -->
	    	<% String name = request.getParameter("name"); %>
	    	<%
			int width=0; int height=0;
			if(request.getParameter("width") != null){
				width = Integer.parseInt(request.getParameter("width"));	
			}
			if(request.getParameter("height") != null){
				height = Integer.parseInt(request.getParameter("height"));
			}
			if(name == null){
				name = "USER";
			}%>
		
	    	
	    	<!-- displaying the value -->
	    	<h1>Welcome, <%= name %></h1>
	    	<h2>The time is: <%= new Date() %></h2>
	    	
	    	<!-- building board -->
	    	<% 
			for(int i=0; i<height; i++){
				if(i%2 == 0){ %>
					<div class="even">
						<% for(int a=0; a<width; a++){
							if(a%2 == 0){ %>
								<div class="red"></div>
						<% } else { %>
								<div class="black"></div>
						<% }
				} %>
					</div>
				<% } else{ %>
					<div class="odd">
					<% for(int b=0; b<width; b++){
						if(b%2 == 0){ %>
							<div class="black"></div>
						<% } else { %>
							<div class="red"></div>
						<% }
					} %>
					</div>
				<% } %>
			<% } %>
	</div>
	</body>
</html>