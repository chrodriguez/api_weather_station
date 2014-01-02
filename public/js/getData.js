(function($) {
  var configuration = { // Change this settings to match your environment/needs
    host: 'http://clima.info.unlp.edu.ar',
    endpoint: '/last?lang=es',
    dateFormat: 'DD/MM/YY HH:mm'
  },
  $parts = (function($target) {
    return {
      date: $target.find('.date'),
      temperature: $target.find('.temperature'),
      humidity: $target.find('.humidity'),
      bar: $target.find('.bar'),
      windSpeed: $target.find('.wind-speed'),
      windDirection: $target.find('.wind-direction')
    };
  }($('#content'))),
  intervalId;

  function zeroPad(val) {
    return parseInt(val) < 10 ? '0' + val : val;
  }

  function timeStampForHuman(aTimeStamp){ 
    var timeDate = new Date((aTimeStamp - 3 * 60 * 60) * 1000);
    return {
      date: zeroPad(timeDate.getUTCDate()),
      month: zeroPad(timeDate.getUTCMonth() + 1),
      year: timeDate.getUTCFullYear(),
      hours: zeroPad(timeDate.getUTCHours()),
      minutes: zeroPad(timeDate.getUTCMinutes())
    }
  }

  function update(config) {
    $.getJSON(config.host + config.endpoint, function(data) {
      var dataDate = timeStampForHuman(moment(data.captured_at).format("X"));
      $parts.date.html(dataDate['date'] + '/' + dataDate['month'] + '/' + dataDate['year'] + ' ' + dataDate['hours'] + ':' + dataDate['minutes']);
      $parts.temperature.html(data.temperature);
      $parts.humidity.html(data.humidity);
      $parts.bar.html(data.bar);
      $parts.windSpeed.html(data.wind_speed);
      $parts.windDirection.html(data.wind_direction);
    });
  }

  update(configuration);

  intervalId = setInterval(function() { update(configuration); }, 60000);
}(jQuery));
