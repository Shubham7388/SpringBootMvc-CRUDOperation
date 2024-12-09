<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    
    
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
        
        .content {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 80vh;
        }

        .button-link {
            display: inline-block;
            background-color: #8b4513; /* Saddle Brown */
            color: #fff;
            text-decoration: none;
            padding: 15px 30px;
            margin: 15px 0;
            border-radius: 8px;
            font-size: 1.2rem;
            font-weight: bold;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s ease;
        }

        .button-link:hover {
            background-color: #6b8e23; /* Olive Drab */
        }
    </style>
<body>
    <header>
        Welcome to Employee Dashboard
    </header>
    <div class="content">
        <a href="report" class="button-link">Employee Report</a>
    </div>
</body>
</body>