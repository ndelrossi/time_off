var ready;

ready = function() {
  $('#calendar').fullCalendar({
    weekends: false
  })
};

$(document).ready(ready);
$(document).on('page:load', ready);
