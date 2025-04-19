package main

type Tarea struct {
    Titulo    string
    Completada bool
}

func MarcarComoCompleta(t *Tarea) {
    t.Completada = true
}