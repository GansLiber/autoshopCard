<?php

require_once 'config/connect.php';

?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Autoshop</title>
    <style>
        th, td {
            padding: 10px;
        }

        th {
            background-color: #e3c0c0;
        }

        td {
            background-color: #b2afaf;
        }
        .desc {
            width: 350px;
        }
    </style>
</head>
<body>
<table>
    <tr>
        <th>ID</th>
        <th>Бренд</th>
        <th>Объем двигателя</th>
        <th>Цена</th>
        <th>Год выпуска</th>
        <th>Описание</th>
    </tr>
    <?php
    $cars = mysqli_query($connect, "SELECT * FROM cars");
    $cars = mysqli_fetch_all($cars);
    foreach ($cars as $car) {
        ?>
        <tr>
            <td><?= $car[0] ?></td>
            <td><?= $car[1] ?></td>
            <td><?= $car[2] ?></td>
            <td><?= $car[3] ?></td>
            <td><?= $car[4] ?></td>
            <td class='desc'><?= $car[5] ?></td>
            <td><a href="update.php?id=<?= $car[0] ?>">Изменить</a></td>
            <td><a style="color:#9f0707" href="vendor/delete.php?id=<?= $car[0] ?>">Удалить</a></td>
        </tr>
        <?php
    }
    ?>
</table>
<form action="vendor/create.php" method="post">
    <p>Бренд</p>
    <input type="text" name="brend">
    <p>Объем двигателя</p>
    <input type="text" name="engine_capacity">
    <p>Цена</p>
    <input type="number" name="price">
    <p>Год выпуска</p>
    <input type="date" name="year_of_drop">
    <p>Описание</p>
    <textarea name="description" ></textarea><br><br>
    <button type="submit">Добавить</button>
</form>
<?php
print_r($_POST);
?>
</body>
</html>
