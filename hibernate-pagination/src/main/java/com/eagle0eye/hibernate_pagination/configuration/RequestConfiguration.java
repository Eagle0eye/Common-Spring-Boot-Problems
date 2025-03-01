package com.eagle0eye.hibernate_pagination.configuration;

import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Component
public class RequestConfiguration {
    private final List<String> clients = new ArrayList<>(
            Arrays.asList("postman","front-end")
    );
    private RequestConfiguration(){}
    public boolean checkClient(String client){
        return clients.stream().anyMatch(x_client -> x_client.equals(client));
    }
}
