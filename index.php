<?php


include 'connection.php';
$conn = OpenCon();

function parsing_data($fileName) {
    $conn = OpenCon();
    $file = fopen($fileName, "r");

    while(($column = fgetcsv($file, 10000, ",")) !== FALSE){
        if($column[1] != "Applicable For" && $column[3] != "Value") {
            $sqlInsert = "Insert into table_1 (Applicable_For, Calorific_Value) values ('".$column[1]."','".$column[3]."')";

            $result = mysqli_query($conn, $sqlInsert);
            print_r($result);
            if(!empty($result)){
                echo "CSV Data imported into the database";
            }else{
                echo "Problem in importing csv";
            }
            
        }
    
        
         
    }

    

} 

function parsing_data2($fileName) {
    $conn = OpenCon();
    $file = fopen($fileName, "r");

    while(($column = fgetcsv($file, 10000, ",")) !== FALSE){
        if($column[2] != "Data Item") {
            $filtered_column = $column[2];
            $pieces = explode(",", $filtered_column);
            if (strpos($pieces[1], 'LDZ')) {
                preg_match('#\((.*?)\)#', $pieces[1], $match);
                $sqlInsert = "Insert into table_2 (Applicable_For, Area) values ('".$column[1]." ','".$match[1]."')";
            }else{
                $sqlInsert = "Insert into table_2 (Applicable_For, Area) values ('".$column[1]." ',' ".$pieces[1]."')";
            }

            $result = mysqli_query($conn, $sqlInsert);

            if(!empty($result)){
                echo "CSV Data imported into the database";
            }else{
                echo "Problem in importing csv";
            }
            
        }
    }
}
    




if(isset($_POST["import"])){
    $fileName = $_FILES['data']['tmp_name'];
    
    if($_FILES["data"]["size"] > 0) {
        parsing_data($fileName);
        parsing_data2($fileName);
       
    }


}

?>

<form class="form-horizontal" action="" method="post" name="uploadCsv" enctype="multipart/form-data">
    <div>
        <label>Choose CSV File</label>
        <input type="file" name="data" value=""/>
        <button type="submit" name="import">Import</button>
    </div>
</form>


<?php
     $sqlSelect = "SELECT *
     FROM table_1
     INNER JOIN table_2
     ON table_1.id = table_2.id;";

     $result = mysqli_query($conn, $sqlSelect);
     print_r($result);
     if(mysqli_num_rows($result) > 0){
        ?>
        <table>
            <thead>
                <tr>
                    <th>
                        Applicable_For
                    </th>
                    <th>
                        Calorific Value
                    </th>
                    
                    <th>
                        Applicable_For
                    </th>
                    <th>
                        Area
                    </th>
                </tr>
            </thead>
            <?php
            while ($row = mysqli_fetch_array($result)){

            ?>
            <tbody>
                <tr>
                    <td><?php echo $row['Applicable_For'];?></td>
                    <td><?php echo $row['Calorific_Value'];?></td>
                    <td><?php echo $row['Applicable_For'];?></td>
                    <td><?php echo $row['Area'];?></td>
                </tr>
            </tbody>
            <?php } ?>
        </table>
       
        <?php  }


?>