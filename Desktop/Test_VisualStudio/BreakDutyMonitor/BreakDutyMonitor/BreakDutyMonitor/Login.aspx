<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BreakDutyMonitor.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8";/>
    <title> 督導點 Monitor</title>
    <style type="text/css">
        #form1 {
            height: 712px;
        }
    </style>
</head>
<body style="background-color:aliceblue">
    <form id="form1" runat="server">
        <div style="height: 100px; width: 1223px;   background-color:aliceblue;line-height:100px; border-style:ridge; margin-left: 45px;">
            <span style="background-color: transparent;
                    font-family: 微軟正黑體;
                    font-size: 42px;
                    font-style: normal;
                    font-variant-ligatures: normal;
                    font-variant-caps: normal;
                    font-weight: bold;
                    letter-spacing: normal;
                    orphans: 2;
                    text-align: start;
                    text-indent: 0px;
                    text-transform: none;
                    white-space: normal;
                    widows: 2;
                    word-spacing: 0px;
                    -webkit-text-stroke-width: 0px;
                    text-decoration-style: initial;
                    text-decoration-color: initial;
                    display: inline !important;
                    float: none;">
                    18督導點 (18 monitoring)
            </span>
        </div>
        
          <p style="font-family:Arial; 
                    font-weight:normal;
                    width: 1227px; 
                    margin-left: 44px;">
                    Thank you for taking care of all the students around the campus, please remember to sign your name and write down your employee ID number when you finish your break duty. "
             <br>"EX: C10501001 Joseph Kang
             <br><br>If you are not able to attend your break duty for any reason, please arrange with a substitute teacher and notify the admin staff or teachers in DSA.
             <br><br>substitute teacher’s employee ID and Name  (Assigned teacher)
             <br>EX: C10501001&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;康小橋&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (代康大橋)
             <br><br><br>
              謝謝您守護校園安全，請填寫您的員工編號及姓名 EX:C10501001  康小橋 
              <br><br><br>
              若因故無法前往，請督導老師自行協調後，並向生教組回報。請填寫您的員工編號及姓名以及幫哪位老師代理
              <br><br>
              代理人員編&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 代理人&nbsp;&nbsp;&nbsp;&nbsp;     (原督導老師)
              <br>
              EX:C10501001&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 康小橋&nbsp;&nbsp;&nbsp; (代康大橋)
          </p>
        <div style="width: 1228px; 
             height: 50px; 
             margin-left: 40px; 
             font-family: 微軟正黑體; 
             font-size: 32px;">
             請填寫員工編號：<asp:TextBox ID="tb_EmployeeID" runat="server" style="margin-left: 0px" Width="262px" Height="19px" AutoPostBack="True" OnTextChanged="tb_EmployeeID_TextChanged" ></asp:TextBox>
        </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lb_EmployeeName" runat="server" Text="test"></asp:Label>
        <br><br>

        <div style="height: 92px; 
             width: 1231px; 
             margin-left: 41px;
             font-size:32px;
             font-family:微軟正黑體;
             ">
             簽到 (sign in)或簽退 (Sign off) 
            <br>
            <asp:RadioButton ID="RadioButton1" runat="server" />

        </div>

        <asp:Button ID="bt_send" runat="server" OnClick="Button1_Click" Text="表單送出" style="margin-left: 43px" Width="60px" />    




    </form>
    
</body>
</html>
