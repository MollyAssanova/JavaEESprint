package kz.bitlab.techorda.db;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.techorda.db.Task;

import java.io.IOException;

@WebServlet(value = "/add-task")
public class AddTaskServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name= request.getParameter("task_name");
        String description= request.getParameter("task_description");
        String deadlineDate= request.getParameter("task_deadlineDate");


        Task task=new Task();
        task.setName(name);
        task.setDescription(description);
        task.setDeadlineDate(deadlineDate);

        DBManager.addTask(task);
        response.sendRedirect("/");
    }
}
