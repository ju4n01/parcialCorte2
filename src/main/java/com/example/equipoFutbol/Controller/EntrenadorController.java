package com.example.equipoFutbol.Controller;

import com.example.equipoFutbol.Model.Entrenador;
import com.example.equipoFutbol.Service.EntrenadorService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/entrenadores")
@RequiredArgsConstructor
public class EntrenadorController {
    private final EntrenadorService entrenadorService;

    @GetMapping
    public List<Entrenador> getAll() {
        return entrenadorService.findAll();
    }

    @GetMapping("/{id}")
    public Entrenador getById(@PathVariable Long id) {
        return entrenadorService.findById(id).orElse(null);
    }

    @PostMapping
    public Entrenador create(@RequestBody Entrenador entrenador) {
        return entrenadorService.save(entrenador);
    }

    @PutMapping("/{id}")
    public Entrenador update(@PathVariable Long id, @RequestBody Entrenador entrenador) {
        //entrenador.setId(id); BUG?
        entrenador.setIdEntrenador(id);
        return entrenadorService.save(entrenador);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id) {
        entrenadorService.deleteById(id);
    }
}
