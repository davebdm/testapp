<html>

  <head>
   <title>PHP and PGSQL Test</title>
  </head>

  <body bgcolor="white">

  <?
  $link = pg_Connect("host=bdmdb.cmey2egpabzx.us-east-1.rds.amazonaws.com dbname=bdmsoftware user=bdmuser password=barrows123");
  $result = pg_exec($link, "select * from test");
  $numrows = pg_numrows($result);
  echo "<p>link = $link<br>
  result = $result<br>
  numrows = $numrows</p>
  ";
  ?>

  <table border="1">
  <tr>
   <th>Firstname</th>
   <th>Surname</th>
   <th>Age</th>
  </tr>
  <?

   // Loop on rows in the result set.

   for($ri = 0; $ri < $numrows; $ri++) {
    echo "<tr>\n";
    $row = pg_fetch_array($result, $ri);
    echo " <td>", $row["firstname"], "</td>
   <td>", $row["surname"], "</td>
   <td>", $row["age"], "</td>
  </tr>
  ";
   }
   pg_close($link);
  ?>
  </table>

  </body>

  </html>

