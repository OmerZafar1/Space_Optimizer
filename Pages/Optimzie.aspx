<%@ Page Title="" Language="VB" MasterPageFile="~/Master_pages/Main.master" AutoEventWireup="false" CodeFile="Optimzie.aspx.vb" Inherits="Pages_Optimzie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .m-img-size {
      width: 100%;
      height: 90vh;
      background-image: url("../images/Rectangle3.png");
      background-position: center;
      background-size: cover;
      background-repeat: no-repeat;
    }
    .img-size {
      height: 200px;
    }
    @media (min-width: 1024px) {
      .img-size {
        height: 250px;
      }
    }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section>
      <div class="d-flex flex-column align-items-center gap-5 my-5">
        <div
          id="menu"
          class="border d-flex flex-column align-items-center gap-4 custom-width rounded-5 py-5 shadow-sm bg-yellow"
        >
          <h3>Optimize Solution</h3>
          <div class="dropdown">
            <button
              class="btn border rounded-4 shadow-sm dropdown-toggle w-400 bg-white"
              type="button"
              data-bs-toggle="dropdown"
              aria-expanded="false"
            >
              Container
            </button>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">Small</a></li>
              <li><a class="dropdown-item" href="#">Medium</a></li>
              <li><a class="dropdown-item" href="#">Large</a></li>
            </ul>
          </div>
          <div class="dropdown">
            <button
              class="btn border rounded-4 shadow-sm dropdown-toggle w-400 bg-white"
              type="button"
              data-bs-toggle="dropdown"
              aria-expanded="false"
            >
              Shape
            </button>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">Circle</a></li>
              <li><a class="dropdown-item" href="#">Rectangle</a></li>
              <li><a class="dropdown-item" href="#">Square</a></li>
            </ul>
          </div>
          <button class="btn btn-yellow w-110 p-1">Run</button>
        </div>
      </div>
    </section>
</asp:Content>

