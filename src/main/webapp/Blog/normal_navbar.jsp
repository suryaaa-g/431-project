<%@ page import ="blog.ConnectionProvider" %>
<%@ page import ="blog.Category" %>
<%@ page import ="blog.PostDao" %>

<%@page import="java.util.ArrayList"%>


<%

String user = (String)session.getAttribute("user");



%>


<nav class="navbar navbar-expand-lg bg-body-tertiary navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Rutgers Blog</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="../End/rutgersMain.jsp">Scholar Commons</a>
        </li>
       <!--  <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li> -->
        
       <!--  <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#"  id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Common</a></li>
            <li><a class="dropdown-item" href="#">School</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li> -->
         <li class="nav-item">
          <a class="nav-link disabled"><%=user%></a>
        </li>
        
        
         <li class="nav-item">
          <a class="nav-link" href="#" data-toggle="modal" data-target="#add-post-modal">Create Post</a>
        </li>
       
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>











