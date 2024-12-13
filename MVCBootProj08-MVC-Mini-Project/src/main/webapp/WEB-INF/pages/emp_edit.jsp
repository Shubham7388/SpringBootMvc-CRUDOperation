<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>



<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Georgia', serif;
        background-color: #f9f5f0;
        color: #333;
    }

    header {
        background-color: #4b5320; /* Olive green */
        color: #fff;
        padding: 20px;
        text-align: center;
        font-size: 1.8rem;
        font-weight: bold;
        border-bottom: 4px solid #8b0000; /* Dark red */
    }

    h1 {
        text-align: center;
        color: #4b5320;
        margin-top: 20px;
    }

    table {
        margin: 20px auto;
        border-collapse: collapse;
        width: 50%;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        padding: 20px;
    }

    td {
        padding: 10px;
        font-size: 1rem;
        color: #333;
    }

    frm\:input, frm\:select, input {
        width: 100%;
        padding: 8px;
        font-size: 1rem;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    frm\:input:focus, frm\:select:focus, input:focus {
        outline: none;
        border-color: #4b5320;
    }

    input[type="submit"], input[type="reset"] {
        background-color: #8b4513; /* Saddle Brown */
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 8px;
        font-size: 1rem;
        font-weight: bold;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover, input[type="reset"]:hover {
        background-color: #6b8e23; /* Olive Drab */
    }

    a img {
        display: block;
        margin: 20px auto;
        transition: transform 0.3s ease;
    }

    a img:hover {
        transform: scale(1.1);
    }
}

</style>
<body>
    <header>
        Employee Edit Form
    </header>
    <frm:form modelAttribute="emply">
        <h1>Update Employee</h1>
        <table>
                    <tr>
                <td><label for="ename">Employee Number</label></td>
                <td><frm:input path="empno" readonly="true" /></td>
            </tr>
            <tr>
                <td><label for="ename">Employee Name</label></td>
                <td><frm:input path="ename" /></td>
            </tr>
            <tr>
                <td><label for="job">Employee Job</label></td>
                <td><frm:input path="job"/></td>
            </tr>
            <tr>
                <td><label for="sal">Employee Salary</label></td>
                <td><frm:input path="sal"/></td>
            </tr>
            <tr>
                <td><label for="deptno">Dept No.</label></td>
                <td>
                    <frm:select path="deptno" >
                        <frm:option value="10">10</frm:option>
                        <frm:option value="20">20</frm:option>
                        <frm:option value="30">30</frm:option>
                    </frm:select>
                </td>
            </tr>
            <tr>
                <td><input type="submit" value="Update" /></td>
                <td><input type="reset" value="Clear" /></td>
            </tr>
        </table>
    </frm:form>
    <a href="report">
        <img src="images/back.png" alt="Back" height="40" width="30" />
    </a>
</body>