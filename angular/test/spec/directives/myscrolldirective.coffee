'use strict'

describe 'Directive: myScrollDirective', ->

  # load the directive's module
  beforeEach module 'angularApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<my-scroll-directive></my-scroll-directive>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the myScrollDirective directive'
