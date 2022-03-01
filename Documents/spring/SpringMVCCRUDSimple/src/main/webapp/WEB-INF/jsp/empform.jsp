<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  


<body style="background-color:powderblue;">
		<center><h1><u>Add New Employee</u></h1>
       <form:form method="post" action="save">  
      	<table border="15" cellpadding="5" style="background-color:silver;" >  
         <tr>  
          <td>Name : </td> 
          <td><form:input size="45" path="name"  /></td>
         </tr>
         <tr>  
          <td>Age :</td>  
          <td><form:input path="age" /></td>
         </tr> 
         <tr>  
          <td>Address :</td>  
          <td><form:input path="address" /></td>
         </tr>  
         <tr>  
          <td>Date of Joining : </td> 
          <td><form:input path="doj"  /></td>
         </tr>  
         <tr>  
          <td>Department :</td>  
          <td><form:input path="department" /></td>
         </tr> 
         <tr>  
          <td>Gender :</td>  
          <td><form:input path="gender" /></td>
         </tr> 
         <tr>  
          <td>Contact :</td>  
          <td><form:input path="contact" /></td>
         </tr> 
         <tr>  
          <td>Email :</td>  
          <td><form:input path="email" /></td>
         </tr>
         <tr>  
           
          <td colspan="2" align="center" ><input type="submit" value="Save" /></td>  
         </tr> 
        </table>  
       </form:form> 
       </center> 
