<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Registration</title>

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

        .registration-box {
            width: 430px;
            background-color: #ffffff;
            padding: 35px 40px;
            border-radius: 18px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
        }

        .registration-box h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 8px;
        }

        .subtitle {
            text-align: center;
            color: #777;
            font-size: 14px;
            margin-bottom: 25px;
        }

        .form-group {
            margin-bottom: 18px;
        }

        .form-group label {
            display: block;
            margin-bottom: 7px;
            color: #34495e;
            font-weight: 600;
            font-size: 14px;
        }

        .form-group input,
        .form-group select {
            width: 100%;
            padding: 12px 14px;
            border: 1px solid #d5dbe0;
            border-radius: 8px;
            font-size: 14px;
            outline: none;
            background-color: #f8f9fa;
            transition: 0.3s;
        }

        .form-group input:focus,
        .form-group select:focus {
            border-color: #3498db;
            background-color: white;
            box-shadow: 0 0 5px rgba(52, 152, 219, 0.3);
        }

        .register-btn {
            width: 100%;
            padding: 13px;
            margin-top: 8px;
            border: none;
            border-radius: 8px;
            background: #3498db;
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
        }

        .register-btn:hover {
            background: #217dbb;
            transform: translateY(-2px);
        }
    </style>
</head>

<body>

    <div class="registration-box">

        <h2>Student Registration</h2>
        <p class="subtitle">Enter your details to register</p>

        <form action="register" method="post">

            <div class="form-group">
                <label for="name">Student Name</label>
                <input type="text" id="name" name="name"
                       placeholder="Enter your name" required>
            </div>

            <div class="form-group">
                <label for="email">Email ID</label>
                <input type="email" id="email" name="email"
                       placeholder="Enter your email" required>
            </div>

            <div class="form-group">
                <label for="course">Course</label>
                <select id="course" name="course" required>
                    <option value="">-- Select Course --</option>
                    <option value="B.Tech CSE">B.Tech CSE</option>
                    <option value="B.Tech ECE">B.Tech ECE</option>
                    <option value="B.Tech EEE">B.Tech EEE</option>
                    <option value="B.Tech ISE">B.Tech ISE</option>
                    <option value="B.Tech ME">B.Tech ME</option>
                    <option value="BCA">BCA</option>
                    <option value="MCA">MCA</option>
                </select>
            </div>

            <button type="submit" class="register-btn">
                Register Student
            </button>

        </form>

    </div>

</body>
</html>