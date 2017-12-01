<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Boats Management Web Application</title>
        <style>
            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            td, th {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even) {
                background-color: #dddddd;
            }
        </style>
    </head>
<body>
    <form method="post" action="/save">
        <input type="hidden" name="id" value=""/>
        Name boat :<br>
        <input type="text" name="name">
        <br>
        Registration Number :<br>
        <input type="text" name="registration_number" >
        <br>
        Type :<br>
        <input type="text" name="type" >
        <br><br>
        <input type="submit" value="Add">
        <br><br>
    </form>
    <hr/>
    <br>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Registration Number</th>
            <th>Type</th>
            <th>Action</th>
        </tr>
        <c:forEach var = "list" items = "${lists}">
        <tr>
            <td>${list.id}</td>
            <td>${list.name}</td>
            <td>${list.registration_number}</td>
            <td>${list.type}</td>
            <td>
                <a href="/delete/${list.id}">Delete</a>
                <a href="/edit/${list.id}">Edit</a>
            </td>
        </tr>
        </c:forEach>
    </table>
</body>
</html>


