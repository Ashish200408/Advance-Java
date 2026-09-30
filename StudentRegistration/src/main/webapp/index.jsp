<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Registration</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        .container {
            width: 400px;
            margin: 60px auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px #aaa;
        }

        h2 {
            text-align: center;
        }

        label {
            display: block;
            margin-top: 15px;
        }

        input, select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            box-sizing: border-box;
        }

        button {
            width: 100%;
            padding: 10px;
            margin-top: 20px;
            background-color: #333;
            color: white;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #555;
        }
    </style>
</head>

<body>

<div class="container">

    <h2>Student Registration</h2>

    <form action="register" method="post">

        <label>Student Name:</label>
        <input type="text" name="name" required>

        <label>Email ID:</label>
        <input type="email" name="email" required>

        <label>Course:</label>
        <select name="course" required>
            <option value="">Select Course</option>
            <option value="B.Tech CSE">B.Tech CSE</option>
            <option value="B.Tech ECE">B.Tech ECE</option>
            <option value="B.Tech EEE">B.Tech EEE</option>
            <option value="B.Tech ISE">B.Tech ISE</option>
            <option value="B.Tech ME">B.Tech ME</option>
            <option value="BCA">BCA</option>
            <option value="MCA">MCA</option>
        </select>

        <button type="submit">Register</button>

    </form>

</div>

</body>
</html>