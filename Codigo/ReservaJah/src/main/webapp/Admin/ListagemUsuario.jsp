<%-- 
    Document   : ListagemUsuario
    Created on : 04/09/2013, 11:21:54
    Author     : eduardo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 


<h5 class="title">Gerenciar Usuários</h5>
<table id="lista">
    <tr>
        <th>Nome</th>
        <th>Tipo</th>
        <th>email</th>
    </tr>
    <c:choose>
        <c:when test="${listaUsuario.size()!=0}">
            <c:forEach items="${listaUsuario}" var="user">
                <tr>
                    <td><c:out value="${user.nome}"/></td>
                    <td><c:out value="${user.tipo.descricao}"/></td>
                    <td><c:out value="${user.email}"/></td>
                    <td><a class="modificar" onclick="editarUsuario(<c:out value="${user.id}"/>);"><img src="../img/editar.png"/></a></td>
                    <td><a class="modificar" onclick="apagarUsuario(<c:out value="${user.id}"/>);"><img src="../img/apagar.png"/></a></td>
                </tr>
            </c:forEach>
        </c:when>
        <c:otherwise>
            <tr>
                <td>Nenhuma sala cadastrada</td>
            </tr>
        </c:otherwise>
    </c:choose>
</table>
<button type="button" onclick="telaCadastroUsuario();" value="" class="btnAdicionar">Adicionar</button>
