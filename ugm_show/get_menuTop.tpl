
<li class="nav-item">
  <a class="nav-link js-scroll-trigger" href="#about">關於我們</a>
</li>
<li class="nav-item">
  <a class="nav-link js-scroll-trigger" href="#services">最新消息</a>
</li>
<li class="nav-item">
  <a class="nav-link js-scroll-trigger" href="#portfolio">商品管理</a>
</li>
<li class="nav-item">
  <a class="nav-link js-scroll-trigger" href="#contact">聯絡我們</a>
</li>

改為

<{foreach from=$menuTop item=row key=k}>
  <li class="nav-item">
    <a class="nav-link js-scroll-trigger" href="<{$row.url}>" <{if $row.target}>target='_blank'<{/if}> ><{$row.title}></a>
  </li>
<{/foreach}>