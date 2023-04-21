<%@ page import="kz.bitlab.techorda.db.Task" %>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="container mt-5 pb-5">
    <%
        Task task = (Task) request.getAttribute("task");
        if(task!=null){
    %>
    <div class="row">
        <div class="col-6 mx-auto">
            <div class="row">
                <div class="col-12">
                    <label>NAME : </label>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-12">
                    <input type="text" class="form-control" readonly value="<%=task.getName()%>">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-12">
                    <label>Description: </label>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-12">
                    <input type="text" class="form-control" readonly value="<%=task.getDescription()%>" >
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-12">
                    <button type="button" class="btn btn-secondary btn-sm" data-bs-toggle="modal" data-bs-target="#editTask">
                        Edit Task
                    </button>
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-secondary btn-sm ms-2" data-bs-toggle="modal" data-bs-target="#deleteTask">
                        Delete Task
                    </button>
                </div>
            </div>
            <!-- Modal -->
            <div class="modal fade" id="deleteTask" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="/delete-task" method="post">
                            <input type="hidden" name="id" value="<%=task.getId()%>">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5">Confirm Delete</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <h5 class="text-center">Are you sure?</h5>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">NO</button>
                                <button class="btn btn-danger">YES</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="editTask" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="staticBackdropLabel">Modal title</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form action="/save-task" method="post">
                                <input type="hidden" name="task_id" value="<%=task.getId()%>">
                                <div class="row">
                                    <div class="col-12">
                                        <label>NAME : </label>
                                    </div>
                                </div>
                                <div class="row mt-2">
                                    <div class="col-12">
                                        <input type="text" class="form-control" name="task_name" value="<%=task.getName()%>">
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-12">
                                        <label>Description : </label>
                                    </div>
                                </div>
                                <div class="row mt-2">
                                    <div class="col-12">
                                        <input type="text" class="form-control" name="task_description" value="<%=task.getDescription()%>">
                                    </div>
                                </div>


                                <div class="row mt-3">
                                    <div class="col-12">
                                        <button class="btn btn-primary">SAVE TASK</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%
    }else{
    %>
    <h3 class="text-center">
        TASK NOT FOUND
    </h3>
    <%
        }
    %>

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

</div>
</body>
</html>