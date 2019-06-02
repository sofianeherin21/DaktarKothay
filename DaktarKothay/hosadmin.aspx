<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hosadmin.aspx.cs" Inherits="DaktarKothay.hosadmin" %>






<!doctype html>
<html lang="en">
<head runat="server">
    <title>Daktar Kothay
    </title>

    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            background: url(adminback.jpg);
            background-size: cover;
            font-family: sans-serif;
        }

        .loginbox {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            width: 450px;
            height: 420px;
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
            top: calc(-100px/2);
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
            height: 60px;
            color: #fff;
            font-size: 26px;
        }

        #TextUser {
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

        ::placeholder {
            color: rgba(255,255,255,.5);
        }

        #loginbtn {
            border: none;
            outline: none;
            height: 40px;
            color: #fff;
            font-size: 16px;
            background: palegreen;
            cursor: pointer;
            border-radius: 20px;
        }

            #loginbtn:hover {
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
                width: 225px;
            }

            ul li {
                float: left;
                height: 40px;
                width: 225px;
                background-size: cover;
                background-color: rgba(0,10,20,0.85);
                color: white;
                font-size: 20px;
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
                <li>
                    <asp:Label ID="Labeluser" href="" class="active" runat="server" Text=""></asp:Label>
                    <ul>
                        <li><a href="#" onServerClick="Anchor_Click"  runat="server">Logout</a></li>
                        
                    </ul>
                </li>

            </ul>
        </nav>
    </div>

	<!-- ..............HEADER SESH............-->


		<a href="https://www.facebook.com/daktarkothay/" target="_blank""><img src="fb.png" style="width:50px;height:50px;margin-top: 40px;margin-left: 1250px;border:0;"></a>&nbsp;
		

	
	 <div id="right" style="color: white; height: 500px; width: 100%; margin-left: 10%; margin-bottom: 0px">


         <asp:GridView ID="GridView1" runat="server" Style="width: 1000px; height: 300px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="218px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">

             <Columns>
                 <asp:BoundField DataField="docName" HeaderText="Doctor Name" SortExpression="docName" />
                 <asp:BoundField DataField="deptName" HeaderText="Department" SortExpression="Department" />
                 <asp:BoundField DataField="degree" HeaderText="Degree" SortExpression="degree" />
                 <asp:BoundField DataField="day" HeaderText="Days" SortExpression="Days" />


             </Columns>
             <FooterStyle BackColor="White" ForeColor="#000066" />
             <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
             <RowStyle ForeColor="Black" />
             <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F1F1F1" />
             <SortedAscendingHeaderStyle BackColor="#007DBB" />
             <SortedDescendingCellStyle BackColor="#CAC9C9" />
             <SortedDescendingHeaderStyle BackColor="#00547E" />
         </asp:GridView>

         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>"></asp:SqlDataSource>

     </div>
        <div style="margin: 0px 0px 0px 100px; color: white; position:relative">
           
            <asp:Label ID="Label3" runat="server" Text="Doctor Name:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="254px" style="margin-bottom: 6px"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" Text="Department Name:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="43px" Width="155px">
                <asp:ListItem Value="1">Urology</asp:ListItem>
                <asp:ListItem Value="2">Neurology</asp:ListItem>
                <asp:ListItem Value="3">Dermatology</asp:ListItem>
                <asp:ListItem Value="4">Orthopedics</asp:ListItem>
                <asp:ListItem Value="5">Cardiology</asp:ListItem>
                <asp:ListItem Value="6">Dentistry</asp:ListItem>
                <asp:ListItem Value="7">ENT</asp:ListItem>
                <asp:ListItem Value="8">Opthalmology</asp:ListItem>
                <asp:ListItem Value="9">Emergency Services</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label1" runat="server" Text="Day:"></asp:Label>
               <asp:DropDownList ID="DropDownList2" runat="server" Height="43px" Width="155px">
                <asp:ListItem Value="1">Sunday</asp:ListItem>
                <asp:ListItem Value="2">Monday</asp:ListItem>
                <asp:ListItem Value="3">Tuesday</asp:ListItem>
                <asp:ListItem Value="4">Wednesday</asp:ListItem>
                <asp:ListItem Value="5">Thursday</asp:ListItem>
                <asp:ListItem Value="6">Friday</asp:ListItem>
                  
            </asp:DropDownList>
            <asp:Label ID="Label5" runat="server" Text="Degree:"></asp:Label>

            <asp:TextBox ID="TextBox3" runat="server" Height="46px" Width="242px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" Width="78px" Height="30px" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Insert" Width="78px" Height="30px" />
            <asp:Panel ID="Panel1" runat="server" Height="100px">
                <asp:Label ID="Label6" runat="server" Text="Check Appointment" Width="187px"></asp:Label>
                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style1">
                    <asp:ListItem>Sunday</asp:ListItem>
                    <asp:ListItem>Monday</asp:ListItem>
                    <asp:ListItem>Tuesday</asp:ListItem>
                    <asp:ListItem>Wednesday</asp:ListItem>
                    <asp:ListItem>Thursday</asp:ListItem>
                    <asp:ListItem>Friday</asp:ListItem>
                    <asp:ListItem>Saturday</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Check" />
            </asp:Panel>
        </div>
    </form>

	



	<footer>
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


