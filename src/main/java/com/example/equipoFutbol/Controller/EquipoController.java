package com.example.equipoFutbol.Controller;

import com.example.equipoFutbol.Model.Equipo;
import com.example.equipoFutbol.Service.EquipoService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/equipos")
@RequiredArgsConstructor
public class EquipoController {
    private final EquipoService equipoService;

    @GetMapping
    public List<Equipo> getAll() {
        return equipoService.findAll();
    }

    @GetMapping("/{id}")
    public Equipo getById(@PathVariable Long id) {
        return equipoService.findById(id).orElse(null);
    }

    @PostMapping
    public Equipo create(@RequestBody Equipo equipo) {
        return equipoService.save(equipo);
    }

    @PutMapping("/{id}")
    public Equipo update(@PathVariable Long id, @RequestBody Equipo equipo) {
        //equipo.setId(id); BUG?
        equipo.setIdEquipo(id);
        return equipoService.save(equipo);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id) {
        equipoService.deleteById(id);
    }
}