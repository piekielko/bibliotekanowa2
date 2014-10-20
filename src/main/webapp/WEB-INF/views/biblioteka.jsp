<%@include file="./includes/common.jsp"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />

<link href="${pageContext.request.contextPath}/resources/style.biblioteka.css" rel="stylesheet" type="text/css"/>
<title>Insert title here</title>
<style>
 
</style>
</head>
<body>
    
    
    
    <div id="section32">
        <h4>Dodaj nowa ksiazke:</h4>
	<form:form modelAttribute="ksiazka">
           
           <tr class="w">
                <td class="d">Tytul</td>  
           <br>
                <td class="w"><form:input path="tytul" /></td>
                <br>
               <td class="w"><form:errors path="tytul" cssStyle="color: red;"/> </td>
		<br>
                <td class="d">Opis</td>
                <br>
                <td class="w"><form:input path="opis"  /></td>
                <br>
                <td class="w"><form:errors path="opis" cssStyle="color: red;"/></td>
		<br>
                <td class="d">ImieAutora</td>
                <br>
                <td class="w"><form:input path="imieAutora"  /></td>
                <br>
                <td class="w"><form:errors path="imieAutora" cssStyle="color: red;"/></td>
                <br>
                <td class="d">NazwiskoAutora</td>
                <br>
                <td class="w"><form:input path="nazwiskoAutora"  /></td>
		<br>
                <td class="w"><form:errors path="nazwiskoAutora" cssStyle="color: red;"/></td>
                <br>
                <td class="d">KrajPochodzenia</td>
                <br>
                <td class="w"><form:input path="krajPochodzenia"  /></td>
                <br>
                <td class="w"><form:errors path="krajPochodzenia" cssStyle="color: red;"/></td>
                <br>
                <td class="w">Ilosc</td>
                <br>
                <td class="w"><form:input path="ilosc" name="ilosc" placeholder="Ilosc" type="number"/></td>
		<br>
                <br>
                <td class="w">Kategoria</td>
                <br>
                <td class="w"><form:input path="kategoria"  /></td>
                <br>
                <td class="w"><form:errors path="kategoria" cssStyle="color: red;"/></td>
		<br>
             </tr>
             
            
		<input type="submit" value="Dodaj" formaction="biblioteka"
			formmethod="post" />

       

	</form:form>
    
    
	<form action="biblioteka" method="get">
            <br>
           
            
		<input type="text" value=".*" name="wyrazenie" >
                <br>
                <br> 
		<select name="kategoria">
			<option value="1" >Tytul</option>
                        <br>
			<option value="2" >Opis</option>
                        <br>
			<option value="7" >Kategoria</option>
		</select>
                <br>
                <br>
		<input type="submit" name="filter" value="Filtruj" >
		
	</form>
    
    </div>
    
    <div id="tabela">
               <table>
                      
                      <tr>
                      
                        
			<th><a href="biblioteka?sort=0">Id</a></th>
			<th><a href="biblioteka?sort=1">Tytul</a></th>
			<th><a href="biblioteka?sort=2">Opis</a></th>
			<th><a href="biblioteka?sort=3">ImieAutora</a></th>
                        <th><a href="biblioteka?sort=4">NazwiskoAutora</a></th>
                        <th><a href="biblioteka?sort=5">KrajPochodzenia</a></th>
			<th><a href="biblioteka?sort=6">Ilosc</a></th>
			<th><a href="biblioteka?sort=7">Kategoria</a></th>
			
                        <th>Usu&#324;</th>
			<th>Zmie&#324;</th>
                      </tr>
                
    
                        
		      
    
    
    
       
		<c:forEach var="ksiazka" items="${biblioteka}">
                    
			<tr>
                                
				<td><c:out value="${ksiazka.id+1}" /></td>
				<td><c:out value="${ksiazka.tytul}" /></td>
				<td><c:out value="${ksiazka.opis}" /></td>
				<td><c:out value="${ksiazka.imieAutora}" /></td>
                                <td><c:out value="${ksiazka.nazwiskoAutora}" /></td>
                                <td><c:out value="${ksiazka.krajPochodzenia}" /></td>
				<td><c:out value="${ksiazka.ilosc}" /></td>
				<td><c:out value="${ksiazka.kategoria}" /></td>
				<td><a href="biblioteka?id=${ksiazka.id}&action=delete">Usu&#324;</a></td>
				<td><a href="bibliotekazmien?id=${ksiazka.id}&action=update">Zmie&#324;</a>
				</td>
                                
			</tr>
                    
		</c:forEach>
	</table>
    </div>
</body>
</html>