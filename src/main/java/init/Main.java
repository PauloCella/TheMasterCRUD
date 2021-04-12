package init;

import org.apache.catalina.LifecycleException;
import org.apache.catalina.WebResourceRoot;
import org.apache.catalina.core.StandardContext;
import org.apache.catalina.startup.Tomcat;
import org.apache.catalina.webresources.DirResourceSet;
import org.apache.catalina.webresources.StandardRoot;

import java.io.File;

import static java.lang.String.format;

public class Main {

    public static void main(String[] args) {
        final int WEB_PORT = 8080;
        final String WEB_DIR = "src/main/webapp";

        Tomcat tomcat = new Tomcat();
        tomcat.setPort(WEB_PORT);

        File additionWebInfClasses = new File("target/classes");

        StandardContext ctx = (StandardContext) tomcat.addWebapp("", new File(WEB_DIR).getAbsolutePath());
        WebResourceRoot resources = new StandardRoot(ctx);
        resources.addPreResources(new DirResourceSet(resources, "/WEB-INF/classes", additionWebInfClasses.getAbsolutePath(), "/"));
        ctx.setResources(resources);

        tomcat.enableNaming();
        tomcat.getConnector();

        try {
            tomcat.start();
            System.out.println(format("Aplicacao rodando em http://localhost:%d", WEB_PORT));
        } catch (LifecycleException e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
        }

        tomcat.getServer().await();
    }

}
