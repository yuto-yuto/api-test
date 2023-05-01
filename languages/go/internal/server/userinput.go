package server

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func ReadUserInput(sendChan chan string) {
	reader := bufio.NewReader(os.Stdin)

	for {
		fmt.Print("input: ")
		text, _ := reader.ReadString('\n')
		// convert CRLF to LF
		text = strings.Replace(text, "\n", "", -1)
		sendChan <- text
	}
}
