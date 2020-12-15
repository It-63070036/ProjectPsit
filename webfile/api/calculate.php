<?php
header('Content-Type: application/json');
include_once "../config/db-config.inc.php";
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $kfc_calsum = 0;
    $mcdonald_calsum = 0;
    $bonchon_calsum = 0;
    $burgerking_calsum = 0;
    $domino_calsum = 0;
    $subway_calsum = 0;
    $misterdonut_calsum = 0;
    $krispykreme_calsum = 0;
    $dunkindonut_calsum = 0;
    $haagendazs_calsum = 0;
    $baskinrobbins_calsum = 0;
    $pizzahut_calsum = 0;
    if (isset($_POST['kfc'])) {
        $kfc = implode(",", $_POST['kfc']);
        try {
            $kfc_cal = $conDB->prepare("SELECT *,SUM(FOOD_CAL) as total FROM food WHERE FOOD_ID IN ($kfc)");
            $kfc_cal->execute();
            $kfc_cal_result = $kfc_cal->fetch(PDO::FETCH_ASSOC);
            $kfc_calsum = $kfc_cal_result['total'];
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }
    if (isset($_POST['mcdonald'])) {
        $mcdonald = implode(",", $_POST['mcdonald']);
        try {
            $mcdonald_cal = $conDB->prepare("SELECT *,SUM(FOOD_CAL) as total FROM food WHERE FOOD_ID IN ($mcdonald)");
            $mcdonald_cal->execute();
            $mcdonald_cal_result = $mcdonald_cal->fetch(PDO::FETCH_ASSOC);
            $mcdonald_calsum = $mcdonald_cal_result['total'];
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }
    if (isset($_POST['bonchon'])) {
        $bonchon = implode(",", $_POST['bonchon']);
        try {
            $bonchon_cal = $conDB->prepare("SELECT *,SUM(FOOD_CAL) as total FROM food WHERE FOOD_ID IN ($bonchon)");
            $bonchon_cal->execute();
            $bonchon_cal_result = $bonchon_cal->fetch(PDO::FETCH_ASSOC);
            $bonchon_calsum = $bonchon_cal_result['total'];
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }
    if (isset($_POST['burgerking'])) {
        $burgerking = implode(",", $_POST['burgerking']);
        try {
            $burgerking_cal = $conDB->prepare("SELECT *,SUM(FOOD_CAL) as total FROM food WHERE FOOD_ID IN ($burgerking)");
            $burgerking_cal->execute();
            $burgerking_cal_result = $burgerking_cal->fetch(PDO::FETCH_ASSOC);
            $burgerking_calsum = $burgerking_cal_result['total'];
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }
    if (isset($_POST['domino'])) {
        $domino = implode(",", $_POST['domino']);
        try {
            $domino_cal = $conDB->prepare("SELECT *,SUM(FOOD_CAL) as total FROM food WHERE FOOD_ID IN ($domino)");
            $domino_cal->execute();
            $domino_cal_result = $domino_cal->fetch(PDO::FETCH_ASSOC);
            $domino_calsum = $domino_cal_result['total'];
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }
    if (isset($_POST['subway'])) {
        $subway = implode(",", $_POST['subway']);
        try {
            $subway_cal = $conDB->prepare("SELECT *,SUM(FOOD_CAL) as total FROM food WHERE FOOD_ID IN ($subway)");
            $subway_cal->execute();
            $subway_cal_result = $subway_cal->fetch(PDO::FETCH_ASSOC);
            $subway_calsum = $subway_cal_result['total'];
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }
    if (isset($_POST['dairyqueen'])) {
        $dairyqueen = implode(",", $_POST['dairyqueen']);
        try {
            $dairyqueen_cal = $conDB->prepare("SELECT *,SUM(FOOD_CAL) as total FROM food WHERE FOOD_ID IN ($dairyqueen)");
            $dairyqueen_cal->execute();
            $dairyqueen_cal_result = $dairyqueen_cal->fetch(PDO::FETCH_ASSOC);
            $dairyqueen_calsum = $dairyqueen_cal_result['total'];
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }
    if (isset($_POST['misterdonut'])) {
        $misterdonut = implode(",", $_POST['misterdonut']);
        try {
            $misterdonut_cal = $conDB->prepare("SELECT *,SUM(FOOD_CAL) as total FROM food WHERE FOOD_ID IN ($misterdonut)");
            $misterdonut_cal->execute();
            $misterdonut_cal_result = $misterdonut_cal->fetch(PDO::FETCH_ASSOC);
            $misterdonut_calsum = $misterdonut_cal_result['total'];
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }
    if (isset($_POST['krispykreme'])) {
        $krispykreme = implode(",", $_POST['krispykreme']);
        try {
            $krispykreme_cal = $conDB->prepare("SELECT *,SUM(FOOD_CAL) as total FROM food WHERE FOOD_ID IN ($krispykreme)");
            $krispykreme_cal->execute();
            $krispykreme_cal_result = $krispykreme_cal->fetch(PDO::FETCH_ASSOC);
            $krispykreme_calsum = $krispykreme_cal_result['total'];
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }
    if (isset($_POST['dunkindonut'])) {
        $dunkindonut = implode(",", $_POST['dunkindonut']);
        try {
            $dunkindonut_cal = $conDB->prepare("SELECT *,SUM(FOOD_CAL) as total FROM food WHERE FOOD_ID IN ($dunkindonut)");
            $dunkindonut_cal->execute();
            $dunkindonut_cal_result = $dunkindonut_cal->fetch(PDO::FETCH_ASSOC);
            $dunkindonut_calsum = $dunkindonut_cal_result['total'];
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }
    if (isset($_POST['haagendazs'])) {
        $haagendazs = implode(",", $_POST['haagendazs']);
        try {
            $haagendazs_cal = $conDB->prepare("SELECT *,SUM(FOOD_CAL) as total FROM food WHERE FOOD_ID IN ($haagendazs)");
            $haagendazs_cal->execute();
            $haagendazs_cal_result = $haagendazs_cal->fetch(PDO::FETCH_ASSOC);
            $haagendazs_calsum = $haagendazs_cal_result['total'];
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }
    if (isset($_POST['baskinrobbins'])) {
        $baskinrobbins = implode(",", $_POST['baskinrobbins']);
        try {
            $baskinrobbins_cal = $conDB->prepare("SELECT *,SUM(FOOD_CAL) as total FROM food WHERE FOOD_ID IN ($baskinrobbins)");
            $baskinrobbins_cal->execute();
            $baskinrobbins_cal_result = $baskinrobbins_cal->fetch(PDO::FETCH_ASSOC);
            $baskinrobbins_calsum = $baskinrobbins_cal_result['total'];
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }
    if (isset($_POST['pizzahut'])) {
        $pizzahut = implode(",", $_POST['pizzahut']);
        try {
            $pizzahut_cal = $conDB->prepare("SELECT *,SUM(FOOD_CAL) as total FROM food WHERE FOOD_ID IN ($pizzahut)");
            $pizzahut_cal->execute();
            $pizzahut_cal_result = $pizzahut_cal->fetch(PDO::FETCH_ASSOC);
            $pizzahut_calsum = $pizzahut_cal_result['total'];
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }
    $sum = $kfc_calsum+$mcdonald_calsum+$bonchon_calsum+$burgerking_calsum+$domino_calsum+$subway_calsum+$misterdonut_calsum+$krispykreme_calsum+$dunkindonut_calsum+$haagendazs_calsum+$baskinrobbins_calsum+$pizzahut_calsum;
    $json = json_encode(array("status" => "200","data"=> $sum ),JSON_PRETTY_PRINT);
    http_response_code(200);
    echo $json;
}
