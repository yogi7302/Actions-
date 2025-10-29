package com.example;

import static spark.Spark.*;

public class HelloWorld {
    public static void main(String[] args) {
        // Set the port your app will listen on inside Docker
        port(8080);

        // Define the root endpoint "/"
        get("/", (req, res) -> {
            // Read "name" query parameter, default to "World" if not provided
            String name = req.queryParams("name");
            if (name == null || name.isEmpty()) name = "RAGE INDRA";
            return "Hello, " + name +  " ITS TIME FOR BGMI...";
        });
    }
}

