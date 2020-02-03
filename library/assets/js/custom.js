/*
Name:           Fatima Velic
Course:         CS412 Web application development
Assignment:     Little Library Management System
Due date:       January 10th, 2020 - final version
last modified:  January 7th, 2020
Purpuse:        JS script with customised functions required.
*/

(function ($) {
    "use strict";
    var mainApp = {
        slide_fun: function () {

            $('#carousel-example').carousel({
                interval:3000 // THIS TIME IS IN MILLI SECONDS
            })

        },
        dataTable_fun: function () {

            $('#dataTables-example').dataTable();

        },
    }
   
   
    $(document).ready(function () {
        mainApp.slide_fun();
        mainApp.dataTable_fun();
        mainApp.custom_fun();
    });
}(jQuery));


