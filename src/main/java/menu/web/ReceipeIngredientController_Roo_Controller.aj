// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package menu.web;

import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import menu.domain.Dish;
import menu.domain.Ingredient;
import menu.domain.ReceipeIngredient;
import menu.reference.Unit;
import menu.web.ReceipeIngredientController;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect ReceipeIngredientController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String ReceipeIngredientController.create(@Valid ReceipeIngredient receipeIngredient, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, receipeIngredient);
            return "receipeingredients/create";
        }
        uiModel.asMap().clear();
        receipeIngredient.persist();
        return "redirect:/receipeingredients/" + encodeUrlPathSegment(receipeIngredient.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String ReceipeIngredientController.createForm(Model uiModel) {
        populateEditForm(uiModel, new ReceipeIngredient());
        return "receipeingredients/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String ReceipeIngredientController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("receipeingredient", ReceipeIngredient.findReceipeIngredient(id));
        uiModel.addAttribute("itemId", id);
        return "receipeingredients/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String ReceipeIngredientController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("receipeingredients", ReceipeIngredient.findReceipeIngredientEntries(firstResult, sizeNo));
            float nrOfPages = (float) ReceipeIngredient.countReceipeIngredients() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("receipeingredients", ReceipeIngredient.findAllReceipeIngredients());
        }
        return "receipeingredients/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String ReceipeIngredientController.update(@Valid ReceipeIngredient receipeIngredient, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, receipeIngredient);
            return "receipeingredients/update";
        }
        uiModel.asMap().clear();
        receipeIngredient.merge();
        return "redirect:/receipeingredients/" + encodeUrlPathSegment(receipeIngredient.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String ReceipeIngredientController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, ReceipeIngredient.findReceipeIngredient(id));
        return "receipeingredients/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String ReceipeIngredientController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        ReceipeIngredient receipeIngredient = ReceipeIngredient.findReceipeIngredient(id);
        receipeIngredient.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/receipeingredients";
    }
    
    void ReceipeIngredientController.populateEditForm(Model uiModel, ReceipeIngredient receipeIngredient) {
        uiModel.addAttribute("receipeIngredient", receipeIngredient);
        uiModel.addAttribute("dishes", Dish.findAllDishes());
        uiModel.addAttribute("ingredients", Ingredient.findAllIngredients());
        uiModel.addAttribute("units", Arrays.asList(Unit.values()));
    }
    
    String ReceipeIngredientController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}