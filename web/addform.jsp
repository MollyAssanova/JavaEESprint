<form action="/add-task" method="post">
    <div class="row">
        <div class="col-12">
            <label>Name : </label>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <input type="text" class="form-control" name="task_name">
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <label>Description: </label>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <input type="text" class="form-control" name="task_description">
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <label>Deadline Date : </label>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <input type="date-time" class="form-control" name="task_deadlineDate">
        </div>
    </div>

    <div class="row mt-3">
        <div class="col-12">
            <button class="btn btn-secondary">ADD TASK</button>
        </div>
    </div>
</form>