$(document).ready(function() {
    $("#group_icon").change(function() {
      var selectedIcon = $(this).val();
      $(".icon-preview").removeClass().addClass(selectedIcon);
    });
  });
  