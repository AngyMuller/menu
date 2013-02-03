package menu.web;

import menu.domain.Dish;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/dishes")
@Controller
@RooWebScaffold(path = "dishes", formBackingObject = Dish.class)
public class DishController {
}
