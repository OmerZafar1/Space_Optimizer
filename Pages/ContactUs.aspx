<%@ Page Title="" Language="VB" MasterPageFile="~/Master_pages/Main.master" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="Pages_ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section>
        <div class="contact-container">
      <div class="left-col d-none d-md-block"></div>
      <div class="right-col">
        <h1>Contact us</h1>

        <form id="contact-form" method="post">
          <label for="name">Full name</label>
          <input
            type="text"
            id="name"
            name="name"
            placeholder="Your Full Name"
            required
          />
          <label for="email">Email Address</label>
          <input
            type="email"
            id="email"
            name="email"
            placeholder="Your Email Address"
            required
          />
          <label for="message">Message</label>
          <textarea
            rows="6"
            placeholder="Your Message"
            id="message"
            name="message"
            required
          ></textarea>
          <!--<a href="javascript:void(0)">--><button
            type="submit"
            id="submit"
            name="submit"
          >
            Send</button
          ><!--</a>-->
        </form>
        <div id="error"></div>
        <div id="success-msg"></div>
      </div>
    </div>
    </section>
</asp:Content>

