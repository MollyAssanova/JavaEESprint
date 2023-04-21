<%@ page import="kz.bitlab.techorda.db.Task" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp"%>


    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<body>
<%@include file="navbar.jsp"%>

<center>

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <center><img src="https://s.dou.ua/storage-files/z-1_NrMe0o2.png" style="width:700px"></center>
            </div>

            <div class="item">
                <center><img src="https://happymonday.ua/wp-content/uploads/2020/05/testovoe-zadanie-940x528.jpg" style="width:700px" >
                </center>
            </div>

        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

</center>

<div class="container mt-3">
    <div class="row">
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <button type="button" class="btn btn-secondary btn-sm" data-bs-toggle="modal" data-bs-target="#addTask">
                + Добавить Задания
            </button>

            <div class="modal fade" id="addTask" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="staticBackdropLabel">Modal title</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>

                        <div class="modal-body">
                            <%@include file="addform.jsp"%>
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Наименование</th>
                    <th>Описание</th>
                    <th style="width: 10%;">Детали</th>
                </tr>
                </thead>
                <tbody>
                <%
                    ArrayList<Task> tasks = (ArrayList<Task>) request.getAttribute("tasks");
                    if(tasks!=null){
                        for(Task task : tasks){
                %>
                <tr>
                    <td><%=task.getId()%></td>
                    <td><%=task.getName()%></td>
                    <td><%=task.getDescription()%></td>
                    <td>
                        <a class="btn btn-success btn-sm" href="/details?task_id=<%=task.getId()%>">DETAILS</a>
                    </td>
                </tr>
                <%
                        }
                    }
                %>
                </tbody>
            </table>
        </div>
    </div>
</div>
<br><br>
<div class="container my-5">
    <!-- Footer -->
    <footer
            class="text-center text-lg-start text-white"
            style="background-color: #3e4551"
    >
        <!-- Grid container -->
        <div class="container p-4 pb-0">
            <!-- Section: Links -->

            <!-- Section: Links -->

            <hr class="mb-4" />

            <!-- Section: CTA -->
            <section class="">
                <p class="d-flex justify-content-center align-items-center">
                    <span class="me-3">Sprint Task</span>
                    <button type="button" class="btn btn-outline-light btn-rounded">
                        JavaEE
                    </button>
                </p>
            </section>
            <!-- Section: CTA -->

            <hr class="mb-4" />

            <!-- Section: Social media -->
            <section class="mb-4 text-center">
                <!-- Facebook -->
                <a
                        class="btn btn-outline-light btn-floating m-1"
                        href="#!"
                        role="button"
                ><i class="fab fa-facebook-f"></i
                ></a>

                <!-- Twitter -->
                <a
                        class="btn btn-outline-light btn-floating m-1"
                        href="#!"
                        role="button"
                ><i class="fab fa-twitter"></i
                ></a>

                <!-- Google -->
                <a
                        class="btn btn-outline-light btn-floating m-1"
                        href="#!"
                        role="button"
                ><i class="fab fa-google"></i
                ></a>

                <!-- Instagram -->
                <a
                        class="btn btn-outline-light btn-floating m-1"
                        href="#!"
                        role="button"
                ><i class="fab fa-instagram"></i
                ></a>

                <!-- Linkedin -->
                <a
                        class="btn btn-outline-light btn-floating m-1"
                        href="#!"
                        role="button"
                ><i class="fab fa-linkedin-in"></i
                ></a>

                <!-- Github -->
                <a
                        class="btn btn-outline-light btn-floating m-1"
                        href="#!"
                        role="button"
                ><i class="fab fa-github"></i
                ></a>
            </section>
            <!-- Section: Social media -->
        </div>


        <div
                class="text-center p-3"
                style="background-color: rgba(0, 0, 0, 0.2)"
        >
            © 2020 Copyright:
            <a class="text-white" href="https://mdbootstrap.com/"
            >Bitlab</a
            >
        </div>
    </footer>
</div>

</body>
</html>
