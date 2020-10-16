<%@ page import="fr.usmb.nerah.enumerations.ColisState" %>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>

<c:set var="etats" value="<%= ColisState.values() %>"/>

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary action-btn" data-toggle="modal" data-target="#newPositionModal">
    &plus;
</button>

<!-- Modal -->
<div class="modal fade" id="newPositionModal" tabindex="-1" role="dialog" aria-labelledby="newPositionModal" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <form method="post" action="move_colis">
                <input type="hidden" name="id" value="${param.colisId}"/>
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Créer une position</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <h3>Informations</h3>
                    <div class="form-group">
                        <label for="emplacement">Emplacement</label>
                        <input type="text" class="form-control" id="emplacement" name="emplacement" placeholder="Chez le voisin" required />
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="latitude">Latitude</label>
                            <input type="number" class="form-control" id="latitude" name="latitude" value="1.0" required />
                        </div>
                        <div class="form-group col-md-6">
                            <label for="longitude">Longitude</label>
                            <input type="number" class="form-control" id="longitude" name="longitude" value="1.0" required />
                        </div>
                        <div class="col-auto1">
                            <label for="etat_colis">Etat du colis</label>
                            <select class="form-control" id="etat_colis" name="etat_colis">
                                <c:forEach items="${etats}" var="etat">
                                    <option value="${etat.toString()}">${etat.toString()}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fermer</button>
                    <button type="submit" class="btn btn-primary">Nouvelle position</button>
                </div>
            </form>
        </div>
    </div>
</div>

<style>

</style>

<script>

</script>