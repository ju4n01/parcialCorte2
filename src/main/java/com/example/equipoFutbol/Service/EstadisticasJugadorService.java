package com.example.equipoFutbol.Service;

import com.example.equipoFutbol.Model.EstadisticasJugador;
import com.example.equipoFutbol.Repository.EstadisticasJugadorRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EstadisticasJugadorService {
    private final EstadisticasJugadorRepository estadisticasJugadorRepository;

    public EstadisticasJugadorService(EstadisticasJugadorRepository estadisticasJugadorRepository) {
        this.estadisticasJugadorRepository = estadisticasJugadorRepository;
    }

    public EstadisticasJugador guardar(EstadisticasJugador estadisticasJugador) {
        try {
            return estadisticasJugadorRepository.save(estadisticasJugador);
        } catch (Exception e) {
            throw new RuntimeException("Error al guardar la información de la estadistica del jugador" + e.getMessage(), e);
        }
    }

    public List<EstadisticasJugador> listar(){
        try {
            return estadisticasJugadorRepository.findAll();
        } catch (Exception e) {
            throw new RuntimeException("Error al listar las estadisticas de todos los jugadores" + e.getMessage(), e);
        }
    }

    public void eliminar(Long id_estadisticas){
        try {
            if (!estadisticasJugadorRepository.existsById(id_estadisticas)) {
                throw new IllegalArgumentException("No se encontró una estadistica con el ID " + id_estadisticas);
            }
            estadisticasJugadorRepository.deleteById(id_estadisticas);
        } catch (Exception e) {
            throw new RuntimeException("Error al eliminar las estadistica" + e.getMessage(), e);
        }
    }

    public Optional<EstadisticasJugador> listarPorId(long id_estadisticas) {
        try {
            Optional<EstadisticasJugador> estadisticasJugador = estadisticasJugadorRepository.findById(id_estadisticas);
            if (estadisticasJugador.isEmpty()) {
                throw new IllegalArgumentException("Estadistica con ID " + id_estadisticas + " no encontrada.");
            }
            return estadisticasJugador;
        } catch (Exception e) {
            throw new RuntimeException("Error al buscar una estadistica por ID" + e.getMessage(), e);
        }
    }
}
