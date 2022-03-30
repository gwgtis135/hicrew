<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Organization Chart Plugin</title>
  <link rel="icon" href="img/logo.png">
  <link rel="stylesheet" href="css/jquery.orgchart.css">
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <div id="chart-container"></div>

  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/jquery.orgchart.js"></script>
  <script type="text/javascript">
    $(function() {

    var datascource = {
      'name': 'Lao Lao',
      'title': 'general manager',
      'children': [
        { 'name': 'Bo Miao', 'title': 'department manager', 'collapsed': true,
          'children': [
            { 'name': 'Li Jing', 'title': 'senior engineer', 'className': 'slide-up' },
            { 'name': 'Li Xin', 'title': 'senior engineer', 'collapsed': true, 'className': 'slide-up',
              'children': [
                { 'name': 'To To', 'title': 'engineer', 'className': 'slide-up' },
                { 'name': 'Fei Fei', 'title': 'engineer', 'className': 'slide-up' },
                { 'name': 'Xuan Xuan', 'title': 'engineer', 'className': 'slide-up' }
              ]
            }
          ]
        },
        { 'name': 'Su Miao', 'title': 'department manager',
          'children': [
            { 'name': 'Pang Pang', 'title': 'senior engineer' },
            { 'name': 'Hei Hei', 'title': 'senior engineer', 'collapsed': true,
              'children': [
                { 'name': 'Xiang Xiang', 'title': 'UE engineer', 'className': 'slide-up' },
                { 'name': 'Dan Dan', 'title': 'engineer', 'className': 'slide-up' },
                { 'name': 'Zai Zai', 'title': 'engineer', 'className': 'slide-up' }
              ]
            }
          ]
        }
      ]
    };

    $('#chart-container').orgchart({
      'data' : datascource,
      'nodeContent': 'title'
    });

  });
  </script>
  </body>
</html>