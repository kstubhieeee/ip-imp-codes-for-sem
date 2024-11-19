<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Arithmetic Operations</title>
</head>
<body>
    <h1>Arithmetic Operations</h1>

    <!-- HTML Form to input numbers and select an operation -->
    <form method="post">
        <label for="num1">Enter First Number:</label>
        <input type="number" name="num1" id="num1" required>
        <br><br>

        <label for="num2">Enter Second Number:</label>
        <input type="number" name="num2" id="num2" required>
        <br><br>

        <label for="operation">Choose Operation:</label>
        <select name="operation" id="operation" required>
            <option value="add">Addition</option>
            <option value="subtract">Subtraction</option>
            <option value="multiply">Multiplication</option>
            <option value="divide">Division</option>
        </select>
        <br><br>

        <button type="submit">Calculate</button>
    </form>

    <hr>

    <%-- JSP Code to Handle the Form Submission and Perform Operations --%>
    <%
        // Check if the form is submitted
        String num1Str = request.getParameter("num1");
        String num2Str = request.getParameter("num2");
        String operation = request.getParameter("operation");

        if (num1Str != null && num2Str != null && operation != null) {
            // Parse the numbers
            double num1 = Double.parseDouble(num1Str);
            double num2 = Double.parseDouble(num2Str);
            double result = 0.0;
            String operationName = "";

            // Perform the selected operation
            switch (operation) {
                case "add":
                    result = num1 + num2;
                    operationName = "Addition";
                    break;
                case "subtract":
                    result = num1 - num2;
                    operationName = "Subtraction";
                    break;
                case "multiply":
                    result = num1 * num2;
                    operationName = "Multiplication";
                    break;
                case "divide":
                    if (num2 != 0) {
                        result = num1 / num2;
                        operationName = "Division";
                    } else {
                        out.println("<p style='color:red;'>Error: Division by zero is not allowed!</p>");
                        return;
                    }
                    break;
            }

            // Display the result
            out.println("<h3>Result of " + operationName + ":</h3>");
            out.println("<p>" + num1 + " and " + num2 + " = " + result + "</p>");
        }
    %>
</body>
</html>
