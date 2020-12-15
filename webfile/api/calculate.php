<?php
header('Content-Type: application/json; charset=utf-8');
include_once "../config/db-config.inc.php";
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    try {
        $food_value = [];
        $shop = $conDB->prepare("SELECT FOOD_SHOP_NAME FROM food_shop");
        $shop->execute();
        while ($shop_result = $shop->fetch(PDO::FETCH_ASSOC)) {
            ${$shop_result['FOOD_SHOP_NAME']} = (isset($_POST[$shop_result['FOOD_SHOP_NAME']])) ? $_POST[$shop_result['FOOD_SHOP_NAME']] : array();
            $food_value = array_merge($food_value, ${$shop_result['FOOD_SHOP_NAME']});
        }
        //print_r($food_value);
        if (count($food_value) > 0) {
            $value = implode(",", $food_value);
            try {

                $cal = $conDB->prepare("SELECT SUM(FOOD_CAL) as total FROM food WHERE FOOD_ID IN ($value)");
                $cal->execute();
                $cal_result = $cal->fetch(PDO::FETCH_ASSOC);
                $calsum = $cal_result['total'];

                $food = $conDB->prepare("SELECT FOOD_NAME FROM food WHERE FOOD_ID IN ($value)");
                $food->execute();
                $food_result = $food->fetchAll(PDO::FETCH_COLUMN, 0);
                $food_data = implode(",",$food_result);

                $json = json_encode(array("status" => "200", "food" => [$food_data],"cal" => $calsum),JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT |  JSON_UNESCAPED_UNICODE);
            } catch (PDOException $e) {
                //echo $e->getMessage();
                $json = json_encode(array("status" => "400", "message" => $e->getMessage()),JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT |  JSON_UNESCAPED_UNICODE);
            }
        } else {
            $json = json_encode(array("status" => "400","message" => "empty value !" ),JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT |  JSON_UNESCAPED_UNICODE);
        }
    } catch (PDOException $e) {
        //echo $e->getMessage();
        $json = json_encode(array("status" => "400","message" => "error !" ),JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT |  JSON_UNESCAPED_UNICODE);
    }
    $json_decode = json_decode($json);
    http_response_code($json_decode->status);
    echo $json;

}
