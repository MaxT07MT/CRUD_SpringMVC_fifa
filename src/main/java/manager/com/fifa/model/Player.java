package manager.com.fifa.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import net.sf.oval.constraints.NotEmpty;

import javax.persistence.*;

@Entity
@Table(name = "player_table")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Player {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "firstname")
    @NotEmpty(message = "input firstname")
    private String firstname;

    @Column(name = "lastname")
    @NotEmpty(message = "input lastname")
    private String lastname;

    @Column(name = "birth")
    @NotEmpty(message = "input birth")
    private String birth;

    @Column(name = "position")
    @NotEmpty(message = "input position")
    private String position;

    @Column(name = "role")
    @NotEmpty(message = "input role")
    private String role;

    @Column(name = "preferredFoot")
    @NotEmpty(message = "input preferredFoot")
    private String preferredFoot;

    @Column(name = "country")
    @NotEmpty(message = "input country")
    private String country;

    @Column(name = "clubId")
    private Integer clubId;

    @Column(name = "leagueId")
    private Integer leagueId;

    @JoinColumn(name = "clubId", insertable = false, updatable = false)
    @ManyToOne(fetch = FetchType.LAZY)
    private Club club;

    @JoinColumn(name = "leagueId", insertable = false, updatable = false)
    @ManyToOne(fetch = FetchType.LAZY)
    private League league;
}

