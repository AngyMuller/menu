package menu.web;

import menu.domain.Realisation;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/realisations")
@Controller
@RooWebScaffold(path = "realisations", formBackingObject = Realisation.class)
public class RealisationController {
}
