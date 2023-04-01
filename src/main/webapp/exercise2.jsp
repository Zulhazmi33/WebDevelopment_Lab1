<%-- 
    Document   : exercise2
    Created on : 29 Mar 2023, 12:27:33 am
    Author     : Hazmi33
--%>


<%@ page import="java.io.*"%>
<html>
<head>
    <style>
        table {border: 5px solid green;width: 750px;}
        tr {text-align: center;}
    </style>
</head>
<body>
    <% 
        String fName = "C:\\Users\\Hazmi33\\Music\\Coding\\Web Development\\S61763_Lab1\\Sales.csv"; 
        
        FileInputStream fis = new FileInputStream(fName);
        DataInputStream myInput = new DataInputStream(fis);
        
        String thisLine;
        String bacaan[][] = new String[8][3];
        double[] discount = new double[8];
    %>
    <%  
        for(int i=0;i<8;i++)
        {
            thisLine = myInput.readLine();
            String line1[] = thisLine.split(";");
            bacaan[i] = line1;
        }
    %>
    <%
        for(int i=0;i<8;i++)
        {
            if(bacaan[i][1].equals("Credit"))
                discount[i] = 0;
            else if(bacaan[i][1].equals("Cash"))
                discount[i] = Double.parseDouble(bacaan[i][2])/10;
        }
    %>
    
    <table>
        <tr>
            <th>Customer</th>
            <th>Cust. Type</th>
            <th>Purchase</th>
            <th>Discount</th>
        </tr>
        <%
            for(int i=0;i<8;i++)
            {
                out.println("<tr>");
                for(int j=0;j<3;j++)
                {
                    out.println("<td>"+bacaan[i][j]+"</td>");
                }
                out.println("<td>"+discount[i]+"</td>");
                out.println("</tr>");
            }
        %>
    </table>
</body>
</html>