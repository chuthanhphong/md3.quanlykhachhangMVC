package Service;

import com.codegym.Model.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> findAll();
    void save(Customer customer);
    Customer findbyId(int id);
    void update(int id,Customer customer);
    void remove(int id);

}
