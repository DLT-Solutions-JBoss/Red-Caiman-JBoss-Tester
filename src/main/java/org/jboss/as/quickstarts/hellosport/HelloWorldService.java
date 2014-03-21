package org.jboss.as.quickstarts.hellosport;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;

@Path("/HelloREST")
public class HelloWorldService {

        @GET()
        @Produces("text/plain")
        public String sayHello() {
            return "Hey World!";
        }

        @GET()
        @Path("/{name}")
        @Produces("text/plain")
        public String sayHellotoFriend(@PathParam("name") String fName) {
            return "Hello "+fName+"!";
        }
}
