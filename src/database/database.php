<?php

require_once "../../config.php";

class Database {
    private $host;
    private $user;
    private $name;
    private $password;

    function __construct() {
        global $DB_HOST, $DB_USER, $DB_NAME, $DB_PASSWORD;
        $this->host = $DB_HOST;
        $this->user = $DB_USER;
        $this->name = $DB_NAME;
        $this->password = $DB_PASSWORD;
    }

    function query(string $q) {
        $mysqli = new mysqli($this->host, $this->user, $this->password, $this->name);
        if ($mysqli->connect_errno) {
            echo "Failed to connect to MySQL: " . $mysqli->connect_errno;
            exit();
        }
        
        $result = $mysqli->query($q);
        if (!$result) {
            echo "Query execution failed: " . $mysqli->error;
            $mysqli->close();
            exit();
        }
        
        $rows = $result->fetch_all(MYSQLI_ASSOC);
        
        $result->free_result();
        $mysqli->close();
        return $rows;
    }
}