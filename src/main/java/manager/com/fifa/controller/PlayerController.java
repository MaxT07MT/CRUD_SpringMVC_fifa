package manager.com.fifa.controller;

import manager.com.fifa.exception.ClubException;
import manager.com.fifa.model.Player;
import manager.com.fifa.service.PlayerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping("/league/{leagueId}/club/{clubId}/player")
public class PlayerController {
  private final  PlayerService playerService;


    @Autowired
    public PlayerController(PlayerService playerService) {
        this.playerService = playerService;

    }

    @GetMapping()
    public String allPlayerByClubId(@PathVariable("clubId") int clubId, Model model,
                                    @PathVariable("leagueId") int leagueId) {
        model.addAttribute("player", playerService.findByClubId(clubId, leagueId));
        return "player/player";
    }
    @GetMapping("/{id}/playerShowById")
    public String playerById(@PathVariable("leagueId") int leagueId,
                          @PathVariable("clubId") int clubId,
                          @PathVariable("id") int id,
                          Model model){
        model.addAttribute("player", playerService.findPlayerById(id));
        return "player/playerShowById";
    }


    @GetMapping("/newPlayer")
    public String newPlayer(@ModelAttribute("player") Player player) {

        return "player/playerAdd";
    }

    @PostMapping("/createPlayer")
    public String createPlayer(@PathVariable("leagueId") int leagueId,
                            @PathVariable("clubId") int clubId,
                            @ModelAttribute("player")
                            @Valid Player player, Model model,
                            BindingResult bindingResult) {
        if (bindingResult.hasErrors())
            return "player/playerAdd";
        try {
            playerService.createPlayer(player);
            return "redirect:/league/{leagueId}/club/{clubId}/player";
        }catch (ClubException error){
            model.addAttribute("player", player);
            model.addAttribute("error", error.violations);
            model.addAttribute("errorMsg", error.getMessage());
            return "player/playerAdd";
        }
    }
    @GetMapping("/{id}/editPlayer")
    public String editPlayer(
            @PathVariable("leagueId") int leagueId,
            @PathVariable("clubId") int clubId,
            @PathVariable("id") int id,
            Model model) {
        model.addAttribute("player", playerService.findPlayerById(id));
        return "player/playerEdit";
    }

    @PostMapping("/{id}/edit")
    public String updatePlayer(@ModelAttribute("player")
                            @Valid Player player, BindingResult bindingResult,
                            @PathVariable("leagueId") int leagueId,
                            @PathVariable("clubId") int clubId,
                            @PathVariable("id") int id,
                            Model model) {
        if (bindingResult.hasErrors())
            return "player/playerEdit";
        try {
            playerService.updatePlayer(player);
            return "redirect:/league/{leagueId}/club/{clubId}/player/{id}/playerShowById";
        }catch (ClubException error){
            model.addAttribute("player", player);
            model.addAttribute("error", error.violations);
            model.addAttribute("errorMsg", error.getMessage());
            return "player/playerEdit";
        }
    }

    @GetMapping("/{id}/delPlayer")
    public String delete(Model model,
                         @PathVariable("clubId") int clubId,
                         @PathVariable("id") int id,
                         @PathVariable int leagueId){
        model.addAttribute("player",
                playerService.findPlayerById(id));
        return "player/playerDelete";
    }

    @PostMapping("/{id}/delete")
    public String deleteEmp(Model model,
                            @ModelAttribute("player")
                            @Valid Player player,
                            @PathVariable("id") int id) {
        playerService.deletePlayer(player);
        return "redirect:/league/{leagueId}/club/{clubId}/player";
    }
}
