<%@page import="com.sist.vo.EmpVo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sist.dao.DeptEmpDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form action="searchDloc.jsp" method="post">
		�μ� ��ġ�� �Է��ϼ��� ==> <input type="text" name="dloc">
		<input type="submit" value="�˻�">
	</form>
	
	<%
		request.setCharacterEncoding("euc-kr");
		if(request.getParameter("dloc") != null){
			String dloc = request.getParameter("dloc");
			DeptEmpDAO dao = new DeptEmpDAO();
			ArrayList<EmpVo> list = dao.joinSearchDloc(dloc);
		
			%>
			<table border="1" width="80%">
				<tr>	
					<td>�����ȣ</td>
					<td>�̸�</td>
					<td>�޿�</td>
					<td>����</td>
					<td>�Ǽ��ɾ�</td>
					<td>�μ���ȣ</td>
					<td>�μ���</td>
				</tr>
				<%
					for(EmpVo o :list){
						%>
							<tr>	
								<td><%= o.getEno() %></td>
								<td><%= o.getEname() %></td>								
								<td><%= o.getSalary() %></td>
								<td><%= o.getComm() %></td>
								<td><%= o.getReal() %></td>
								<td><%= o.getDno() %></td>								 
								<td><%= o.getDname() %></td>
							</tr>
						<% 
					}
				
				%>
			</table>
			<br>
			<hr>
		 
			<%
		}
	%>
</body>
</html>