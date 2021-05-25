<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
  .navbar-nav > a {color:#ccc !important;}
  .navbar-nav  a:hover {color:#fff !important; background-color:#aaa;}
</style>
<div class="jumbotron text-center" style="margin-bottom:0; padding:20px 0;">
  <h1>cj2103 Web Project</h1>
  <p>본 사이트는 반응형으로 제작되었습니다.</p> 
</div>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <a class="navbar-brand" href="<%=request.getContextPath()%>/">HOME</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="<%=request.getContextPath()%>/guest/gList.jsp">Guest</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Board</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Data</a>
      </li>
      <li class="nav-item dropdown">
	      <a class="nav-link dropdown-toggle btn btn-secondary btn-sm btn-sub" href="#" id="navbardrop" data-toggle="dropdown">학습실1</a>
	      <div class="dropdown-menu">
	        <a class="dropdown-item" href="<%=request.getContextPath()%>/urlMapping.um">URL 매핑</a>
	        <a class="dropdown-item" href="#">Link 2</a>
	        <a class="dropdown-item" href="#">Link 3</a>
	      </div>
	    </li> 
    </ul>
  </div>  
</nav>