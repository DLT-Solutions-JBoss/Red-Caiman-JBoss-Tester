package org.jboss.as.quickstarts.hellosport.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
@Entity
@Table(name="team")
public class Team {

        @Id
        @Column(name = "id")
        int id;

        @Column(name= "city")
        String city;

        @Column(name= "name")
        String name;

        @Column(name= "conference")
        String conference;

        @Column(name= "division")
        String division;

        public Team()
        {
        }

        public int getId() {
                return id;
        }

        public void setId(int id) {
                this.id = id;
        }

        public String getCity() {
                return city;
        }

        public void setCity(String city) {
                this.city = city;
        }

        public String getName() {
                return name;
        }

        public void setName(String name) {
                this.name = name;
        }

        public String getConference() {
                return conference;
        }

        public void setConference(String conference) {
                this.conference = conference;
        }

        public String getDivision() {
                return division;
        }

        public void setDivision(String division) {
                this.division = division;
        }

}
