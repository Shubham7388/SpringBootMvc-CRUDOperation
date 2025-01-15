<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"  %>

<style>
body {
	margin: 0;
	padding: 0;
	font-family: 'Georgia', serif;
	background-color: #f4f4f4;
	color: #333;
}

h1 {
	text-align: center;
	font-family: 'Georgia', serif;
	color: #4b5320; /* Olive Green */
	margin-top: 20px;
	font-size: 2rem;
	border-bottom: 3px solid #8b0000; /* Dark Red */
	padding-bottom: 10px;
}

.icon-container {
	display: flex;
	justify-content: flex-end;
	gap: 20px;
	margin-right: 130px;
	margin-bottom: 10px;
}

.icon-container img {
	width: 40px;
	height: 50px;
}

table {
	width: 80%;
	margin: 20px auto;
	border-collapse: collapse;
	background-color: #fff;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

th, td {
	border: 1px solid #ddd;
	padding: 10px;
	text-align: center;
}

th {
	background-color: #8c8b88; /* Neutral Gray */
	color: #fff;
	font-weight: bold;
}

tr:nth-child(even) {
	background-color: #f9f9f9;
}

tr:nth-child(odd) {
	background-color: #fff;
}

td img {
	width: 30px;
	height: 30px;
}

.back-button {
	display: block;
	text-align: center;
	margin: 20px auto;
}

.back-button img {
	width: 60px;
	height: 50px;
}
</style>

<body>
	<c:choose>
		<c:when test="${!empty empResult}">
			<h1>Employee Report</h1>		
			<div class="icon-container">
			<a href="search"><img src="images/loupe.png"
					alt="Search Employee"></a>
				<a href="register"><img src="images/add-user.png"
					alt="Add Employee"></a> <a href="./"><img
					src="images/home.png" alt="Home"></a>
			</div>

			<table>
				<thead>
					<tr>
						<th>EMP NO.</th>
						<th>Name</th>
						<th>JOB</th>
						<th>SAL</th>
						<th>DEPT</th>
						<th>EDIT/DELETE</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="emp" items="${empResult}">
						<tr>
							<td>${emp.empno}</td>
							<td>${emp.ename}</td>
							<td>${emp.job}</td>
							<td>${emp.sal}</td>
							<td>${emp.deptno}</td>
							<td><a href="edit?no=${emp.empno}"> <img
									src="images/edit.png" alt="Edit">
							</a> &nbsp;&nbsp; <a href="delete?no=${emp.empno}" onclick="return confirm('Do you want to delete the employee')"> <img
									src="images/delete.png" alt="Delete">
							</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:when>
		<c:otherwise>
			<h1>Employees Not Found</h1>
		</c:otherwise>
	</c:choose>
	<c:choose>
		<c:when test="${not empty resultMsg}">
			<h2
				style="color: #4b5320; background-color: #f9f5f0; text-align: center; padding: 10px; border: 2px solid #8b0000; border-radius: 5px; width: 50%; margin: 20px auto; font-size: 1.5rem; font-weight: bold; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);">
				${resultMsg}</h2>
		</c:when>
		<c:when test="${not empty editMsg}">
			<h2
				style="color: #8b5320; background-color: #f2f5e0; text-align: center; padding: 10px; border: 2px solid #00008b; border-radius: 5px; width: 50%; margin: 20px auto; font-size: 1.5rem; font-weight: bold; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);">
				${editMsg}</h2>
		</c:when>
		<c:when test="${not empty deleteMsg}">
			<h2
				style="color: #8b5320; background-color: #f2f5e0; text-align: center; padding: 10px; border: 2px solid #00008b; border-radius: 5px; width: 50%; margin: 20px auto; font-size: 1.5rem; font-weight: bold; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);">
				${deleteMsg}</h2>
		</c:when>
		<c:otherwise>
			<h2
				style="color: #8b0000; background-color: #ffe5e5; text-align: center; padding: 10px; border: 2px solid #4b5320; border-radius: 5px; width: 50%; margin: 20px auto; font-size: 1.5rem; font-weight: bold; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);">
				No Msg available.</h2>
		</c:otherwise>
	</c:choose>
	<div class="back-button">
		<a href="report"><img src="images/back.png" alt="Back"></a>
	</div>

</body>

