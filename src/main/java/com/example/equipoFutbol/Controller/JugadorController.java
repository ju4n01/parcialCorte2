package com.example.equipoFutbol.Controller;

import com.example.equipoFutbol.Model.Jugador;
import com.example.equipoFutbol.Service.JugadorService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/jugadores")
@RequiredArgsConstructor
public class JugadorController {
    private final JugadorService jugadorService;

    @GetMapping
    public List<Jugador> getAll() {
        return jugadorService.findAll();
    }

    @GetMapping("/{id}")
    public Jugador getById(@PathVariable Long id) {
        return jugadorService.findById(id).orElse(null);
    }

    @PostMapping
    public Jugador create(@RequestBody Jugador jugador) {
        return jugadorService.save(jugador);
    }

    @PutMapping("/{id}")
    public Jugador update(@PathVariable Long id, @RequestBody Jugador jugador) {
        //jugador.setId(id); BUG?
        jugador.setIdJugador(id);
        return jugadorService.save(jugador);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id) {
        jugadorService.deleteById(id);
    }
}
