package kz.bitlab.techorda.db;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.techorda.db.Task;

import java.io.IOException;

@WebServlet(value = "/save-task")
public class SaveTaskServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("task_id"));
        String name = request.getParameter("task_name");
        String description = request.getParameter("task_description");

        Task task=DBManager.getTask(id);
        if (task!=null){
            task.setName(name);
            task.setDescription(description);

            DBManager.updateTask(task);

            response.sendRedirect("/details?task_id="+id);
        }
        else {
            response.sendRedirect("/");
        }

    }
}
