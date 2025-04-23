package com.example.equipoFutbol.Controller;

import com.example.equipoFutbol.Model.EstadisticasJugador;
import com.example.equipoFutbol.Service.EstadisticasJugadorService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/estadisticas-jugador")
@RequiredArgsConstructor
public class EstadisticasJugadorController {
    private final EstadisticasJugadorService estadisticasJugadorService;

    @GetMapping
    public List<EstadisticasJugador> getAll() {
        return estadisticasJugadorService.findAll();
    }

    @GetMapping("/{id}")
    public EstadisticasJugador getById(@PathVariable Long id) {
        return estadisticasJugadorService.findById(id).orElse(null);
    }

    @PostMapping
    public EstadisticasJugador create(@RequestBody EstadisticasJugador estadistica) {
        return estadisticasJugadorService.save(estadistica);
    }

    @PutMapping("/{id}")
    public EstadisticasJugador update(@PathVariable Long id, @RequestBody EstadisticasJugador estadistica) {
        //estadistica.setId(id); BUG ?
        estadistica.setIdEstadisticas(id);
        return estadisticasJugadorService.save(estadistica);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id) {
        estadisticasJugadorService.deleteById(id);
    }
}
