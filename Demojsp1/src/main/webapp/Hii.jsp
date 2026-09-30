<html>
<body>

<h2>My First JSP Program</h2>

<%
    String name = "Ashish Mishra";
    int a = 10;
    int b = 50;
    int sum = a + b;
%>

<p>Hello, <%= name %></p>
<p>Sum = <%= sum %></p>

</body>
</html>