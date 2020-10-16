<%@tag description="Overall Page template" pageEncoding="UTF-8"%>

<%@attribute name="header" fragment="true"%>
<%@attribute name="footer" fragment="true"%>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>FastColis</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <style>
        /**** GLOBAL STYLE ****/

        /* PRIMARY CONTENT (EXCEPT FOOTER) */
        .primary-content {
            min-height: 100vh !important;
        }

        /* HEADER */
        .header {

        }

        /* BODY */
        .body {
            overflow: scroll;
            overflow-x: hidden;
        }

        ::-webkit-scrollbar {
            width: 0;  /* Remove scrollbar space */
            background: transparent;  /* Optional: just make scrollbar invisible */
        }

        /* FOOTER */
        .footer {

        }

        /* ACTION BUTTON */
        .action-btn {
            position: fixed;
            bottom: 30px;
            right: 30px;
            width: 50px;
            height: 50px;
            border-radius: 50%;

            display: flex;
            justify-content: center;
            align-items: center;
            color: whitesmoke;
            font-size: 30px;
            font-weight: bold;

            animation: pulse 2s infinite;
        }

        .action-btn:hover {
            animation: none;
        }

        @-webkit-keyframes pulse {
            0% {
                -webkit-box-shadow: 0 0 0 0 rgba(204,169,44, 0.4);
            }
            70% {
                -webkit-box-shadow: 0 0 0 10px rgba(204,169,44, 0);
            }
            100% {
                -webkit-box-shadow: 0 0 0 0 rgba(204,169,44, 0);
            }
        }
        @keyframes pulse {
            0% {
                -moz-box-shadow: 0 0 0 0 rgba(204,169,44, 0.4);
                box-shadow: 0 0 0 0 rgba(204,169,44, 0.4);
            }
            70% {
                -moz-box-shadow: 0 0 0 10px rgba(204,169,44, 0);
                box-shadow: 0 0 0 10px rgba(204,169,44, 0);
            }
            100% {
                -moz-box-shadow: 0 0 0 0 rgba(204,169,44, 0);
                box-shadow: 0 0 0 0 rgba(204,169,44, 0);
            }
        }

        .pen_submit {
            margin-left: 10px;
            font-size: 30px;
            border: none;
            background: none;
        }
        .pen_submit:focus {
            outline: none;
        }
    </style>

    <!-- TO USE JQUERY ANYWHERE IN THE BODY -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
</head>
<body class="m-0 p-0">
    <div class="primary-content">
        <!-- Header -->
        <jsp:invoke fragment="header"/>

        <!-- Body -->
        <div class="body">
            <jsp:doBody/>
        </div>
    </div>

    <!-- Footer -->
    <jsp:invoke fragment="footer"/>

    <!-- Links -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>