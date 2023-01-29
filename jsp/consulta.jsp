<%@page language="java" import="java.sql.*"%>
<html>
<head>
    <title>ComentÃ¡rios - ZoolÃ³gico de Guarulhos</title>
    <link rel="icon" href="../resources/icons/favicon.png">
    <meta charset="UTF-8" />
    <link rel="stylesheet" type="text/css" href="../styles.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <link
      href="https://fonts.googleapis.com/css?family=Permanent+Marker|Quicksand:300,500&display=swap"
      rel="stylesheet"
    />
    <style type="text/css">
      td {
        padding: 0 20px;
        vertical-align: top;
      }
      @media screen and (min-width: 53.75em) {
      td
      {
          padding:0 30px;
          vertical-align: top;
      }}

    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css" />
    <script type="text/javascript" src="../js/comments.js"></script>
</head>
<body class="body">
   <form method="GET" action="consulta.jsp">
      Nome: <input type="text" name="txtnome">
      <input type="submit" value="buscar">
   </form>
<%

// cria as variaveis para acessar o banco de dados
String banco = "sitetest";
String usuario = "root";
String senha = "" ;
String url   = "jdbc:mysql://localhost:3306/" + banco ;
String driver = "com.mysql.jdbc.Driver" ;



// carregar o driver na memoria
Class.forName( driver ) ;
// cria a variavel para conectar com o banco
Connection conexao ;

//abrir a conexao com  o bando de dados
conexao = DriverManager.getConnection(url, usuario , senha ) ;

String vnome = request.getParameter("txtnome");

String sql = "SELECT * FROM sitetest1 WHERE NOME= '" + vnome + "'";
Statement stm = conexao.createStatement();
        	
      	
PreparedStatement pst=conexao.prepareStatement(sql);
ResultSet rs=pst.executeQuery();
//rs, armazena valor encontrado
while (rs.next()){
        //se encotrar o registro, exibe.
     out.print ("<br>NOME: " + rs.getString("NOME"));  
        // pega a coluna codigo e joga na tela
     out.print ("<br>E-MAIL: " +rs.getString("EMAIL"));
     out.print ("<br>TELEFONE: " +rs.getString("TELEFONE"));
     out.print ("<br>COMENTARIO: " +rs.getString("COMENTARIO")+"<br>");
}

stm.close() ;
conexao.close() ;

out.print("<br>") ;
out.print("<a href='cadastro.html'>Voltar</a>") ;

%>
</body>
</html>