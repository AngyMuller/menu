// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package menu.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Version;
import menu.domain.Ingredient;

privileged aspect Ingredient_Roo_Jpa_Entity {
    
    declare @type: Ingredient: @Entity;
    
    @Id
    @SequenceGenerator(name = "ingredientGen", sequenceName = "INGREDIENT_SEQ")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "ingredientGen")
    @Column(name = "id")
    private Long Ingredient.id;
    
    @Version
    @Column(name = "version")
    private Integer Ingredient.version;
    
    public Long Ingredient.getId() {
        return this.id;
    }
    
    public void Ingredient.setId(Long id) {
        this.id = id;
    }
    
    public Integer Ingredient.getVersion() {
        return this.version;
    }
    
    public void Ingredient.setVersion(Integer version) {
        this.version = version;
    }
    
}
