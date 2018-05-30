$(document).ready(function(){
    $("#b01").click(function(){
        htmlObj = $.ajax({url:"http://www.baidu.com" , async: false})
        $("#myDiv").text(htmlObj.responseText);
    });
});