<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>

<div class="container">
    <h2 class="mt-3">Colis</h2>
    <p>Entrez le nom du colis que vous cherchez:</p>
    <input class="form-control" id="colisFilter" type="text" placeholder="Chercher..">
    <br>
    <div class="list-group" id="colisList">
        <c:forEach items="${colis_list}" var="colis">
            <form method="post" action="more_info">
                <input type="hidden" name="id" value="${colis.id}"/>
                <input class="list-group-item" type="submit" value="${colis.valeur}"/>
            </form>
        </c:forEach>
    </div>
</div>

<style>
    .list-group form {
        margin-block-end: 0;
    }

    .list-group-item {
        width: 100%;
        text-align: left;
    }
</style>

<script>
    /* FILTER FUNCTIONALITY */

    $(document).ready(function(){
        $("#colisFilter").on("keyup", function() {
            const value = $(this).val().toLowerCase();
            $("#colisList form").filter(function() {
                $(this).toggle($(this).find('.list-group-item').val().toLowerCase().indexOf(value) > -1)
            });
        });
    });
</script>