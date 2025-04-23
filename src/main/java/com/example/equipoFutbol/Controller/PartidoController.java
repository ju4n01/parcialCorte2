package com.example.equipoFutbol.Controller;

import com.example.equipoFutbol.Model.Partido;
import com.example.equipoFutbol.Service.PartidoService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/partidos")
@RequiredArgsConstructor
public class PartidoController {
    private final PartidoService partidoService;

    @GetMapping
    public List<Partido> getAll() {
        return partidoService.findAll();
    }

    @GetMapping("/{id}")
    public Partido getById(@PathVariable Long id) {
        return partidoService.findById(id).orElse(null);
    }

    @PostMapping
    public Partido create(@RequestBody Partido partido) {
        return partidoService.save(partido);
    }

    @PutMapping("/{id}")
    public Partido update(@PathVariable Long id, @RequestBody Partido partido) {
        //partido.setId(id); BUG?
        partido.setIdPartido(id);
        return partidoService.save(partido);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id) {
        partidoService.deleteById(id);
    }
}
