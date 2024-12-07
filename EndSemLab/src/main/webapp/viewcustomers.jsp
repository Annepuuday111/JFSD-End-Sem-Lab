<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>View Customers</title>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    
</head>

<body>
    <div class="navigation-buttons">
        <button onclick="location.href='/'">Add Customer</button>
        <button onclick="location.href='/viewcustomers'">View Customers</button>
    </div>

    <h3>Customer List</h3>

    <div class="table-container">
        <c:if test="${not empty customers}">
            <table>
                <thead>
                    <tr>
                        <th>Customer ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Address</th>
                        <th>Date of Birth</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="customer" items="${customers}">
                        <tr>
                            <td>${customer.id}</td>
                            <td>${customer.name}</td>
                            <td>${customer.email}</td>
                            <td>${customer.phone}</td>
                            <td>${customer.address}</td>
                            <td>${customer.dateOfBirth}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>

        <c:if test="${empty customers}">
            <div class="no-data">No customers found.</div>
        </c:if>
    </div>
</body>
</html>
