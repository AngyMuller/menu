package menu.domain;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "DISH_SEQ")
public class Dish {

    private int preparationTime;

    private int cookingTime;

    private String reference;

    @NotNull
    private String title;

    @OneToMany(cascade = CascadeType.ALL)
    private Set<ReceipeIngredient> receipeingredients = new HashSet<ReceipeIngredient>();

    @OneToMany(cascade = CascadeType.ALL)
    private Set<Realisation> realisations = new HashSet<Realisation>();
}
