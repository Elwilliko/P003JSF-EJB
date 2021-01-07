package ups.edu.ec.ejb;

import ups.edu.ec.entidad.*;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless
public class RolFacade extends AbstractFacade<Rol> {
    @PersistenceContext(unitName = "Practica_003")
    private EntityManager entityManager;

    public RolFacade() {
        super(Rol.class);
    }

    @Override
    protected EntityManager getEntityManager() {
        return entityManager;
    }
}