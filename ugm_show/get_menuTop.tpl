<{foreach from=$menuTop item=row key=k}>
  <li class="nav-item">
    <a class="nav-link js-scroll-trigger" href="<{$row.url}>" <{if $row.target}>target='_blank'<{/if}> ><{$row.title}></a>
  </li>
<{/foreach}>