<?php
session_start();

unset($_SESSION['user']);
unset($_SESSION['permissao']);

// $_SESSION['user'] = 'jenifer_m_ribeiro';
// $_SESSION['permissao'] = 'administrador';

header("Location: http://localhost/supermercado/login");
?>