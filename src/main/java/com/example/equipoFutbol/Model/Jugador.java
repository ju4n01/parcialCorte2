package com.example.equipoFutbol.Model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.List;

@Entity
@Table(name = "jugador")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Jugador {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idJugador;
    private String nombre;
    private String posicion;
    private Integer dorlsal;

    @Temporal(TemporalType.DATE)
    private Date fechaNac;

    private String nacionalidad;

    // Relación 1: jugador pertenece a un equipo, relación bidireccional con List<Jugador> en Equipo
    // Relación 2: Un ntrenador pertenece a un equipo
    @ManyToOne
    @JoinColumn(name = "id_equipo")
    private Equipo equipo;

    @OneToMany(mappedBy = "jugador", cascade = CascadeType.ALL)
    private List<EstadisticasJugador> estadisticas;
}
