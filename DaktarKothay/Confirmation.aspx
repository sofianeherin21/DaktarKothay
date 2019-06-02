﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="DaktarKothay.Confirmation" %>

<!doctype html>
<html lang="en">
<head runat="server">
    <title>Daktar Kothay
    </title>

    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            background: url(aboutback.jpg);
            background-size: cover;
            font-family: sans-serif;
        }

        .loginbox {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            width: 450px;
            height: 520px;
            padding: 80px 40px;
            box-sizing: border-box;
            background: rgba(0,0,0,.5);
        }

        .user {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            overflow: hidden;
            position: absolute;
            top: calc(50px/2);
            left: calc(50% -50px);
        }

        h2 {
            margin: 0;
            padding: 0 0 20px;
            color: palegreen;
            text-align: center;
        }

        .loginbox p {
            margin: 0;
            padding: 0;
            font-weight: bold;
            color: #fff;
        }

        .loginbox input {
            width: 100%;
            margin-bottom: 20px;
        }

            .loginbox input[type="text"],
            .loginbox input[type="password"] {
                border: none;
                border-bottom: 1px solid #fff;
                background: transparent;
                outline: none;
                height: 40px;
                color: #fff;
                font-size: 16px;
            }


        .TextBox {
            width: 100%;
            margin-bottom: 20px;
            border: none;
            border-bottom: 1px solid #fff;
            background: transparent;
            outline: none;
            height: 40px;
            color: #fff;
            font-size: 16px;
        }

        #TextName {
            height: 40px;
            color: #fff;
            font-size: 16px;
        }

        #TextDept {
            height: 40px;
            color: white;
            font-size: 16px;
        }

        #TextPat {
            width: 100%;
            margin-bottom: 20px;
            border: none;
            border-bottom: 1px solid #fff;
            background: transparent;
            outline: none;
            height: 40px;
            color: white;
            font-size: 16px;
        }



        #appointbtn {
            border: none;
            outline: none;
            height: 40px;
            color: #fff;
            font-size: 16px;
            background: palegreen;
            cursor: pointer;
            border-radius: 20px;
        }

            #appointbtn:hover {
                background: #ffd800;
            }

        /*-------------footer--------*/
        footer div {
            background-color: rgba(0,10,20,0.85);
            padding: 20px;
            text-align: center;
            color: white;
            width: 100%;
            margin-top: 50px;
        }

        h1, h2, h3, h4, h5, h6, p {
            margin-bottom: 20px;
        }

        nav {
            height: 40px;
            width: 100%;
            background-color: rgba(0,10,20,1);
            opacity: 0.85;
            position: fixed;
        }

        ul {
            padding: 0px;
            width: 100%;
        }

            ul li a {
                /*text-align: right;*/
                text-decoration: none;
                color: white;
                display: block;
                width: 220px;
            }

            ul li {
                float: left;
                height: 40px;
                width: 220px;
                background-size: cover;
                background-color: rgba(0,10,20,0.85);
                color: white;
                font-size: 22px;
                line-height: 40px;
                text-align: center;
                list-style-type: none;
            }

                ul li a:hover {
                    background-color: rgba(167,216,190,0.85);
                    font-size: 22px;
                }

                ul li ul li {
                    display: none;
                }

                ul li:hover ul li {
                    display: block;
                    background-color: rgba(227,105,92,0.85);
                }
        /*--------------------HEADER SESH---------------*/

        footer div a {
            margin: 0px;
            list-style: none;
            font-size: 20px;
            color: white;
            text-decoration: none;
            padding: 15px;
        }
    </style>
    <link rel="icon" href="icon-01.png">
</head>
<body>
	<form id="form1" runat="server">
    <div style="width: 100%">
        <nav>
            <ul>
<li><a href="home.aspx" class="active">Home</a></li>
			<li><a href="" class="active">Menu</a>
			<ul>
				<li><a href="topdoctors.aspx" class="active">Search Doctor</a></li>
				<li><a href="nearby.aspx" class="active">Map</a></li>
				<li><a href="about.aspx" class="active">About us</a></li>
				</ul>
				</li>
			<li><a href="topdoctors.aspx" class="active">Doctors List</a></li>
			<li><a href="nearby.aspx" class="active">Map</a></li>
			<li><a href="usersignup.aspx" class="active">Sign Up</a></li>
			<li><a href="" class="active">Login</a>
			<ul>
				<li><a href="hoslogin.aspx" class="active">Hospital Admin</a></li>
				<li><a href="medlogin.aspx" class="active">Medicine shop Admin</a></li>
                <li><a href="usersignup.aspx" class="active">User</a></li>
				
				</ul>
				</li>

            </ul>
        </nav>
    </div>

    <div class="loginbox">
        <img src="appback.png" class="user" />
        <h2>Appintment <br />
            Confirmation</h2>
        
		<asp: DataSourceID="SqlDataSource1">

			
            <p Style="color:chartreuse">Doctor Name</p>
            <asp:Label ID="TextName" Style="background: transparent" placeholder="Doctor Name" runat="server" Text='<%#Session["docName"] %>'  ></asp:Label>
            <p Style="color:chartreuse">Department</p>
            <asp:Label ID="TextDept" Style="background: transparent" placeholder="Department"  runat="server" Text='<%#Session["deptName"] %>' ></asp:Label>
			<p Style="color:chartreuse">Hospital</p>
            <asp:Label ID="TextHos" Style="background: transparent;color:white" placeholder="Hospital"  runat="server" Text='<%#Session["hosName"] %>' ></asp:Label>
            <p Style="color:chartreuse">Patient Name</p>
            <asp:Label ID="LabelPat" Style="background: transparent;color:white" placeholder="Hospital"  runat="server" Text='<%#Session["user"] %>' ></asp:Label>
			<p Style="color:chartreuse">Day</p>
        <asp:Label ID="LabelDay" Style="background: transparent; color: white" placeholder="Hospital" runat="server" Text='<%#Session["day"] %>'></asp:Label>
        <p Style="color:chartreuse">Date</p>
        <asp:Label ID="Labeldate" style="color:white" runat="server" Text=""></asp:Label>
        <p Style="color:chartreuse">Time</p>
        <asp:Label ID="Labelt" style="color:white" runat="server" Text='<%#Session["time"] %>'></asp:Label>
        <p Style="color:chartreuse">Serial ID</p>
        <asp:Label ID="Labelappid" style="color:white" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label runat="server" Style="color: chartreuse" Text="Your Appointment has been Confirmed!"></asp:Label>




    </div>

     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [docName], [deptID], [hosID] FROM [doctor]"></asp:SqlDataSource>
    
    <footer style="width: 100%; bottom: 0px; position: fixed">
        <div class="foot">
            <a href="about.aspx" class="active">About us</a>
            |
			<a href="about.aspx" class="active">Contact</a>
            |
			<a href="https://www.facebook.com/daktarkothay/" target="_blank" class="active">Our facebook page</a>
        </div>

    </footer>
        </form>
</body>
</html>
