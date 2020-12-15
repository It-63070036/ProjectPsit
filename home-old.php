<?php
include_once "./config/db-config.inc.php";
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Calories Calculate Fast Food</title>
    <link rel="stylesheet" href="/node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/node_modules/bootstrap-select/dist/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="/node_modules/@fortawesome/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="/css/style.css">
</head>

<body>
    <div class="container">
        <div class="row" style="margin-top: 50px;">
            <div class="col-12 text-center">
                <h1><i class="fas fa-utensils"></i> Calories Calculate Fast Food</h1>
            </div>
        </div>
        <form action="" method="post">
            <div class="row mt-5">
                <?php
                try {
                    $food_shop = $conDB->prepare('SELECT * FROM food_shop ORDER BY FOOD_SHOP_ID ASC');
                    $food_shop->execute();
                    while ($food_shop_result = $food_shop->fetch(PDO::FETCH_ASSOC)) { ?>
                        <div class="col-xs-6 col-sm-6 col-md-4 col-xl-3 mt-3">
                            <div class="card">
                                <div class="card-body">
                                    <img src="/img/<?= $food_shop_result['FOOD_SHOP_IMAGE']; ?>" class="card-img-top" alt="...">
                                    <?php
                                    try {
                                        $food = $conDB->prepare('SELECT * FROM food WHERE FOOD_SHOP_ID = :ID ');
                                        $food->bindParam(':ID', $food_shop_result['FOOD_SHOP_ID']);
                                        $food->execute(); ?>
                                        <select id="<?= $food_shop_result['FOOD_SHOP_NAME']; ?>" name="<?= $food_shop_result['FOOD_SHOP_NAME']; ?>" class="selectpicker col-12" multiple>
                                            <?php while ($food_result = $food->fetch(PDO::FETCH_ASSOC)) { ?>
                                                <option value="<?= $food_result['FOOD_ID']; ?>"><?= $food_result['FOOD_NAME']; ?></option>
                                            <?php  } ?>
                                        </select>
                                    <?php
                                    } catch (PDOException $e) {
                                        echo $e->getMessage();
                                    }
                                    ?>
                                </div>
                            </div>
                        </div>
                <?php }
                } catch (PDOException $e) {
                    echo $e->getMessage();
                }
                ?>
            </div>
            <div class="row mt-3 mb-3">
                <div class="col-12 text-center">
                    <button type="button" class="btn btn-success" id="calculate"><i class="fas fa-calculator"></i> Calculate</button>
                    <button type="button" class="btn btn-danger" id="reset"><i class="fas fa-undo-alt"></i> Reset</button>
                </div>
            </div>
        </form>
    </div>
    <script src="/node_modules/jquery/dist/jquery.min.js"></script>
    <script src="/node_modules/popper.js/dist/umd/popper.min.js"></script>
    <script src="/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="/node_modules/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="/node_modules/sweetalert/dist/sweetalert.min.js"></script>
    <script src="/js/home.js"></script>
</body>

</html>