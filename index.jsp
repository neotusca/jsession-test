<%@ page contentType="text/html;charset=utf-8"%>
 
<HTML>
<HEAD>
    <TITLE> session JSP TEST </TITLE>
<BODY>
<h1> session JSP TEST start </h1>
<%
    Integer ival = (Integer)session.getAttribute("sessiontest.counter");
 
    if(ival==null) {
        ival = new Integer(1);
    }
    else {
        ival = new Integer(ival.intValue() + 1);
    }
    session.setAttribute("sessiontest.counter",ival);
%>
 
당신은 이곳을 <b> <%= ival %> </b> 번 방문 했습니다. <p>
여기를 클릭하세요
<a href="index.jsp">   여~~기 </a>
<p>
<h3> request 객체와 관련된 세션 데이터 </h3>
<p>
요청된 세션 ID : <%= request.getRequestedSessionId() %> <br />
쿠키로 부터 요청된 세션 ID 인가 ? : <%= request.isRequestedSessionIdFromURL() %> <br />
유효한 세션 ID 인가? : <%= request.isRequestedSessionIdValid() %> <br />
</BODY>

</HTML>
