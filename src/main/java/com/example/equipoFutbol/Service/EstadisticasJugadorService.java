package com.example.equipoFutbol.Service;

import com.example.equipoFutbol.Model.EstadisticasJugador;
import com.example.equipoFutbol.Repository.EstadisticasJugadorRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class EstadisticasJugadorService {
    private final EstadisticasJugadorRepository estadisticasJugadorRepository;

     public List<EstadisticasJugador> findAll() {
        return estadisticasJugadorRepository.findAll();
    }

    public Optional<EstadisticasJugador> findById(Long id) {
        return estadisticasJugadorRepository.findById(id);
    }

    public EstadisticasJugador save(EstadisticasJugador estadisticasJugador) {
        return estadisticasJugadorRepository.save(estadisticasJugador);
    }

    public void deleteById(Long id) {
        estadisticasJugadorRepository.deleteById(id);
    }
}
