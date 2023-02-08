<?php

    session_start();
    require_once '../config/connect.php';

    $fill_name = $_POST['fill_name'];
    $login = $_POST['login'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $password_confirm = $_POST['password_confirm'];
    $status = $_POST['status'];

    if ($password === $password_confirm){
        $path = 'uploads/'.time(). $_FILES['img']['name'];
        if (!move_uploaded_file($_FILES['img']['tmp_name'], '../'.$path)){
            $_SESSION['message'] = 'Ошибка загрузки изображения';
            header('location: ../register.php');
        }
//        $password = md5($password);
        if ($_POST['status']){
            $status = 1;
        } else{
            $status = 0;
        }

        mysqli_query($connect, "INSERT INTO `users` (`id_user`, `full_name`, `login`, `email`, `password`, `avatar`, `status`) VALUES (NULL, '$fill_name', '$login', '$email', '$password', '$path', '$status')") or die(mysqli_error($connect));
        $_SESSION['message'] = 'Регистрация прошла успешно';
        header('location: ../index.php');
    } else {
        $_SESSION['message'] = 'Пароли не совпадают';
        header('location: ../register.php');
    }
    ?>
    <pre>
        <?= print_r($_POST) ?>
    </pre>