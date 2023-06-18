package manager.com.fifa.controller;


import manager.com.fifa.exception.LeagueException;
import manager.com.fifa.model.League;
import manager.com.fifa.service.LeagueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping("/league")
public class LeagueController {

    private final LeagueService leagueService;
    @Autowired
    public LeagueController(LeagueService leagueService) {
        this.leagueService = leagueService;
    }



    @GetMapping()
    public String allLeague(Model model) {
        model.addAttribute("league", leagueService.getAll());
        return "league/league";
    }


@GetMapping("/{id}")
public String leagueShowByIdDep(@PathVariable("id") int id, Model model) {
    model.addAttribute("league", leagueService.findById(id));
    return "league/leagueShowById";
}

    @GetMapping("/newLeague")
    public String newLeague(@ModelAttribute("league") League league) {

        return "league/leagueAdd";
    }


    @PostMapping("leagueAdd")
    public String createLeague(@ModelAttribute("league") @Valid League league, Model model,
                         BindingResult bindingResult) {
        if (bindingResult.hasErrors())
            return "league/leagueAdd";
            try {
                leagueService.create(league);
                return "redirect:/league";

            }catch (LeagueException error){
                model.addAttribute("league", league);
                model.addAttribute("error", error.violations);
                model.addAttribute("errorMsg", error.getMessage());
                return "league/leagueAdd";
            }

    }


    @GetMapping("/leagueEdit/{id}")
    public String editLeague(Model model, @PathVariable("id") int id) {
        model.addAttribute("league", leagueService.findById(id));
        return "league/leagueEdit";
    }

    @PostMapping("/edit/{id}")
    public String updateLeague(Model model,
                            @ModelAttribute("league")
                            @Valid League league,
                            BindingResult bindingResult,
                            @PathVariable("id") int id ) {
        if (bindingResult.hasErrors())
            return "league/leagueEdit";
        try {
            leagueService.update(league);
            return "redirect:/league/{id}";
        }catch (LeagueException error){
            model.addAttribute("league", league);
            model.addAttribute("error", error.violations);
            model.addAttribute("errorMsg", error.getMessage());
            return "league/leagueEdit";
        }

    }

    @GetMapping("/{id}/deleteLeague")
    public String doDeleteLeague(Model model, @ModelAttribute("league")
                              @Valid League league,
                              @PathVariable("id") int id) {
        model.addAttribute("league", leagueService.findById(id));
        return "league/leagueDelete";
    }
    @PostMapping("/{id}/delete")
    public String deleteLeague(Model model, @ModelAttribute("league")
    @Valid League league,
    @PathVariable("id") int id) {
        leagueService.delete(league);
        return "redirect:/league";
    }
}

