package com.example.equipoFutbol.Model;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.List;

@Entity
@Table(name = "partido")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Partido {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idPartido;

    @Temporal(TemporalType.DATE)
    private Date fecha;

    private String estadio;

    @ManyToOne
    @JoinColumn(name = "equipo_local")
    private Equipo equipoLocal;

    @ManyToOne
    @JoinColumn(name = "equipo_visita")
    private Equipo equipoVisita;

    private Integer golesLocal;
    private Integer golesVisita;

    // Relación 4: Jugador tiene estadísticas en partidos
    @OneToMany(mappedBy = "partido", cascade = CascadeType.ALL)
    private List<EstadisticasJugador> estadisticas;

}
