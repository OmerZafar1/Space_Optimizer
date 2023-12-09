<%@ Page Title="" Language="VB" MasterPageFile="~/Master_pages/Main.master" AutoEventWireup="false" CodeFile="AddShapes.aspx.vb" Inherits="Pages_AddShapes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="container mb-5">
      <div class="row justify-content-center contact gap-5 gap-lg-0">
        <div
          class="col-8 col-md-6 pt-5 d-flex flex-column align-items-center position-relative shadow mt-5 h-custom"
        >
          <h4 class="font-light mb-4 underline">Setup Shapes</h4>
          <form class="d-flex flex-column align-items-center">
            <div class="d-flex align-items-center gap-4">
              <label for="">Type </label>
              <input type="text" class="rounded-4 border py-2 px-5 my-2" />
            </div>
            <div class="d-flex align-items-center gap-4">
              <label for="">Lenght </label>
              <input type="text" class="rounded-4 border py-2 px-5 my-2" />
            </div>
            <div class="d-flex align-items-center gap-4">
              <label for="">Breath </label>
              <input type="text" class="rounded-4 border py-2 px-5 my-2" />
            </div>
            <div class="d-flex align-items-center gap-4">
              <label for="">Radius </label>
              <input type="text" class="rounded-4 border py-2 px-5 my-2" />
            </div>

            <button
              class="btn btn-sm btn-yellow rounded-4 fw-semibold py-2 px-5 my-2"
            >
              Submit
            </button>
          </form>
        </div>
      </div>
    </section>
</asp:Content>

