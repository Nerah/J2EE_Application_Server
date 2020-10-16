<%@ page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:genericpage>
    <jsp:attribute name="header">
        <jsp:include page="../fragments/header.jsp"/>
    </jsp:attribute>
    <jsp:attribute name="footer">
        <jsp:include page="../fragments/footer.jsp"/>
    </jsp:attribute>
    <jsp:body>
        <jsp:include page="../components/list-colis.jsp">
            <jsp:param name="colis_list" value="${colis_list}"/>
        </jsp:include>
        <jsp:include page="../components/add-colis.jsp"/>
    </jsp:body>
</t:genericpage>
