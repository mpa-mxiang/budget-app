

let picker = document.getElementById('icon-selector');
let icons = document.querySelectorAll('#icon-selectorr i');

document.addEventListener('DOMContentLoaded', function() {
  picker.addEventListener('click', function() {

    alert('clicked');
  }); 
});



selected_value = document.getElementById('input_value');  

icons.forEach(function(icon) {
  icon.addEventListener('click', function() {
    let selectedIcon = icon.getAttribute('data-class');
    selected_value = document.getElementById('selected-icon');


    icons.forEach(function(icon) {
      icon.classList.remove('selected');
    });

    this.classList.add('selected');
  });
});