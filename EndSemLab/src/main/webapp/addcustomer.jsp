<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customer Management</title>
    <link type="text/css" rel="stylesheet" href="css/style.css">
</head>

<body>
    <div class="navigation-buttons">
        <button onclick="location.href='/'">Add Customer</button>
        <button onclick="location.href='#'">View Customers</button>
    </div>

    <h3>Add Customer</h3>

    <c:if test="${not empty message}">
        <div class="success-message">${message}</div>
    </c:if>

    <div class="form-container">
        <form:form modelAttribute="customer" method="post" action="insertcustomer">
            <table>
                <tr>
                    <td><label for="id">Customer ID</label></td>
                    <td>
                        <form:input path="id" id="id" required="required"/>
                    </td>
                </tr>
                <tr>
                    <td><label for="name">Name</label></td>
                    <td>
                        <form:input path="name" id="name" required="required"/>
                    </td>
                </tr>
                <tr>
                    <td><label for="email">Email</label></td>
                    <td>
                        <form:input path="email" id="email" type="email" required="required"/>
                    </td>
                </tr>
                <tr>
                    <td><label for="phone">Phone</label></td>
                    <td>
                        <form:input path="phone" id="phone" type="tel" required="required"/>
                    </td>
                </tr>
                <tr>
                    <td><label for="address">Address</label></td>
                    <td>
                        <form:input path="address" id="address" required="required"/>
                    </td>
                </tr>
                <tr>
                    <td><label for="dateOfBirth">Date of Birth</label></td>
                    <td>
                        <form:input path="dateOfBirth" id="dateOfBirth" type="date" required="required"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Add Customer"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form:form>
    </div>
</body>
</html>
