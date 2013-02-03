package menu.web;

import menu.domain.ReceipeIngredient;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/receipeingredients")
@Controller
@RooWebScaffold(path = "receipeingredients", formBackingObject = ReceipeIngredient.class)
public class ReceipeIngredientController {
}
