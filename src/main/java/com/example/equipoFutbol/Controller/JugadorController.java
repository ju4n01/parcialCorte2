package com.example.equipoFutbol.Controller;

import com.example.equipoFutbol.Model.Jugador;
import com.example.equipoFutbol.Service.JugadorService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/jugador")
public class JugadorController {
    private final JugadorService jugadorService;

    public JugadorController(JugadorService jugadorService) {
        this.jugadorService = jugadorService;
    }

    @PostMapping("/guardar")
    public ResponseEntity<Jugador> guardarJugador(@RequestBody Jugador jugador) {
        return ResponseEntity.ok(jugadorService.guardar(jugador));
    }

    @GetMapping("/listar")
    public ResponseEntity<List<Jugador>> listarJugador() {
        return ResponseEntity.ok(jugadorService.listar());
    }

    @GetMapping("/listar/{id_jugador}")
    public ResponseEntity<Jugador> obtenerJugadorPorId(@PathVariable long id_jugador) {
        return jugadorService.listarPorId(id_jugador)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @DeleteMapping("/eliminar/{id_jugador}")
    public ResponseEntity<Void> eliminarJugador(@PathVariable long id_jugador) {
        jugadorService.eliminar(id_jugador);
        return ResponseEntity.noContent().build();
    }

    @GetMapping("/jugador_por_equipo/{id_equipo}")
    public List<Jugador> getJugadoresPorEquipo(@PathVariable Long id_equipo) {
        return jugadorService.JugadoresporEquipo(id_equipo);
    }

    @GetMapping("/jugador_mas_X_goles/{goles}")
    public List<Jugador> getJugadoresConMasDeXGoles(@PathVariable int goles) {
        return jugadorService.JugadoresConMasDeXGoles(goles);
    }
}