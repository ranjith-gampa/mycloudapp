<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cloud Application</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

   

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <style type="text/css">
    body {
	background-color: #FFFBFB;
}
    </style>
</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <!-- Top Menu Items -->
              <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                     
                    <a href="home_page.html" ><i class="fa fa-gear"></i>Log Out <b class="caret"></b></a>
                  
                </li>
            </ul>
            <div class="navbar-header">
            
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"><center>EMPLOYEE DASHBOARD</center></a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
              <li class="dropdown">
                   
                    <ul class="dropdown-menu">
                        <li class="divider"></li>
                        
                        <li>
                            <a href="EmployeeLogin.jsp"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
              </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                  <li class="active"> <a href="ConsoleTesterHome.jsp"><em class="fa fa-fw fa-dashboard"></em>HOME</a> </li>
                  <li></li>
                    <li><a href="ConsoleTesterDetailsController"><em class="fa fa-fw fa-edit"></em>Details</a></li>
                    <li></li>
                    <li><a href="ConsoleTesterNewProject.jsp"><i class="fa fa-fw fa-edit"></i>Project Requests</a></li>
                    <li><a href="ConsoleTesterOngoingProject.jsp"><em class="fa fa-fw fa-edit"></em>Ongoing Projects</a></li>
                	<li><a href="BugReport.jsp"><em class="fa fa-fw fa-edit"></em>Bug Report</a></li>
                	<li><a href="ConsoleTesterIncentive.html"><em class="fa fa-fw fa-edit"></em>Incentives and Rewards</a></li>
                    <li><a href="ConsoleTesterRatingSummary.jsp"><em class="fa fa-fw fa-edit"></em>Rating</a></li>
                </ul>
    </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                    
                     
             
                      </ol>
                    </div>
                </div>
                <div class="container">
  
 <h2>Welcome, 
  <%
        HttpSession s =  request.getSession(); 
       	String username = (String)s.getAttribute("u");
        out.print(username);
        %>
        <input type="hidden" name="user" value="<%=username %>"
        
   %> </h2>
   
</div>
<form action="ConsoleEmployeeDetailsController" method="get">
<input type="submit" value="Check Profile">
</form>






                <!-- /.row -->

               

       
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

   

</body>

</html>
