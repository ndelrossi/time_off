var ready;

ready = function() {

  $('#calendar').fullCalendar({
    selectable: true,
    weekends: false,
    events: [
      {
      title  : 'Nick',
      start  : '2015-05-05'
    },
    {
      title  : 'Sandy',
      start  : '2015-05-14',
    }
    ],

    dayClick: function(date, jsEvent, view) {
      //$(this).css('background-color', 'red');
    }
  });
}

$(document).ready(ready);
$(document).on('page:load', ready);
