'use strict'

angular.module('angularApp')
  .controller 'MainCtrl', ['$scope', ($scope) ->    

  	# fixes menu after some scrolling
    header = document.getElementById('mainHead')
    sidebar = document.getElementById("sidebar")
    hHeight = header.offsetHeight
    window.onscroll = () ->
     scrollTop = document.documentElement.scrollTop || document.body.scrollTop;    
     if scrollTop >= hHeight      
      sidebar.setAttribute('class', 'fixedMenu')     
     else
      sidebar.setAttribute('class', '') 
   ]


    
