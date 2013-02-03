// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package menu.domain;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import menu.domain.Realisation;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Realisation_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Realisation.entityManager;
    
    public static final EntityManager Realisation.entityManager() {
        EntityManager em = new Realisation().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Realisation.countRealisations() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Realisation o", Long.class).getSingleResult();
    }
    
    public static List<Realisation> Realisation.findAllRealisations() {
        return entityManager().createQuery("SELECT o FROM Realisation o", Realisation.class).getResultList();
    }
    
    public static Realisation Realisation.findRealisation(Long id) {
        if (id == null) return null;
        return entityManager().find(Realisation.class, id);
    }
    
    public static List<Realisation> Realisation.findRealisationEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Realisation o", Realisation.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Realisation.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Realisation.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Realisation attached = Realisation.findRealisation(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Realisation.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Realisation.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Realisation Realisation.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Realisation merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}