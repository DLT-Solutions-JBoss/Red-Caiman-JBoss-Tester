package org.jboss.as.quickstarts.hellosport.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
@Entity
@Table(name="player")
public class Player {

        @Id
        @Column(name = "id")
        int id;

        @Column(name= "first_name")
        String first_name;

        @Column(name= "last_name")
        String last_name;

        @Column(name= "position")
        String position;

        public Player()
        {
        }

        public int getId() {
                return id;
        }

        public void setId(int id) {
                this.id = id;
        }

        public String getFirstName() {
                return first_name;
        }

        public void setFirstName(String first_name) {
                this.first_name = first_name;
        }

        public String getLastName() {
                return last_name;
        }

        public void setLastName(String last_name) {
                this.last_name = last_name;
        }

        public String getPosition() {
                return position;
        }

        public void setPosition(String position) {
                this.position = position;
        }

}
