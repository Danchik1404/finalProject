package ru.gb.MarketPlanet.repositories;

import ru.gb.MarketPlanet.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image, Long> {
}
