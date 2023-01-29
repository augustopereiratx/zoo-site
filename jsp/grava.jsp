<%@ page  import="java.sql.*" language="java" %>

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
	  <script src='../js/voltar.js'></script>
</head>
<body>
<%
	// cria as variaveis
	String vnome ;
	String vtelefone ;
	String vemail ;
	String vcomentario;

	// armazena as informaÃ§Ãµes digitadas pelo usuario nas variaveis
	vnome = request.getParameter("name")  ;
	vemail= request.getParameter("email") ;
    vtelefone= request.getParameter("phone");
    vcomentario= request.getParameter("comment");

	//mostra na tela
	out.print( "Nome: "   + vnome  + "<br>") ;
	out.print( "email: "  + vemail + "<br>") ;
	out.print( "Telefone: "  + vtelefone + "<br>") ;
	out.print( "ComentÃ¡rio: "  + vcomentario + "<br>") ;

	// cria as variaveis para acessar o banco de dados
	String banco 	= "sitetest";
	String usuario 	= "root";
	String senha 	= "" ;
	String url  	= "jdbc:mysql://localhost:3306/" + banco ;
	String driver 	= "com.mysql.jdbc.Driver" ;

	// carregar o driver na memoria
	Class.forName( driver ) ;
	// cria a variavel para conectar com o banco
	Connection conexao ;

	//abrir a conexao com  o bando de dados
	conexao = DriverManager.getConnection(url, usuario , senha ) ;

	String sql = "INSERT INTO sitetest1 (NOME,EMAIL,TELEFONE,COMENTARIO) values ('" + vnome + "','" + vemail + "','" + vtelefone +"','" + vcomentario +"')" ;

	//cria o mecanismo de execuÃ§Ã£o do comando SQL
	Statement stm = conexao.createStatement() ;

	//executa o comando SQL
	stm.executeUpdate( sql ) ;

	stm.close() ;
	conexao.close() ;

	out.print("<br><br>");
	out.print("Dados gravados com sucesso!!!");

	out.print("<br>") ;
	out.print("<a href='../Portugues/comentarios.html'>Voltar</a>") ;
	
	String redirectURL = "../Portugues/comentarios.html";
    response.sendRedirect(redirectURL);


%>
</body>
</html>
