<%--

    Pingchecker.eu webapp - Tool to periodically check services availability
    Copyright (c) 2015, Matej Kormuth <http://www.github.com/dobrakmato>
    All rights reserved.

    Redistribution and use in source and binary forms, with or without modification,
    are permitted provided that the following conditions are met:

    1. Redistributions of source code must retain the above copyright notice, this
    list of conditions and the following disclaimer.

    2. Redistributions in binary form must reproduce the above copyright notice,
    this list of conditions and the following disclaimer in the documentation and/or
    other materials provided with the distribution.

    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
    ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
    WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
    DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
    ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
    (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
    LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
    ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
    (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
    SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:genericpage>
    <jsp:body>
        <div class="service-view">
            <h1>${service.name}</h1>
            <small>${service.category.name}</small>

            <h2>Basic information</h2>

            <p>
                <b>IP address</b>: ${service.address}<br>
                <b>Type</b>: ${service.type}<br>
                <b>Check interval</b>: ${service.checkInterval}<br>
                <b>Status</b>: loading...<br>
                <b>Last checked</b>: loading...<br>
            </p>

            <h2>Notifications</h2>

            <p>No notifications configured.</p>

            <h2>Graphs</h2>
            <span>Last 7 days (latency)</span>
            <canvas id="seven_days_lat" width="560" height="120" style="width: 560px; height: 120px;"></canvas>

            <span>Last 7 days (availability)</span>
            <canvas id="seven_days_avai" width="560" height="120" style="width: 560px; height: 120px;"></canvas>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.2/Chart.min.js"></script>
    </jsp:body>
</t:genericpage>
