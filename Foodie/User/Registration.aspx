<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Foodie.User.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

      <script>
        /*For disappearing alert message*/
        window.onload = function () {
            var second = 5;
            setTimeout(function () {
                document.getElementById("<%=lblMsg.ClientID%>").style.display = "none";
            }, second * 1000 );
        };
    </script>
    <script>
        function ImagePriview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $("<%=ImgUser.ClientID%>").prop('src', e.target.result)
                        .widht(200)
                        .height(200);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <selection class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <div class="align-self-end">

            <asp:Label ID="lblMsg" runat="server"  Visible="false" ></asp:Label>
                </div>

               <asp:Label ID="lblHeaderMsg" runat="server"  Text="<h2> User Registration</h2>" ></asp:Label>
            
            </div>

            <div class="raw" >
                <div class="col-md-6">
                    <div class="form_container">
                         
                        <div>
                            <asp:TextBox ID="txtName" runat="server" Cssclass="form-control" placeholder="Enter Full Name" 
                                ToolTip="Full Name" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Name is required" ControlToValidate="txtName"
                               ForeColor="Red" Display="Dynamic" setFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revName" runat="server" ErrorMessage="Name must be in Chracters only"
                              ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[a-zA-Z\s"]+$"
                               ControltoValidate="txtname"></asp:RegularExpressionValidator>
                        </div>
                          
                        <div>
                            <asp:TextBox ID="txtUserName" runat="server" Cssclass="form-control" placeholder="Enter  UserName" 
                                ToolTip="Username" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ErrorMessage="Name is required" 
                                ControlToValidate="txtUserName" ForeColor="Red" Display="Dynamic" setFocusOnError="true"></asp:RequiredFieldValidator>                           
                        </div>

                        <div>
                            <asp:TextBox ID="txtEmail" runat="server" Cssclass="form-control" placeholder="Enter Email " 
                                ToolTip="Email" TextMode="Email" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email is required" 
                                ControlToValidate="txtEmail" ForeColor="Red" Display="Dynamic" setFocusOnError="true"></asp:RequiredFieldValidator>                            
                        </div>

                        <div>
                            <asp:TextBox ID="txtMobile" runat="server" Cssclass="form-control" placeholder="Enter Mobile Number" 
                                ToolTip="Mobile Number" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ErrorMessage="Mobile No. is required"
                                ControlToValidate="txtMobile"
                               ForeColor="Red" Display="Dynamic" setFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revMobile" runat="server" ErrorMessage="Mobile No.  must have only 11 digits"
                              ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[0-9]{11}$"
                               ControltoValidate="txtMobile"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                </div>
                 <div class="col-md-6">
                    <div class="form_container">

                         <div>
                            <asp:TextBox ID="txtAddress" runat="server" Cssclass="form-control" placeholder="Enter Address" 
                                ToolTip="Address"  TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Address is required" 
                                ControlToValidate="txtAddress"
                               ForeColor="Red" Display="Dynamic" setFocusOnError="true"></asp:RequiredFieldValidator>
                           
                        </div>
                          
                        <div>
                            <asp:TextBox ID="txtPostCode" runat="server" Cssclass="form-control" placeholder="Enter  Post/Zip Code" 
                                ToolTip="Post/Zip Code" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPostCode" runat="server" ErrorMessage="Post/Zip Code is required" 
                                ControlToValidate="txtPostCode" ForeColor="Red" Display="Dynamic" setFocusOnError="true"></asp:RequiredFieldValidator>   
                             <asp:RegularExpressionValidator ID="revPostCode" runat="server" ErrorMessage="Post/Zip Code must have only 6 digits"
                              ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[0-9]{6}$"
                               ControltoValidate="txtPostCode"></asp:RegularExpressionValidator>
                        </div>

                        <div>
                            <asp:FileUpload ID="FuUserImage" runat="server" CssClass="form_control" ToolTip="User Image" onchange="imagePriview(this);"/>                       
                        </div>

                        <div>
                            <asp:TextBox ID="txtPassword" runat="server" Cssclass="form-control" placeholder="Enter Password" 
                                ToolTip="Password" TextMode="Password" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Mobile No. is required"
                                ControlToValidate="txtPassword"
                               ForeColor="Red" Display="Dynamic" setFocusOnError="true"></asp:RequiredFieldValidator>
                          
                        </div>

                    </div>
                </div>

                <div class="row pl-4">
                    <div class="btn_box">
                        <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn_success rounded-pill pl-4 pr-4 text-white"/>

                        <asp:Label ID="lblAlreadyUser" runat="server"  CssClass="pl-3 text-black-100"
                            Text="Already registered? <a href='Login.aspx' class='badge badge-info'>Login here..</a>"></asp:Label>
                    </div>
                </div>
                <div class="row p-5">
                    <div style="align-items:center">
                        <asp:Image ID="ImgUser" runat="server" CssClass="img-thumbnail"/>
                    </div>
                </div>

            </div>

        </div>



    </selection>


</asp:Content>
