<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <?php
    include_once 'headerfiles.php';
    ?>
</head>
<body>
<div id="wrapper">
    <?php
    include_once 'adminheader.php';
    ?>
    <div class="container">
        <form action="insertsubcategory.php" method="post" id="form1">
            <div class="col-sm-8 offset-2">
                <div class="row justify-content-center">
                    <h1>Add Sub Category</h1>
                </div>
                <div class="row form-group col-md-8 justify-content-center offset-2">
                    <label for="categoryname" class="font-weight-bolder"><u>Category Name</u></label>
                    <select name="categoryname" id="categoryname" data-rule-required="true"
                            data-msg-required="Category name is mandatory"
                            class="form-control">
                        <option value="">Select Category</option>
                        <?php
                        $s = "select * from category";
                        $result = mysqli_query($conn, $s);
                        while ($row = mysqli_fetch_array($result)) {
                            ?>
                            <option value="<?php echo $row['c_id']; ?>"><?php echo $row['c_name']; ?></option>
                            <?php
                        }
                        ?>
                    </select>
                </div>
                <div class="row form-group col-md-8 justify-content-center offset-2">
                    <label for="subcategoryname" class="font-weight-bolder"><u>Sub Category Name</u></label>
                    <input type="text" name="subcategoryname" id="subcategoryname" data-rule-required="true"
                           data-msg-required="Sub Category name is mandatory" placeholder="enter sub category name"
                           class="form-control">
                </div>
                <div class="row form-group col-md-8 justify-content-center offset-2">
                    <input type="submit" value="submit" class="btn btn-success">
                </div>
            </div>
        </form>
        <?php
        if (isset($_REQUEST['er'])) {
            $val = $_REQUEST['er'];
            if ($val == 1) {
                echo '<div class="alert alert-success">
            Sub Category added Successfully   
             <span class="close" data-dismiss="alert">&times;</span>
             </div>';
            } elseif ($val == 2) {
                echo '<div class="alert alert-danger">
            Sub Category insert failed
            <span class="close" data-dismiss="alert">&times;</span>
            </div>';
            } elseif ($val == 0) {
                echo '<div class="alert alert-info">
           Sub  Category Already exist
            <span class="close" data-dismiss="alert">&times;</span>
            </div>';
            }
        }

        ?>
    </div>
    <?php
    include_once 'footer.php';
    ?>
</div>
</body>
</html>
<?php
