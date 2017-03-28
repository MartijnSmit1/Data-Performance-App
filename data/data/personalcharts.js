google.charts.load("current", {packages:['corechart']});
    google.charts.setOnLoadCallback(drawChart);
    google.charts.setOnLoadCallback(drawChart2);
    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ["Label", "Aantal uren", { role: "style" } ],
        ["Total required hours",  311.50, "#315c9b"],
        ["Total hours logged", 20.5, "1CD938"],
      ]);

      var view = new google.visualization.DataView(data);
      view.setColumns([0, 1,
                       { calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "annotation" },
                       2]);

      var options = {
        title: "Storypoints team vs personal Storypoints.",
        width: 850,
        height: 550,
        backgroundColor: '#C2E7F7',
        backgroundColor: { fill:'transparent' },
        bar: {groupWidth: "95%"},
        legend: { position: "none" },
      };
      var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
      chart.draw(view, options);
  }




  function drawChart2() {
      var data = google.visualization.arrayToDataTable([
        ["Label", "Aantal uren", { role: "style" } ],
        ["Total required hours",  176.00, "#315c9b"],
        ["Total hours logged", 129.00, "1CD938"],
      ]);

      var view = new google.visualization.DataView(data);
      view.setColumns([0, 1,
                       { calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "annotation" },
                       2]);

      var options = {
        title: "Hours required vs hours worked.",
        width: 850,
        height: 550,
        backgroundColor: '#C2E7F7',
        backgroundColor: { fill:'transparent' },
        bar: {groupWidth: "95%"},
        legend: { position: "none" },
      };
      var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values2"));
      chart.draw(view, options);
  }