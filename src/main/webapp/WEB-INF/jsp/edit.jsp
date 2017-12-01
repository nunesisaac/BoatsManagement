<!DOCTYPE html>
<html>
<head>
    <title>Boats Management Web Application</title>
</head>
    <body>
        <form method="post" action="/save">
            ID :<br>
            <input type="text" name="id" value="${lists.id}" >
            <br>
            Name boat :<br>
            <input type="text" name="name" value="${lists.name}">
            <br>
            Registration Number :<br>
            <input type="text" name="registration_number" value="${lists.registration_number}">
            <br>
            Type :<br>
            <input type="text" name="type" value="${lists.type}">
            <br><br>
            <input type="submit" value="Save">
        </form>
    </body>
</html>


