<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Registration Result</title>

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: "Segoe UI", Arial, sans-serif;
            background: linear-gradient(135deg, #74ebd5, #ACB6E5);
            min-height: 100vh;

            display: flex;
            justify-content: center;
            align-items: center;
        }

        .result-box {
            width: 450px;
            background-color: #ffffff;
            padding: 35px 40px;
            border-radius: 18px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-top: 0;
            margin-bottom: 10px;
        }

        .message {
            text-align: center;
            color: #777;
            font-size: 14px;
            margin-bottom: 25px;
        }

        .success {
            background-color: #e8f8ee;
            border-left: 5px solid #27ae60;
            padding: 18px;
            border-radius: 8px;
        }

        .error {
            background-color: #fdecea;
            border-left: 5px solid #e74c3c;
            padding: 18px;
            border-radius: 8px;
        }

        .success p,
        .error p {
            margin: 10px 0;
            font-size: 15px;
            color: #34495e;
        }

        .success strong {
            color: #2c3e50;
        }

        .back {
            display: block;
            width: 100%;
            text-align: center;
            margin-top: 25px;
            padding: 12px;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-weight: bold;
            transition: 0.3s;
        }

        .back:hover {
            background-color: #217dbb;
            transform: translateY(-2px);
        }
    </style>
</head>

<body>

    <div class="result-box">

        <c:choose>

            <c:when test="${not empty error}">

                <h2>Registration Failed</h2>

                <p class="message">
                    Please check your details and try again.
                </p>

                <div class="error">

                    <p>
                        <strong>Error:</strong>
                    </p>

                    <p>
                        ${error}
                    </p>

                </div>

            </c:when>

            <c:otherwise>

                <h2>Registration Successful</h2>

                <p class="message">
                    Your details have been submitted successfully.
                </p>

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

