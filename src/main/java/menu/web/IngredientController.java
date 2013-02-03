package menu.web;

import menu.domain.Ingredient;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ingredients")
@Controller
@RooWebScaffold(path = "ingredients", formBackingObject = Ingredient.class)
public class IngredientController {
}
