<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<body style="background-color:powderblue;">
	<center><h1><u>Employees List</u></h1>
	<table border="15" width="70%" cellpadding="2" style="background-color:white;">
	
	<tr><th>Id</th><th>Name</th><th>Age</th><th>Address</th><th>DOJ</th><th>Department</th>
	<th>Gender</th><th>Contact</th><th>Email</th><th>Created Date</th>
	<th>Edit</th><th>Delete</th></tr>
    <c:forEach var="emp" items="${list}"> 
    <tr>
    <td>${emp.id}</td>
    <td>${emp.name}</td>
    <td>${emp.age}</td>
    <td>${emp.address}</td>
    <td>${emp.doj}</td>
    <td>${emp.department}</td>
    <td>${emp.gender}</td>
    <td>${emp.contact}</td>
    <td>${emp.email}</td>
    <td>${emp.created_dt}</td>
    <td><a href="editemp/${emp.id}">Edit</a></td>
    <td><a href="deleteemp/${emp.id}">Delete</a></td>
    </tr>
    </c:forEach>
    </table>
    <br/>
    </h3>##<h2><a href="empform"> Add New Employee</a></h2> ##</center>