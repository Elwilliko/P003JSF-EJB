package ups.edu.ec.ejb;

import ups.edu.ec.entidad.*;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless
public class CiudadFacade extends AbstractFacade<Ciudad> {
    @PersistenceContext(unitName = "Practica_003")
    private EntityManager entityManager;

    public CiudadFacade(){
        super(Ciudad.class);
    }

    @Override
    protected EntityManager getEntityManager(){
        return entityManager;
    }
}
