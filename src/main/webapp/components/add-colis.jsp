<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary action-btn" data-toggle="modal" data-target="#newColisModal">
    &plus;
</button>

<!-- Modal -->
<div class="modal fade" id="newColisModal" tabindex="-1" role="dialog" aria-labelledby="newColisModal" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <form method="post" action="add_colis">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Créer un colis</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-12">
                                <h3>Informations</h3>
                                <div class="form-group">
                                    <label for="valeur">Valeur</label>
                                    <input type="text" class="form-control" id="valeur" name="valeur" placeholder="Nom du colis" required />
                                </div>
                                <div class="form-group">
                                    <label for="poids">Poids</label>
                                    <input type="number" class="form-control" id="poids" name="poids" value="1.0" step="0.01" required />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h3 class="card-title">Origine</h3>
                                        <div class="form-group">
                                            <label for="origine_emplacement">Emplacement</label>
                                            <input type="text" class="form-control" id="origine_emplacement" name="origine_emplacement" placeholder="Chez moi" required />
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label for="origine_latitude">Latitude</label>
                                                <input type="number" class="form-control" id="origine_latitude" name="origine_latitude" value="1.0" step="0.0001" required />
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="origine_longitude">Longitude</label>
                                                <input type="number" class="form-control" id="origine_longitude" name="origine_longitude" value="1.0" step="0.0001" required />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h3 class="card-title">Destination</h3>
                                        <div class="form-group">
                                            <label for="destination_emplacement">Emplacement</label>
                                            <input type="text" class="form-control" id="destination_emplacement" name="destination_emplacement" placeholder="Chez l'autre" required />
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label for="destination_latitude">Latitude</label>
                                                <input type="number" class="form-control" id="destination_latitude" name="destination_latitude" value="10.0" step="0.0001" required />
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="destination_longitude">Longitude</label>
                                                <input type="number" class="form-control" id="destination_longitude" name="destination_longitude" value="10.0" step="0.0001" required />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fermer</button>
                    <button type="submit" class="btn btn-primary">Nouveau colis</button>
                </div>
            </form>
        </div>
    </div>
</div>

<style>

</style>

<script>

</script>