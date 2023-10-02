<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="JobPortalX.Signup" EnableEventValidation="false" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container">
            <div class="forms">
                <div class="form login">
                    <span class="title">Registration</span>
                    <form action="#">
                        <div class="input-field">
                            <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Enter your name"></asp:TextBox>
                            <i class="uil uil-envelope icon"></i>
                        </div>
                        <div class="input-field">
                            <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Enter your email"></asp:TextBox>
                            <i class="uil uil-envelope icon"></i>
                        </div>
                        <div class="input-field">

                            <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Enter your password" TextMode="Password"></asp:TextBox>
                            <i class="uil uil-lock icon"></i>
                            <i class="uil uil-eye-slash showHidePw"></i>
                        </div>
                        <div class="checkbox-text">
                            <div class="checkbox-content">
                                <input type="checkbox" id="logCheck">
                                <label for="logCheck" class="text">Remember me</label>
                            </div>

                            <a href="#" class="text">Forgot password?</a>
                        </div>
                        <div class="input-field button">
                            <asp:Button ID="Button1" runat="server" Text="Signup" OnClick="Button1_Click" />
                            <!-- Sign Up Button -->
                        </div>


                    </form>
                    <div class="login-signup">
                        <span class="text">Already have an account? 
                       
                            <a href="login.aspx" class="text signup-link">Login</a>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </section>


</asp:Content>

