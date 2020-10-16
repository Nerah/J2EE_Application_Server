<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>

<t:genericpage>
    <jsp:attribute name="header">
        <jsp:include page="../fragments/header.jsp"/>
    </jsp:attribute>
    <jsp:attribute name="footer">
        <jsp:include page="../fragments/footer.jsp"/>
    </jsp:attribute>
    <jsp:body>
        <div class="container">
            <h1 class="mt-3">${colis.valeur}</h1>
            <p>Poids: ${colis.poids}</p>
            <p>Origine: ${colis.origine.emplacement} [${colis.origine.latitude}, ${colis.origine.longitude}]</p>
            <p>Position actuelle: ${colis.pos_actuelle.emplacement} [${colis.pos_actuelle.latitude}, ${colis.pos_actuelle.longitude}]</p>
            <p>Destination: ${colis.destination.emplacement} [${colis.destination.latitude}, ${colis.destination.longitude}]</p>
            <br>
            <form class="mt-2" method="post" action="edit_colis">
                <input type="hidden" name="id" value="${colis.id}">
                <input class="pen_submit" type="submit" value="&#9998;"/>
            </form>
            <h2>Historique</h2>
            <ul class="list-group">
                <c:forEach items="${colis.historique_positions}" var="position">
                    <li class="list-group-item">
                        <div class="form-group">
                            <label for="emplacement">Emplacement</label>
                            <input type="text" class="form-control" id="emplacement" value="${position.emplacement}" readonly />
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="latitude">Latitude</label>
                                <input type="number" class="form-control" id="latitude" value="${position.latitude}" readonly />
                            </div>
                            <div class="form-group col-md-6">
                                <label for="longitude">Longitude</label>
                                <input type="number" class="form-control" id="longitude" value="${position.longitude}" readonly />
                            </div>
                            <div class="form-group col-md-6">
                                <label for="etat_colis">Etat du colis</label>
                                <input type="text" class="form-control" id="etat_colis" value="${position.etatColis.toString()}" readonly />
                            </div>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </jsp:body>
</t:genericpage>
