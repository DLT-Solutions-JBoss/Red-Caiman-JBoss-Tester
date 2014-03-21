package org.jboss.as.quickstarts.hellosport.rest;

import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

import java.lang.annotation.Annotation;
import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;
import javax.persistence.Query;

import org.jboss.as.quickstarts.helloworld.model.Player;
import org.jboss.as.quickstarts.helloworld.model.Team;
import org.jboss.as.quickstarts.helloworld.rest.SportService;


//Dummy comment
@Path("/NFL")
public class NflService implements SportService{

        @SportService(ServiceType.NFL)
        @PersistenceContext(unitName="NFL", type=PersistenceContextType.EXTENDED)
        private EntityManager emNfl;

        @GET()
        @Path("players")
        @Produces("application/json")
        @SportService(ServiceType.NFL)
        public List<Player> listPlayers()
        {
                Query query = emNfl.createQuery("FROM org.jboss.as.quickstarts.helloworld.model.Player order by last_name, first_name");
                @SuppressWarnings("unchecked")
                List <Player> player = query.getResultList();

                return player;
        }

        @GET()
        @Path("teams")
        @Produces("application/json")
        @SportService(ServiceType.NFL)
        public List<Team> listTeams()        {
                Query query = emNfl.createQuery("FROM org.jboss.as.quickstarts.helloworld.model.Team order by conference, division, city, name");
                @SuppressWarnings("unchecked")
                List <Team> team = query.getResultList();

                return team;
        }

        @GET()
        @Path("team/{teamId}")
        @Produces("application/json")
        @SportService(ServiceType.NFL)
        public List<Player> listTeam(@PathParam("teamId") int iTeamId)
        {
                Query query = emNfl.createQuery("FROM org.jboss.as.quickstarts.helloworld.model.Player where team_id = ?1 order by last_name, first_name");
                query.setParameter(1,iTeamId);
                @SuppressWarnings("unchecked")
                List <Player> player = query.getResultList();

                return player;
        }
        @Override
        public Class<? extends Annotation> annotationType() {
                // TODO Auto-generated method stub
                return null;
        }
        @Override
        public ServiceType value() {
                // TODO Auto-generated method stub
                return null;
        }
}

