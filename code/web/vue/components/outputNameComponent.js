var Ctor = Vue.extend({
    name: 'stack-overflow',
    template:
    '<div>' +
        // recursively invoke self
    '<stack-overflow></stack-overflow>' +
    '</div>'
})

// this will actually result in a max stack size exceeded
// error, but let's assume it works...
var vm = new Ctor()

console.log(vm) // -> StackOverflow {$el: null, ...}