<%@ page import="fr.usmb.nerah.enumerations.ColisState" %>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>

<c:set var="etats" value="<%= ColisState.values() %>"/>

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

            <jsp:include page="../components/add-position.jsp">
                <jsp:param name="colisId" value="${colis.id}"/>
            </jsp:include>

            <form class="mt-2" method="post" action="more_info">
                <input type="hidden" name="id" value="${colis.id}">
                <input class="pen_submit" type="submit" value="&#9587;"/>
            </form>

            <h2>Historique</h2>
            <ul class="list-group">
                <c:forEach items="${colis.historique_positions}" var="position">
                    <li class="list-group-item">
                        <form method="post" action="update_position">
                            <input type="hidden" name="id_position" value="${position.id}"/>
                            <input type="hidden" name="id" value="${colis.id}"/>
                            <div class="form-group">
                                <label for="emplacement">Emplacement</label>
                                <input type="text" class="form-control" id="emplacement" name="emplacement" placeholder="Chez le voisin" value="${position.emplacement}" required />
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="latitude">Latitude</label>
                                    <input type="number" class="form-control" id="latitude" name="latitude" value="${position.latitude}" required />
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="longitude">Longitude</label>
                                    <input type="number" class="form-control" id="longitude" name="longitude" value="${position.longitude}" required />
                                </div>
                                <div class="col-auto1">
                                    <label for="etat_colis">Etat du colis</label>
                                    <select class="form-control" id="etat_colis" name="etat_colis">
                                        <c:forEach items="${etats}" var="etat">
                                            <option value="${etat.toString()}"
                                                ${etat == position.etatColis ? 'selected' : ''}
                                            >${etat.toString()}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary mt-3">Modifier la position</button>
                        </form>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </jsp:body>
</t:genericpage>
