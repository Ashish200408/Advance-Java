<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <title>Registration Result</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        .container {
            width: 450px;
            margin: 70px auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px #aaa;
        }

        h2 {
            text-align: center;
        }

        .success {
            background-color: #d4edda;
            padding: 15px;
            border-radius: 5px;
        }

        .error {
            background-color: #f8d7da;
            padding: 15px;
            border-radius: 5px;
        }

        p {
            font-size: 16px;
        }

        .back {
            display: block;
            text-align: center;
            margin-top: 20px;
        }
    </style>

</head>

<body>

<div class="container">

    <c:choose>

        <c:when test="${not empty error}">

            <h2>Registration Failed</h2>

            <div class="error">
                <p>${error}</p>
            </div>

        </c:when>

        <c:otherwise>

            <h2>Registration Successful</h2>

            <div class="success">

                <p>
                    <strong>Name:</strong>
                    ${name}
                </p>

                <p>
                    <strong>Email:</strong>
                    ${email}
                </p>

                <p>
                    <strong>Course:</strong>
                    ${course}
                </p>

            </div>

        </c:otherwise>

    </c:choose>

    <a class="back" href="index.jsp">
        Back to Registration
    </a>

</div>

</body>
</html>