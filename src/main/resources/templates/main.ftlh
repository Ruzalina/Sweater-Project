<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
<div>
<@l.logout />
</div>
<div>
    <form action="/filter"method="post">
        <input type="text" name="text"placeholder="Type the message">
        <input type="text" name="tag"placeholder="Tag">
        <input type="hidden"name="_csrf"value="${_csrf.token}"/>

        <button type="submit">Add</button>
    </form>
</div>
<div>The list of messages</div>
<form method="post"action="filter">
    <input type="text"name="filter">
    <input type="hidden"name="_csrf"value="${_csrf.token}"/>
    <button type="submit">Find</button>
</form>
    <#list messages as message>
<div>
    <b>${message.id}</b>
    <span>{{text}}</span>
    <i>{{tag}}</i>
    <strong>${message.authorName}</strong>
</div>
        <#else>
        No message
    </#list>
    </@c.page>