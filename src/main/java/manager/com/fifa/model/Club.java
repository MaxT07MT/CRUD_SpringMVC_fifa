package manager.com.fifa.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import net.sf.oval.constraints.NotEmpty;


import javax.persistence.*;

@Entity
@Table(name = "club_table")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Club {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private int id;


    @Column(name = "name")
    @NotEmpty(message = "Name has to be filled")
    private String name;

    @Column(name = "country")
    @NotEmpty(message = "Country has to be filled")
    private String country;


    @Column(name = "city")
    @NotEmpty(message = "City has to be filled")
    private String city;

    @Column(name = "mainCouch")
    @NotEmpty(message = "Field 'mainCouch' has to be filled")
    private String mainCouch;



    @Column(name = "championLeague")
    @NotEmpty(message = "field 'championLeague' has  to be filled")
    private String championLeague;


    @Column(name = "championECC")
    private String championECC;


    @Column(name = "championUEFA")
    private String championUEFA;

    @Column(name = "description")
    private String description;

    @Column(name = "leagueId")
    private int leagueId;

    @JoinColumn(name = "leagueId", insertable = false, updatable = false)
    @ManyToOne(fetch = FetchType.LAZY)
    private League league;




}
