<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <h1 class="mb-2 bread">Contact Us</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Contact <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section ftco-no-pt ftco-no-pb contact-section">
			<div class="container">
				<div class="row d-flex align-items-stretch no-gutters">
					<div class="col-md-6 p-4 p-md-5 order-md-last bg-light">
              <div class="form-group">
                  <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Enter Your Name" runat="server"></asp:TextBox>
              </div>
              <div class="form-group">
                <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="Enter Your Email" TextMode="Email" runat="server"></asp:TextBox>
              </div>
              <div class="form-group">
                <asp:TextBox ID="TextBox3" CssClass="form-control" placeholder="Enter Your Subject" runat="server"></asp:TextBox>
              </div>
              <div class="form-group">
                <asp:TextBox ID="TextBox4" CssClass="form-control" placeholder="Enter Your Message" TextMode="MultiLine" runat="server"></asp:TextBox>
              </div>
              <div class="form-group">
                
                  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send Message" CssClass="btn btn-primary py-3 px-5" />
              </div>
					</div>
					<div class="col-md-6 d-flex align-items-stretch">
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d889.6691416653674!2d80.94772982920293!3d26.882015195130755!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMjbCsDUyJzU1LjMiTiA4MMKwNTYnNTMuOCJF!5e0!3m2!1sen!2sin!4v1554454543265!5m2!1sen!2sin" width="100%" height="500" frameborder="0" style="border:0" allowfullscreen></iframe>
					</div>
				</div>
			</div>
		</section>
		
		<section class="ftco-section contact-section">
      <div class="container">
        <div class="row d-flex mb-5 contact-info">
          <div class="col-md-12 mb-4">
            <h2 class="h4">Contact Information</h2>
          </div>
          <div class="w-100"></div>
          <div class="col-md-3 d-flex">
          	<div class="bg-light d-flex align-self-stretch box p-4">
	            <p><span>Address:</span> Near - Navelty Cinema, Kapoorthala, Aliganj, Lucknow</p>
	          </div>
          </div>
          <div class="col-md-3 d-flex">
          	<div class="bg-light d-flex align-self-stretch box p-4">
	            <p><span>Phone:</span> <a href="tel://1234567920">+91 9876543210</a></p>
	          </div>
          </div>
          <div class="col-md-3 d-flex">
          	<div class="bg-light d-flex align-self-stretch box p-4">
	            <p><span>Email:</span> <a href="mailto:info@yoursite.com">patientsbridge@email.com</a></p>
	          </div>
          </div>
          <div class="col-md-3 d-flex">
          	<div class="bg-light d-flex align-self-stretch box p-4">
	            <p><span>Website</span> <a href="#">www.patientsbridge.com</a></p>
	          </div>
          </div>
        </div>
      </div>
    </section>


</asp:Content>

