---
datum: <% tp.date.now() %>
---
<% tp.file.rename(`${tp.date.now("YYMMDD")}-${tp.date.now("ssSS")}`) %>