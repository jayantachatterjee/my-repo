<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.FileNotFoundException" %>
<%@ page import="java.io.FileReader" %>
<%@ page import="java.io.IOException" %>

<html>
<body>
<h2>Hello World from Jayanta welcome to Maven</h2>
<%
    int num = 5;
    out.println("Hi maven, I am from JSP <br>");
    out.println("number = " + num);

    String csvFileName = "/Users/abdnaqip1980/Desktop/mavenweb/src/main/webapp/animals.csv";
    BufferedReader bufferedReader = null;
    String line = "";
    String cvsSplitBy = ",";
    // Create a BufferedReader to read the file line by line
    //until an "End of File" (EOF) character is reached.
    try {
        bufferedReader = new BufferedReader(new FileReader(csvFileName));

        while ((line = bufferedReader.readLine()) != null) {
            // use comma as separator
            String[] animals = line.split(cvsSplitBy);
            out.println("Animal [type= " + animals[0] + " , name=" + animals[1] + " , year=" + animals[2]+"]<br>");
        }

    } catch (Exception e) {
        out.println("An Error occured in processing/opening the data file");
    }

%>
</body>
</html>
