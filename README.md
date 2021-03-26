# target-blank

Q: Forcing all links to open in new tab?

I've got a shiny app with lots of links, and I want them all to open in a new tab/window.
Most of my links are defined in .md docs so I can't use the R Markdown syntax of `[Text](url){target = "_blank"}`
I was hoping I could use a bit of jQuery to make all my links have the target = blank attribute.
I've added the following jQuery to my shiny app, which works for links defined in HTML (`<a>`) but not on markdown defined links (`[]()`)

```
$(window).on("load", function(){
  $('a').attr('target', '_blank');
});
```

Running `$('a').attr('target', '_blank');` in the developer console will add the attribute to both HTML and markdown links on the active tab.
