<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Userlogin.aspx.cs" Inherits="MasterProj1.Userlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
<link href="StyleSheet1.css" rel="stylesheet" />
  <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
      <meta name="viewport" content="width=device-width, initial-scale=1"/>  
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>  
      <title>User Login </title>  
      <!-- Latest compiled and minified CSS -->  
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>  
      <!-- Optional theme -->  
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css"/>  
      <!-- Normalize -->  
      <%--<link rel="stylesheet" href="normalize.css"> --%> 
      <!-- Latest compiled and minified JavaScript -->  
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>  
      <!-- Latest compiled and minified jquery 1.11.3 JavaScript -->  
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>  
      <style type="text/css">
          @import url(http://fonts.googleapis.com/css?family=Raleway:600);

          body {
              background-color: #000;
              margin: 0;
              padding: 0;
              height: 100%;
              width: 100%;
          }

          span {
              color: #fff;
              font-family: 'Raleway', sans-serif;
              font-size: 18px;
          }

          p {
              color: #fff;
              font-family: 'Raleway', sans-serif;
              font-size: 12px;
          }

          .col-centered {
              float: none;
              margin: 0 auto;
              margin-top: 94px;
          }

          .wrath-content-box {
              padding: 15px;
          }
      </style>
  <%--<style>
      body {

          background-color:burlywood;
      }
  </style>--%>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          <h1>User Login</h1>

          <div class="container-fluid">
          

            <div class="row form-group ">
            
           <div class="col-lg-4 col-centered table-bordered ">  
               <div class="wrath-content-box"> <span>User Login</span> </div>  
               <div class="wrath-content-box">  
                 <div class="input-group"> <span class="input-group-addon btn-primary" id="basic-addon1"><span class="glyphicon glyphicon-user"></span></span>  
                  
                     <asp:TextBox ID="txtemail" class="form-control" placeholder="Email" runat="server"></asp:TextBox>

                 </div>  
                 <div class="clearfix"></div>  
                 <br />  
                 <div class="input-group"> <span class="input-group-addon btn-primary"" id="basic-addon2"><span class="glyphicon glyphicon-lock"></span> </span>  
                  
                     <asp:TextBox ID="txtpassword" class="form-control" TextMode="Password" placeholder="Password" runat="server"></asp:TextBox>
                 </div>  
                 <div class="clearfix"></div>  
                 <br />  
          
                 <div class="col-sm-6 text-right">  
           
                     <div class="form-group text-right">  
                        <asp:Button ID="btnsubmit" Cssclass="btn btn-success btn-sm form-control" runat="server" Text="Login" OnClick="btnsubmit_Click" />
                     </div>  
  
                 </div>  
                  <div class="col-sm-6 text-right">  
           
                     <div class="form-group text-right">
                        <asp:Button ID="btncancel" Cssclass="btn btn-danger btn-sm form-control" runat="server" Text="Register" OnClick="btncancel_Click" />
                     </div>   
                 </div>  
              <div class="clearfix"></div>  
            </div>  
          </div>  
        </div>  
      </div>  
  
        </div>
       
    </form>
</body>
</html>
