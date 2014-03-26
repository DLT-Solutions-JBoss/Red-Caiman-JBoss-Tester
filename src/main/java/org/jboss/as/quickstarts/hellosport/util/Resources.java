package org.jboss.as.quickstarts.hellosport.util;

import java.util.logging.Logger;

import javax.enterprise.context.RequestScoped;
import javax.enterprise.inject.Produces;
import javax.enterprise.inject.spi.InjectionPoint;
import javax.faces.context.FacesContext;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;

import org.jboss.as.quickstarts.hellosport.rest.SportService;
import org.jboss.as.quickstarts.hellosport.rest.SportService.ServiceType;


/**
 * This class uses CDI to alias Java EE resources, such as the persistence context, to CDI beans
 *
 * <p>
 * Example injection on a managed bean field:
 * </p>
 *
 * <pre>
 * &#064;Inject
 * private EntityManager em;
 * </pre>
 */
public class Resources {
    // use @SuppressWarnings to tell IDE to ignore warnings about field not being referenced directly
    @Produces
    @PersistenceContext(unitName="NFL", type=PersistenceContextType.EXTENDED)  //Mysql
    private EntityManager emNfl;

    @Produces
    @PersistenceContext(unitName="NHL", type=PersistenceContextType.EXTENDED)  //PosgresSQL
    private EntityManager emNhl;

    @Produces
    public Logger produceLog(InjectionPoint injectionPoint) {
        return Logger.getLogger(injectionPoint.getMember().getDeclaringClass().getName());
    }
    
    @Produces
    @PersistenceContext(unitName="NBA", type=PersistenceContextType.EXTENDED)  //AWS RDS MySql
    private EntityManager emNba;
    
    @Produces
    @PersistenceContext(unitName="MLB", type=PersistenceContextType.EXTENDED)  //AWS RDS Oracle
    private EntityManager emMlb;
    
    @Produces
    @RequestScoped
    public FacesContext produceFacesContext() {
        return FacesContext.getCurrentInstance();
    }

}
