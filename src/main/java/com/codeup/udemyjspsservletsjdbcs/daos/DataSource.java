package com.codeup.udemyjspsservletsjdbcs.daos;

import javax.annotation.Resource;

@Resource(name = "jdbc/students_db")
public class DataSource {

    public static String getUrl() {
        return "jdbc:mysql://localhost:3306/students_db?allowPublicKeyRetrieval=true&useSSL=false";
    }

    public static String getUsername() {
        return "root";
    }

    public static String getPassword() {
        return "codeup";
    }

}

