<%@ page import="model.Footballer" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="db.DBManager" %><%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 19.01.2022
  Time: 14:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <style>
        h2{
            color:red;
        }
        h3{
            color:blue;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-lg-5 m-auto">
            <form action="/main" method="post">
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="col-form-label">NAME:</label>
                    <input type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">

                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">SURNAME:</label>
                    <input type="text"  name="surname" class="form-control" id="exampleInputPassword1">
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">CLUB:</label>
                    <select name="club">
                        <option value="bayern">FC BAYERN MUNICH</option>
                        <option value="real">FC REAL MADRID</option>
                        <option value="barcelona">FC BARCELONA</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">SALARY:</label>
                    <input type="number" name="salary"  class="form-control" id="exampleInputSalary">
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">PRICE</label>
                    <input type="number"  name="price" class="form-control" id="exampleInputTransferPrice">
                </div>
                <button type="submit" class="btn btn-primary">ADD FOOTBALLER</button>
            </form>
        </div>
    </div>
    <div class="row">
        <%
            List<Footballer> allFootballers=new ArrayList<>();
            allFootballers= DBManager.footballers;
            for(Footballer f : allFootballers){
                out.println("<h2>"+f.getName()+" "+f.getSurname()+"</h2>");
                out.println("<h3>Club:"+f.getClub()+"</h3>");
                out.println("<h3>Salary:"+f.getSalary()+"</h3>");
                out.println("<h3>Transfer price:"+f.getTransferPrice()+"</h3>");

            }
        %>
    </div>
</div>
</body>
</html>
