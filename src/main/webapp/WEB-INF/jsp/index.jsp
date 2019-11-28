<%@page import="java.util.ArrayList"%>
<%@page import="soar.edu.searchvisualization.model.CodeSearch"%>
<%@page import="soar.edu.searchvisualization.model.ResolvedFile"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>AUSearch</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="css/google_fonts.css" />
    <link rel="stylesheet" href="css/materialize.css" />
    <link rel="stylesheet" href="css/font-awesome.css" />
    <link rel="stylesheet" href="css/app.css" />
    <script src="https://cdn.jsdelivr.net/gh/google/code-prettify@master/loader/run_prettify.js"></script>
</head>

<body>
    <main>
        <div class="container">
            <div id="logo" class="row center-align">
                <div class="col s12">
                    <h1 id="title" style="margin-bottom:0px"><strong class="bold">AUSearch</strong></h1>
                    <span id="subtitle" class="thin">Find java api usage example here!</span>
                </div>
            </div>
            <div class="row center-align">
                <div class="input-field col offset-m2 s11 m8">
                    <form method="get" id="query-form" action='/'>
                        <input id="query" type="text" name="query" placeholder="Write your query"
                            value="${query}">
                    </form>
                </div>
            </div>
        </div>
<!-- 
        <div class="result-row">
            <div class="row offset-m0 offset-l1 m12 l10">
                <img src="https://github.com/mhilmiasyrofi.png?size=50" class="rounded mx-auto d-block" alt="https://github.com/mhilmiasyrofi" align="left" >
                <div class="col">
                    <div style="font-size: 18px; color: black;"><b>Repo Name</b></div>
                    <div class="path-to-file">
                        <a href="www.google.com">
                        Path to File
                        </a>
                    </div>
                </div>
            </div>
            <div class="card horizontal col offset-m0 offset-l1 m12 l10" style="color:black">
                <pre class="prettyprint" style="border-color: transparent;margin: 0px; font-size: 12px;">
        ArrayList<String> codes = resolvedFiles.get(i).getCodes();
        int middle = (codes.size() + 1)/2;
        String snippetCodes = "";
        for (int j = 0; j < codes.size(); j++) {
            if (j == (codes.size()-1)) {
                snippetCodes += codes.get(j);
            } else {
                snippetCodes += codes.get(j) + "\n";
            }
        }
                                </pre>
            </div>
        </div>
        <br> 
-->

        <%  
            ArrayList<ResolvedFile> resolvedFiles = (ArrayList<ResolvedFile>) request.getAttribute("resolvedFiles");
            for (int i =0; i < resolvedFiles.size(); i++) {
                System.out.println(resolvedFiles.get(i).getUrl());
        %>
                <div class="result-row">
                    <div class="row offset-m0 offset-l1 m12 l10">
                        <img src="https://github.com/<%=resolvedFiles.get(i).getUsername()%>.png?size=50" class="rounded mx-auto d-block"
                            alt="https://github.com/<%=resolvedFiles.get(i).getUsername()%>" align="left" style="width:50px;height:50px;">
                        <div class="col">
                            <div style="font-size: 18px; color: black;"><b><%=resolvedFiles.get(i).getRepoName()%></b></div>
                            <div class="path-to-file">
                                <a href="<%=resolvedFiles.get(i).getUrl()%>">
                                    <%=resolvedFiles.get(i).getPathToFile()%>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="card horizontal col offset-m0 offset-l1 m12 l10" style="color:black">
                        <pre class="prettyprint" style="border-color: transparent;margin: 0px; font-size: 12px;">
<%
ArrayList<String> codes = resolvedFiles.get(i).getCodes();
int middle = (codes.size() + 1)/2;
String snippetCodes = "";
for (int j = 0; j < codes.size(); j++) {
    if (j == (codes.size()-1)) {
        snippetCodes += codes.get(j);
    } else {
        snippetCodes += codes.get(j) + "\n";
    }
}
%> 
<%=snippetCodes%> 
                        </pre>
                    </div>
                </div>
                <br>
        <%
            }
        %>


    </main>
    <footer class="page-footer light-blue">
        <div class="footer-copyright">
            <div class="container" >
                <span style="color: white;">© 2019 SMU School of Information Systems</span>
                <a class="grey-text text-lighten-4" style="margin-left:10px;font-size:12px" href="#">About</a>
                <a class="grey-text text-lighten-4" style="margin-left:10px;font-size:12px" href="#">Terms</a>
                <a class="grey-text text-lighten-4 right" href="#">Made with <i class="fa fa-heart red-text"
                        aria-hidden="true"></i> by Software Analytic Research Group</a>
            </div>
        </div>
    </footer>

    <script type="text/javascript" src="~/Resources/Scripts/jquery.min.js"></script>
    <script type="text/javascript" src="~/Resources/Scripts/materialize.min.js"></script>
    <script>
        $(document).ready(function () {
            $('.modal').modal();
            if ('${listResult.length}' == '0')
                $("#query").focus();
            else
                $('#logo').fadeOut();
        });
    </script>
</body>

</html>