<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- student.jsp -->
<html>
<head>
	<title>�л�����</title>
	<link rel="stylesheet" type="text/css" href="style.css"> 
</head>
<body>
	<div align="center">
		<hr color="green" width="300">
		<h2>�� �� �� �� �� �� ��</h2>
		<hr color="green" width="300">
		<form name="f" action="insert_student.do" method="post">
			<table border="1">
				<tr>
					<td>
						���̵� : <input type="text" name="id"><br>
						�л��� : <input type="text" name="name"><br>
						�б޸� : <input type="text" name="cname"><br>
						<input type="submit" value="���">
						<input type="reset" value="�ٽ��Է�">	
					</td>
				</tr>
			</table>
		</form>
	</div>
	<div align="center">
		<hr color="green" width="300">
		<h2>�� �� �� �� �� �� ��</h2>
		<hr color="green" width="300">
		<form name="f" action="delete_student.do" method="post">
			<table border="1">
				<tr>
					<td>
						���̵� : <input type="text" name="id">
						<input type="submit" value="����">
					</td>
				</tr>
			</table>
		</form>
	</div>
	<div align="center">
		<hr color="green" width="300">
		<h2>�� �� ã �� �� �� ��</h2>
		<hr color="green" width="300">
		<form name="f" action="find_student.do" method="post">
			<table border="1">
				<tr>
					<td>
						�л��� : <input type="text" name="name">
						<input type="submit" value="ã��">
					</td>
				</tr>
			</table>
		</form>
	</div>
	<div align="center">
		<hr color="green" width="300">
		<h2>�� �� �� �� �� �� ��</h2>
		<hr color="green" width="300">
		<form name="f" action="list_student.do" method="post">
			<table border="1">
				<tr>
					<td>
						<input type="submit" value="�л������������ �̵�">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
<%--
create table student
(id varchar2(10),
name varchar2(15),
cname varchar2(25));
--%>















