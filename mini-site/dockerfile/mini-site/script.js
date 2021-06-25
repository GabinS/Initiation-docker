(function () {

  window.addEventListener('load', function () {
    var links = {
      Accueil: '/',
      'Page 2': '/page2.html',
      'A propos de nous': '/about-us.html',
      'Nous contacter': '/contact-us.html'
    };
    var linkKeys = Object.keys(links);
    var header = document.createElement('header');
    var nav    = document.createElement('nav');
    var ul     = document.createElement('ul');

    for(var index in linkKeys) {
      var label = linkKeys[index];
      var li = document.createElement('li');
      var link = document.createElement('a');

      link.href = links[label];
      link.innerText = label;

      li.appendChild(link);
      ul.appendChild(li);
    }

    nav.appendChild(ul);
    header.appendChild(nav);
    document.body.prepend(header);
  });
})();

console.log('Script executed');
