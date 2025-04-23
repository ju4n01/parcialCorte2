package com.example.equipoFutbol.Repository;

import com.example.equipoFutbol.Model.Jugador;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface JugadorRepository extends JpaRepository<Jugador, Long> {

    @Query(value = "SELECT * FROM jugador WHERE id_equipo = :id_equipo", nativeQuery = true)
    List<Jugador> listarJugadoresporEquipo(@Param("id_equipo") Long id_equipo);

    @Query(value = "SELECT j.* FROM jugador j JOIN estadistica_jugador e ON j.id_jugador = e.id_jugador GROUP BY j.id_jugador  HAVING SUM(e.goles) > :goles", nativeQuery = true)
    List<Jugador> listarJugadoresConMasDeXGoles(@Param("goles") int goles);

}
