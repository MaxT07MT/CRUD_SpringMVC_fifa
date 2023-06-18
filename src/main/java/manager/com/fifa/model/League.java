package manager.com.fifa.model;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import net.sf.oval.constraints.NotEmpty;
import javax.persistence.*;

@Entity
@Table(name = "league_table")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class League {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "name")
    @NotEmpty(message = "Please Enter Name")
    private String name;

    @Column(name = "continent")
    @NotEmpty(message = "Please Enter league continent")
    private String continent;

    @Column(name = "country")
    @NotEmpty(message = "Please Enter your email")
    private String country;


    @Column(name = "description")
    private String description;



}