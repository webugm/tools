
<li class="nav-item">
  <a class="nav-link js-scroll-trigger" href="#about">About</a>
</li>
<li class="nav-item">
  <a class="nav-link js-scroll-trigger" href="#services">Services</a>
</li>
<li class="nav-item">
  <a class="nav-link js-scroll-trigger" href="#portfolio">Portfolio</a>
</li>
<li class="nav-item">
  <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
</li>

改為

<{foreach from=$menuTop item=row key=k}>
  <li class="nav-item">
    <a class="nav-link js-scroll-trigger" href="<{$row.url}>" <{if $row.target}>target='_blank'<{/if}> ><{$row.title}></a>
  </li>
<{/foreach}>