<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri ="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="/resources/user/css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="/resources/user/css/fullcalendar.min.css">
    <!-- https://fullcalendar.io/ -->
    <link rel="stylesheet" href="/resources/user/css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="/resources/user/css/tooplate.css">
    
<title>Insert title here</title>
</head>
<body id="reportsPage">
    <div class="" id="home">
        <div class="container">
        
            <%@include file="include/header.jsp"%>

            <!-- row -->
            <div class="row tm-content-row tm-mt-big">
                <div class="tm-col tm-col-big">
                    <div class="bg-white tm-block h-100">
                        <h2 class="tm-block-title">Latest Hits</h2>
                        <canvas id="lineChart"></canvas>
                    </div>
                </div>
                <div class="tm-col tm-col-big">
                    <div class="bg-white tm-block h-100">
                        <h2 class="tm-block-title">Performance</h2>
                        <canvas id="barChart"></canvas>
                    </div>
                </div>
                <div class="tm-col tm-col-small">
                    <div class="bg-white tm-block h-100">
                        <canvas id="pieChart" class="chartjs-render-monitor"></canvas>
                    </div>
                </div>

                <div class="tm-col tm-col-big">
                    <div class="bg-white tm-block h-100">
                        <div class="row">
                            <div class="col-8">
                                <h2 class="tm-block-title d-inline-block">Top Product List</h2>

                            </div>
                            <div class="col-4 text-right">
                                <a href="products.html" class="tm-link-black">View All</a>
                            </div>
                        </div>
                        <ol class="tm-list-group tm-list-group-alternate-color tm-list-group-pad-big">
                            <li class="tm-list-group-item">
                                Donec eget libero
                            </li>
                            <li class="tm-list-group-item">
                                Nunc luctus suscipit elementum
                            </li>
                            <li class="tm-list-group-item">
                                Maecenas eu justo maximus
                            </li>
                            <li class="tm-list-group-item">
                                Pellentesque auctor urna nunc
                            </li>
                            <li class="tm-list-group-item">
                                Sit amet aliquam lorem efficitur
                            </li>
                            <li class="tm-list-group-item">
                                Pellentesque auctor urna nunc
                            </li>
                            <li class="tm-list-group-item">
                                Sit amet aliquam lorem efficitur
                            </li>
                        </ol>
                    </div>
                </div>
                <div class="tm-col tm-col-big">
                    <div class="bg-white tm-block h-100">
                        <h2 class="tm-block-title">Calendar</h2>
                        <div id="calendar"></div>
                        <div class="row mt-4">
                            <div class="col-12 text-right">
                                <a href="#" class="tm-link-black">View Schedules</a>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="tm-col tm-col-small">
                    <div class="bg-white tm-block h-100">
                        <h2 class="tm-block-title">Upcoming Tasks</h2>
                        <ol class="tm-list-group">
                            <li class="tm-list-group-item">List of tasks</li>
                            <li class="tm-list-group-item">Lorem ipsum doloe</li>
                            <li class="tm-list-group-item">Read reports</li>
                            <li class="tm-list-group-item">Write email</li>
                            
                            <li class="tm-list-group-item">Call customers</li>
                            <li class="tm-list-group-item">Go to meeting</li>
                            <li class="tm-list-group-item">Weekly plan</li>
                            <li class="tm-list-group-item">Ask for feedback</li>
                            
                            <li class="tm-list-group-item">Meet Supervisor</li>
                            <li class="tm-list-group-item">Company trip</li>
                        </ol>
                    </div>
                </div>
            </div>
             <%@include file="include/footer.jsp"%>
        </div>
    </div>
    <script src="/resources/user/js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="/resources/user/js/moment.min.js"></script>
    <!-- https://momentjs.com/ -->
    <script src="/resources/user/js/utils.js"></script>
    <script src="/resources/user/js/Chart.min.js"></script>
    <!-- http://www.chartjs.org/docs/latest/ -->
    <script src="/resources/user/js/fullcalendar.min.js"></script>
    <!-- https://fullcalendar.io/ -->
    <script src="/resources/user/js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script src="/resources/user/js/tooplate-scripts.js"></script>
    <script>
        let ctxLine,
            ctxBar,
            ctxPie,
            optionsLine,
            optionsBar,
            optionsPie,
            configLine,
            configBar,
            configPie,
            lineChart;
        barChart, pieChart;
        // DOM is ready
        $(function () {
            updateChartOptions();
            drawLineChart(); // Line Chart
            drawBarChart(); // Bar Chart
            drawPieChart(); // Pie Chart
            drawCalendar(); // Calendar

            $(window).resize(function () {
                updateChartOptions();
                updateLineChart();
                updateBarChart();
                reloadPage();
            });
        })
        
        $('#1').addClass('active');
    </script>
</body>
</html>