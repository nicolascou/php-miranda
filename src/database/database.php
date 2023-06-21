<?php

class Database {
    private $DB_HOST;
    private $DB_USER;
    private $DB_NAME;
    private $DB_PASSWORD;

    function __constructor() {
        $this->DB_HOST = getenv('DB_HOST');
        $this->DB_USER = getenv('DB_USER');
        $this->DB_NAME = getenv('DB_NAME');
        $this->DB_PASSWORD = getenv('DB_PASSWORD');
    }

    function query(string $q) {
        $mysqli = new mysqli($this->DB_HOST, $this->DB_USER, $this->DB_PASSWORD, $this->DB_PASSWORD);
        if ($mysqli->connect_errno) {
            echo "Failed to connect to MySQL: " . $mysqli->connect_errno;
            exit();
        }
        $result = $mysqli->query($q);
        $result->fetch_all(MYSQLI_ASSOC);
        $result->free_result();
        $mysqli->close();
    }
}