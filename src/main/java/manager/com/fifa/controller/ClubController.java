package manager.com.fifa.controller;

import manager.com.fifa.exception.ClubException;
import manager.com.fifa.model.Club;
import manager.com.fifa.service.ClubService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping("/league/{leagueId}/club")
public class ClubController {

    private final ClubService clubService;
    @Autowired
    public ClubController(ClubService clubService) {
        this.clubService = clubService;
    }


    @GetMapping()
    public String allClubByDepId(@PathVariable("leagueId") int leagueId, Model model) {
        model.addAttribute("club", clubService.findByLeagueId(leagueId));
        return "club/club";
    }


    @GetMapping("/{id}/clubShowById")
    public String clubById(@PathVariable("leagueId") int leagueId,
                          @PathVariable("id") int id,
                          Model model){
        model.addAttribute("club", clubService.findById(id));
        return "club/clubShowById";
    }


    @GetMapping("/newClub")
    public String newClub(@ModelAttribute("club") Club club) {
        return "club/clubAdd";
    }

    @PostMapping("/createClub")
    public String createClub(@PathVariable("leagueId") int leagueId,
                            @ModelAttribute("club")
                            @Valid Club club, Model model,
                            BindingResult bindingResult) {
        if (bindingResult.hasErrors())
            return "club/clubAdd";
        try {
            clubService.create(club);
            return "redirect:/league/{leagueId}/club";
        }catch (ClubException error){
            model.addAttribute("club", club);
            model.addAttribute("error", error.violations);
            model.addAttribute("errorMsg", error.getMessage());
            return "club/clubAdd";
        }
    }
    @GetMapping("/{id}/editClub")
    public String editClub(
            @PathVariable("leagueId") int leagueId,
            @PathVariable("id") int id,
            Model model) {
        model.addAttribute("club", clubService.findById(id));
        return "club/clubEdit";
    }

    @PostMapping("/{id}/edit")
    public String updateClub(@ModelAttribute("club")
                                @Valid Club club, BindingResult bindingResult,
                            @PathVariable("leagueId") int leagueId,
                            @PathVariable("id") int id,
                            Model model) {
        if (bindingResult.hasErrors())
            return "club/clubEdit";
        try {
            clubService.update(club);
            return "redirect:/league/{leagueId}/club/{id}/clubShowById";
        }catch (ClubException error){
            model.addAttribute("club", club);
            model.addAttribute("error", error.violations);
            model.addAttribute("errorMsg", error.getMessage());
            return "club/clubEdit";
        }
    }

    @GetMapping("/{id}/delClub")
    public String delete(Model model,
                         @PathVariable("id") int id, @PathVariable int leagueId){
                         model.addAttribute("club",
                         clubService.findById(id));
        return "club/clubDelete";
    }

    @PostMapping("/{id}/delete")
    public String deleteClub(Model model,
                            @ModelAttribute("club")
                            @Valid Club club,
                            @PathVariable("id") int id) {
        clubService.delete(club);
        return "redirect:/league/{leagueId}/club";
    }
}
