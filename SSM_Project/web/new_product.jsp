<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="thupnm" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SSM - New Product</title>
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>

        <link href="admin_page/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

        <link href="admin_page/css/dataTables.bootstrap.min.css" rel="stylesheet"/>
        <link href="admin_page/css/paper-dashboard.css" rel="stylesheet"/>
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
        <link href="admin_page/css/themify-icons.css" rel="stylesheet">

        <script src="https://cdn.ckeditor.com/ckeditor5/10.0.1/classic/ckeditor.js"></script>
        <style>
            .ck.ck-content.ck-editor__editable.ck-rounded-corners.ck-blurred.ck-editor__editable_inline{
                height: 30vw !important;
            }
        </style>
    </head>
    <body>
        <div class="wrapper">
            <!-- menu -->
            <%@include file="layout/admin--menu.jsp" %>
            <!-- end menu --> 
            <div class="main-panel">
                <!-- sub menu top -->
                <nav class="navbar navbar-default">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle">
                                <span class="icon-bar bar1"></span>
                                <span class="icon-bar bar2"></span>
                                <span class="icon-bar bar3"></span>
                            </button>
                            <a class="navbar-brand" href="#"> Add New Product</a>
                        </div>
                        <%@include file="layout/product_header.jsp" %>
                    </div>
                </nav>
                <!-- end sub menu top -->
                <div class="content">
                    <div class="container-fluid">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Create Product</h4>
                            </div>

                            <form id="form--new--product" method="POST" action="AddProductController" enctype="multipart/form-data">
                                <div class="row col-md-offset-1 col-md-10">
                                    <div class="form-group">
                                        <label>Name Of Product</label>
                                        <input type="text" name="productName" class="form-control border-input" id="p--name">
                                    </div>
                                    <span id="error--name"></span>
                                </div>
                                <div class="row col-md-offset-1 col-md-10-">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Category</label>
                                            <select class="form-control border-input" name="categoryName">
                                                <thupnm:forEach var="list" items="${listCategory}">
                                                    <option value="${list.categoryName}">${list.categoryName}</option>
                                                </thupnm:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Manufacturer</label>
                                            <input type="text" name="manufacturer" class="form-control border-input" id="p--manufacturer">
                                        </div>
                                        <span id="error--manufacturer"></span>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label>Price</label>
                                            <input type="text" name="price" class="form-control border-input" id="p--price">
                                        </div>
                                        <span id="error--price"></span>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label>Quantity</label>
                                            <input type="text" name="quantity" class="form-control border-input" id="p--quantity">
                                        </div>
                                        <span id="error--quantity"></span>
                                    </div>
                                </div>
                                <div class="row col-md-offset-1 col-md-10-">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Date Of Manufacture</label>
                                            <input type="date" name="manuDate" class="form-control border-input" id="p--date--manufacture">
                                        </div>
                                        <span id="error--date--manufacture"></span>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Expiration Date</label>
                                            <input type="date" name="expiredDate" class="form-control border-input" id="p--date--expiration">
                                        </div>
                                        <span id="error--date--expiration"></span>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label>Picture</label>  
                                                <input type="file" name="picture" class="form-control" id="p--pic">
                                        </div>
                                        <span id="error--pic"></span>
                                    </div>
                                </div>

                                <div class="row col-md-offset-1 col-md-10">
                                    <div style="height: auto;" class="col-md-11">
                                        <textarea name="editor1" id="editor"></textarea>
                                        <script>
                                            ClassicEditor
                                                    .create(document.querySelector('#editor'))
                                                    .catch(error => {
                                                        console.error(error);
                                                    });
                                        </script>	
                                        <span id="error--editor"></span>
                                    </div>
                                </div>
                                <div class="text-center" style="padding-bottom: 2%;">
                                    <button type="submit" class="btn btn-warning btn-fill btn-wd">Create Product</button>
                                </div>
                                <div class="clearfix"></div>
                                <strong><font color="red">${requestScope.RESULT}</font></strong>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="layout/admin--script.jsp" %>
    </body>
</html>
