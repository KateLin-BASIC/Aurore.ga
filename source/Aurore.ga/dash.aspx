﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="dash.aspx.vb" Inherits="Aurore.ga.dash" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta content="width=device-width, initial-scale=1, shrink-to-fit=no" name="viewport"/>

	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet"/>
    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>

    <link href="https://cdn.datatables.net/1.10.22/css/dataTables.bootstrap4.min.css" rel="stylesheet" />
    <script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.22/js/dataTables.bootstrap4.min.js"></script>

    <script>
        jQuery(function ($) {
            $('#<%=Table1.ClientID%>').DataTable({
                "pageLength": 5,
                lengthChange: false,
                searching: false,
                ordering: false,
                info: false,
                paging: true
            });
        });
    </script>

    <title>Aurore.ga - 관리자 패널</title>
</head>
<body>
    <form id="form1" runat="server" class="form-settings" visible="false">
        <h1 class="h3 mb-1 font-weight-normal text-center">Aurore.ga 관리패널</h1>
        <asp:Table ID="Table1" runat="server" GridLines="Both" CssClass="table table-bordered text-center" Width="100%">
            <asp:TableHeaderRow ID="TableRow1" runat="server" TableSection="TableHeader">
                <asp:TableCell>ID</asp:TableCell>
                <asp:TableCell>URL</asp:TableCell>
                <asp:TableCell>Shorted</asp:TableCell>
            </asp:TableHeaderRow>
        </asp:Table>
        
        <br />

        <p class="mb-1">URL 제거</p>
        <div class="input-group mb-3">
            <input type="text" class="form-control" id="txtID" runat="server" autocomplete="off" placeholder="제거할 URL의 아이디"/>
            <div class="input-group-append">
                <button class="btn btn-danger" id="btnDelete" runat="server" type="button">제거</button>
            </div>
        </div>

        <hr />

        <button class="btn btn-lg btn-danger btn-block" id="btnLogout" runat="server">로그아웃</button>
    </form>

    <style>
        html,
        body {
          height: 100%;
          font-family: 'Noto Sans KR', sans-serif;
        }

        body {
          display: -ms-flexbox;
          display: -webkit-box;
          display: flex;
          -ms-flex-align: center;
          -ms-flex-pack: center;
          -webkit-box-align: center;
          align-items: center;
          -webkit-box-pack: center;
          justify-content: center;
          padding-top: 40px;
          padding-bottom: 40px;
          background-color: #f5f5f5;
        }

        .form-settings {
          width: 100%;
          max-width: 500px;
          padding: 15px;
          margin: 0 auto;
        }
    </style>
</body>
</html>