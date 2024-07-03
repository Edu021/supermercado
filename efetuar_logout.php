<?php
session_start();

unset($_SESSION['user']);
unset($_SESSION['permissao']);

// $_SESSION['user'] = 'jenifer_m_ribeiro';
// $_SESSION['permissao'] = 'administrador';

header("Location: http://3.21.113.127/supermercado/login");
?>