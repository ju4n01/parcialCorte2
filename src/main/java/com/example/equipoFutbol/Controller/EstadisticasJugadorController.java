package com.example.equipoFutbol.Controller;

import com.example.equipoFutbol.Model.EstadisticasJugador;
import com.example.equipoFutbol.Service.EstadisticasJugadorService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/estadisticas")
public class EstadisticasJugadorController {
    private final EstadisticasJugadorService estadisticasJugadorService;

    public EstadisticasJugadorController(EstadisticasJugadorService estadisticasJugadorService) {
        this.estadisticasJugadorService = estadisticasJugadorService;
    }

    @PostMapping("/guardar")
    public ResponseEntity<EstadisticasJugador> guardarEstadisticas(@RequestBody EstadisticasJugador estadisticasJugador) {
        return ResponseEntity.ok(estadisticasJugadorService.guardar(estadisticasJugador));
    }

    @GetMapping("/listar")
    public ResponseEntity<List<EstadisticasJugador>> listarEstadisticas() {
        return ResponseEntity.ok(estadisticasJugadorService.listar());
    }

    @GetMapping("/listar/{id_estadisticas}")
    public ResponseEntity<EstadisticasJugador> obtenerEstadisticasPorId(@PathVariable long id_estadisticas) {
        return estadisticasJugadorService.listarPorId(id_estadisticas)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @DeleteMapping("/eliminar/{id_estadisticas}")
    public ResponseEntity<Void> eliminarEstadisticas(@PathVariable long id_estadisticas) {
        estadisticasJugadorService.eliminar(id_estadisticas);
        return ResponseEntity.noContent().build();
    }
}
