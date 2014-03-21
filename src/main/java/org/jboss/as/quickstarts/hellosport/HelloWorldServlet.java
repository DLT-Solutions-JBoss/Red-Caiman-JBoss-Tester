/*
 * JBoss, Home of Professional Open Source
 * Copyright 2012, Red Hat, Inc. and/or its affiliates, and individual
 * contributors by the @authors tag. See the copyright.txt in the
 * distribution for a full listing of individual contributors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.jboss.as.quickstarts.hellosport;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.StringTokenizer;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * <p>
 * A simple servlet taking advantage of features added in 3.0.
 * </p>
 *
 * <p>
 * The servlet is registered and mapped to /HelloServlet using the {@linkplain WebServlet
 * @HttpServlet}. The {@link HelloService} is injected by CDI.
 * </p>
 *
 * @author Pete Muir / Rick Stewart
 *
 */
@SuppressWarnings("serial")
@WebServlet("/HelloWorld")
public class HelloWorldServlet extends HttpServlet {

   static String PAGE_HEADER = "<html><head><title>Hello from DLT Solutions</title><body>";

   static String PAGE_FOOTER = "</body></html>";

   @Inject
   HelloService helloService;

   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

          int iDelay = 0;

      resp.setContentType("text/html");
      PrintWriter writer = resp.getWriter();

      if(req.getParameter("delay") != null)
      {
          try
          {
                  iDelay = Integer.valueOf(req.getParameter("delay"));
          }
          catch(Exception e)
          {
                  //Do nothing and let delay = zero
          }
      }

      writer.println(PAGE_HEADER);
      writer.println("This build can take an input parm and pass it to helloService for delay...");
      writer.println("<h1>" + helloService.createHelloMessage(req.getHeader("x-forwarded-for"), iDelay) + "</h1>");
      writer.println("<p>Date / Time = "+new Date().toString()+"</p>");
      writer.println(PAGE_FOOTER);
      writer.close();
   }

}
