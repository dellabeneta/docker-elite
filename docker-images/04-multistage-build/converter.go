package main

import (
	"fmt"
	"os"
	"os/exec"
	"log"
)

func main() {
	// Verifica os argumentos
	if len(os.Args) != 3 {
		fmt.Println("Uso: go run converter.go <arquivo de entrada> <formato de saída>")
		fmt.Println("Exemplo: go run converter.go video.mp4 avi")
		os.Exit(1)
	}

	inputFile := os.Args[1]
	outputFormat := os.Args[2]
	outputFile := "output." + outputFormat

	// Verifica se o arquivo de entrada existe
	if _, err := os.Stat(inputFile); os.IsNotExist(err) {
		log.Fatalf("Erro: O arquivo '%s' não foi encontrado!\n", inputFile)
	}

	// Comando FFmpeg
	cmd := exec.Command("ffmpeg",
		"-i", inputFile,
		"-preset", "fast",
		"-c:v", "libx264",
		"-c:a", "aac",
		outputFile,
	)

	// Exibe saída do FFmpeg em tempo real (opcional)
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr

	// Executa a conversão
	fmt.Printf("Iniciando conversão de '%s' para '%s'...\n", inputFile, outputFile)
	err := cmd.Run()

	// Verifica sucesso
	if err != nil {
		log.Fatalf("Erro na conversão do arquivo: %v\n", err)
	} else {
		fmt.Printf("Conversão concluída com sucesso! Arquivo gerado: %s\n", outputFile)
	}
}