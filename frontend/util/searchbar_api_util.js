export const fetchFilteredResults = (string) => (
  $.ajax({
    method: 'GET',
    url: 'api/projects',
    dataFilter: function (data) {
      var results = JSON.parse(data);
      var projects = Object.values(results);
      data = projects.filter(title => title.title.toLowerCase().includes(string.toLowerCase()));
      return JSON.stringify(data);
    }
  })
);