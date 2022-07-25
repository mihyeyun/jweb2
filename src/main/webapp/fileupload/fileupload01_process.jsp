<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="javax.naming.NamingEnumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	request.setCharacterEncoding("utf-8");
	//폴더 업로드 경로
	String realFolder = "C:\\dev\\jspworks\\jweb2\\src\\main\\webapp\\upload";
	MultipartRequest multi = new MultipartRequest(request, realFolder,
				5*1024*1024, "utf-8", new DefaultFileRenamePolicy());
	
	//요청한 파라미터의 name 속성과 value 객체 가져오기
	Enumeration<String> params = multi.getParameterNames();
	while(params.hasMoreElements()){
		String name = params.nextElement();
		String value = multi.getParameter(name);
		out.print(name + "=" + value + "<br>");
	}
	out.println("===================================================================================<br>");
	
	//요청한 파라미터 중 파일(filename)의 속성가져오기
	Enumeration<String> files = multi.getFileNames();
	while(files.hasMoreElements()){
		String name = files.nextElement();
		String fileName = multi.getFilesystemName(name);
		String original = multi.getOriginalFileName(name);
		String type = multi.getContentType(name);
		File file = multi.getFile(name);
		out.println("요청 파라미터 이름: " + name + "<br>");
		out.println("저장 파일 이름: " + fileName + "<br>");
		out.println("원본 파일 이름: " + original + "<br>");
		out.println("파일 컨텐츠 유형: " + type + "<br>");
		
		if(file != null){
			out.println("파일 크기: " + file.length() + "<br>");
		}
	
	
%>
<p>이미지 보기</p>
<p><img src="../upload/<%=fileName %>">
<% } %>




