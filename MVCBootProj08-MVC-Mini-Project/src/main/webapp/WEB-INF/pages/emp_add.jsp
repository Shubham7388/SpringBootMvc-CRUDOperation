<%@ page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>


<frm:form modelAttribute="empl">
	<h1 style="text-align: center">Add Employee</h1>
	<table align="center">
		<tr>
			<td>Employee Name</td>
			<td><frm:input path="ename" /></td>
		</tr>
		<tr>
			<td>Employee Job</td>
			<td><frm:input path="job" /></td>
		</tr>
		<tr>
			<td>Employee Salary</td>
			<td><frm:input path="sal" /></td>
		</tr>
		<tr>
			<td>Dept No.</td>
			<td><frm:select path="deptno">
					<frm:option value="10">10</frm:option>
					<frm:option value="20">20</frm:option>
					<frm:option value="30">30</frm:option>
				</frm:select></td>
		</tr>
		<tr>
			<td><input type="submit" value="submit" /></td>
			<td><input type="reset" value="clear" /></td>
		</tr>
	</table>
</frm:form>
<a href="./" ><img src="images/home.png" alt="Home" height="40" width="30"></a>