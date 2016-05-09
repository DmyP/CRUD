package DB.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name="User")
public class User {

    @Id
    @GeneratedValue
    private Integer id;
    private String name;
    private Integer age;
    private boolean isAdmin;
    private Date createdDate;

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public Integer getAge() {
        return age;
    }
    public void setAge(Integer rating) {
        this.age = rating;
    }
    public boolean getIsAdmin() {
        return isAdmin;
    }
    public Date getCreatedDate() {
        return createdDate;
    }
    public void setIsAdmin(boolean admin) {
        isAdmin = admin;
    }
    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    @Override
    public String toString() {
        return String.format("{ %d, %s, %d, %s, %tD }", getId(), getName(), getAge(), getIsAdmin(), getCreatedDate());
    }
}
