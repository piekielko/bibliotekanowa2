<%@include file="./includes/common.jsp"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/resources/style.duka.css" rel="stylesheet" type="text/css"/>
<title>Biblioteka zmien</title>
</head>
<body>
        
	<form:form modelAttribute="ksiazka">
            
            <div id="section42">
                 <h4>Zmie&#324 wybrane pole:</h4>
                 <br>
		Tytul
                <br>
                <form:input path="tytul"  />
                <from:errors path="tytul" cssStyle="color:red"/>
                <br>
		<br>
		Opis 
                <br>
                <form:input path="opis" />
                <from:errors path="opis" cssStyle="color:red"/>
		<br>
                <br>
		ImieAutora
                <br>
                <form:input path="imieAutora" />
                <from:errors path="imieAutora" cssStyle="color:red"/>
		<br>
                <br>
                NazwiskoAutora 
                <br>
                <form:input path="nazwiskoAutora" />
                 <from:errors path="nazwiskoAutora" cssStyle="color:red"/>
		<br>
                <br>
                KrajPochodzenia: 
                <br>
                <form:input path="krajPochodzenia" />
                <from:errors path="krajPochodzenia" cssStyle="color:red"/>
		<br>
                <br>
		Ilosc: 
                <br>
                <form:input path="ilosc" type="number" />
		<br>
                <br>
		Kategoria: 
                <br>
                <form:input path="kategoria" />
                <from:errors path="kategoria" cssStyle="color:red"/>
		<br>
                <br>
		<input type="submit" value="Zmie&#324;" />
                <form:hidden path="id"/>
                <br>
                <br>
                <br>
               
            
            </div>
	</form:form>
    
    <div id="section53">
        <h4>Zapraszamy do dyskusyjnego klubu ksi&#261&#380ek:</h4>
        <br>
       
        <h6>Dyskusyjne Kluby Ksi&#261&#380ki to spotkania os&#243b, kt&#243re lubi&#261 czyta&#263 i rozmawia&#263 o ksi&#261&#380kach</h6>
       
        <h6>Uczestnikiem DKK mo&#380e by&#263 ka&#380dy<h6>
        
        <h6>Spotykaj&#261cy si&#281 nie musz&#261 prowadzi&#263 powa&#380nych dyskusji literackich<h6>
       
        <h6>Najwa&#380niejsza jest ch&#281&#263 dzielenia si&#281 swoimi wra&#380eniami.</h6>
        <br>
        
      
        <input type="submit" value="Zapisz sie" />
      
        <br>
    </div>
       
</body>
</html>