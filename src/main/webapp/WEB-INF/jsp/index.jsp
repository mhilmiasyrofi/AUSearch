<%@page import="java.util.ArrayList"%>
<%@page import="soar.edu.searchvisualization.model.CodeSearch"%>
<%@page import="soar.edu.searchvisualization.model.ResolvedFile"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>GHSearch</title>
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
                    <h1 id="title" style="margin-bottom:0px"><strong class="bold">GHSearch</strong></h1>
                    <span id="subtitle" class="thin">Find Java code example here!</span>
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

        <%  
            ArrayList<ResolvedFile> resolvedFiles = (ArrayList<ResolvedFile>) request.getAttribute("resolvedFiles");
            for (int i =0; i < resolvedFiles.size(); i++) {
                System.out.println(resolvedFiles.get(i).getUrl());
        %>
                <div class="result-row">
                    <a href="<%=resolvedFiles.get(i).getUrl()%>">
                        <div class="card horizontal col offset-m0 offset-l1 m12 l10" style="color:black">
                            <div class="card-content" style="padding-top:0px">
                                <pre class="prettyprint" style="border-color: transparent;">
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
                    </a>
                </div>
        <%
            }
        %>


    </main>
    <footer class="page-footer light-blue">
        <div class="footer-copyright">
            <div class="container">
                © 2019 SMU School of Information Systems
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