<%@page import="OBeans.PersonData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="PersonData" class="OBeans.PersonData" scope="session"/>
<%


            int i = Integer.parseInt("" + request.getParameter("load"));
            if (i < PersonData.getMorecoauthors().size()) {
                PersonData pd = PersonData.getMorecoauthors().get(i);
                pd.loadPerson();
                if (pd.loadPublications()) {
                    out.print("{success:true,message:'Publications loaded..',count:"+pd.getPublications().size() + "}");
                } else {
                    out.print("{success:false,message:'Publications load failed.'}");
                }
            } else {
                out.print("{success:false,message:'Publications load failed.'}");
            }

%>