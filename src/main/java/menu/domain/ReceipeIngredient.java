package menu.domain;

import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;
import menu.reference.Unit;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "RECEIPEINGREDIENT_SEQ")
public class ReceipeIngredient {

    @Enumerated
    private Unit unit;

    private double quantity;

    @ManyToOne
    private Dish dish;

    @ManyToOne
    private Ingredient ingredient;
}
