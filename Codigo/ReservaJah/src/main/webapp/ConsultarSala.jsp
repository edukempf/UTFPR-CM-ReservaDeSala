<%-- 
    Document   : ConsultarSalas
    Created on : 12/09/2013, 20:36:41
    Author     : Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/estilo01.css">
        <script language="javascript" src="../js/jquery-1.10.2.min.js"></script>
        <script language="javascript" src="../js/projeto.js"></script>
    </head>
    <body>
        <select name="tipoConsulta">
            <option value="1">Consultar aula da Sala na semana atual</option>
            <option value="2">Consultar aula da sala em uma data especifica</option>
            <option value="3">Consultar aula de uma disciplina na semana</option>
        </select>
        <div id="porSalaSemana">
            <table>
                <c:forEach items="${horarios}" var="horario" varStatus="local">
                    <c:if test="${local.count<2}">
                        <tr>
                            <td></td>
                            <c:forEach items="${dias}" var="dia">
                                <td><c:out value="${dia}"/></td>
                            </c:forEach>
                        </tr>
                    </c:if>
                    <tr>
                        <td><c:out value="${horario}"/></td>
                        <c:forEach items="${dias}" var="dia" varStatus="aa">
                            <td id="<c:out value="${local.count}"/><c:out value="${aa.count}"/>">
                                <c:forEach items="${listaAulaSala}" var="aula">
                                    <c:if test="${aula.inicio==horario}">
                                        <c:if test="${aula.dia==dia}">
                                            <input type="hidden" name="aula" value="inicio"/>
                                        </c:if>
                                    </c:if>
                                    <c:if test="${aula.fim==horario}">
                                        <c:if test="${aula.dia==dia}">
                                            <input type="hidden" name="aula" value="fim"/>
                                        </c:if>
                                    </c:if> 
                                </c:forEach>
                            </td>
                        </c:forEach>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <div id="dataEspecifica">

        </div>
        <div id="semana">
            <table>
                <c:forEach items="${horarios}" var="horario" varStatus="local">
                    <c:if test="${local.count<2}">
                        <tr>
                            <td></td>
                            <c:forEach items="${dias}" var="dia">
                                <td><c:out value="${dia}"/></td>
                            </c:forEach>
                        </tr>
                    </c:if>
                    <tr>
                        <td><c:out value="${horario}"/></td>
                        <c:forEach items="${dias}" var="dia" varStatus="aa">
                            <td id="<c:out value="${local.count}"/><c:out value="${aa.count}"/>">
                                <c:forEach items="${listaAulaSala}" var="aula">
                                    <c:if test="${aula.inicio==horario}">
                                        <c:if test="${aula.dia==dia}">
                                            <input type="hidden" name="aula" value="inicio"/>
                                        </c:if>
                                    </c:if>
                                    <c:if test="${aula.fim==horario}">
                                        <c:if test="${aula.dia==dia}">
                                            <input type="hidden" name="aula" value="fim"/>
                                        </c:if>
                                    </c:if> 
                                </c:forEach>
                            </td>
                        </c:forEach>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <div id="rodape">
            <p><span>ReservaJAH.com</span>&copy 2013. Todos os direitos reservados</p>
        </div>
    </body>
</html>