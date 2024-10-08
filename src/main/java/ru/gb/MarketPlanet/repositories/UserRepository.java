package ru.gb.MarketPlanet.repositories;

import ru.gb.MarketPlanet.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}
