(function() {
  'use strict';
  angular.module('angularApp').controller('MainCtrl', [
    '$scope', function($scope) {
      var hHeight, header, sidebar;
      header = document.getElementById('mainHead');
      sidebar = document.getElementById("sidebar");
      hHeight = header.offsetHeight;
      return window.onscroll = function() {
        var scrollTop;
        scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
        if (scrollTop >= hHeight) {
          return sidebar.setAttribute('class', 'fixedMenu');
        } else {
          return sidebar.setAttribute('class', '');
        }
      };
    }
  ]);

}).call(this);

/*
//@ sourceMappingURL=main.js.map
*/