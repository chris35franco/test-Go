package main

import "testing"

func TestMarcarComoCompleta(t *testing.T) {
    tarea := Tarea{Titulo: "Estudiar Go", Completada: false}
    MarcarComoCompleta(&tarea)

    if !tarea.Completada {
        t.Error("La tarea debería estar marcada como completada")
    }
}