VERILOG_COMPILER = iverilog        # Compilador de Verilog
SIMULATOR = vvp                    # Simulador de Verilog
FLAGS = -Wall                      # Banderas para iverilog
SOURCES = src/*.v                  # Archivos fuente Verilog
TESTBENCH = testbenchs/*.v         # Archivo de testbench Verilog
VCD_FILE = data/sumador4_tb.vcd		 # Archivo de salida del cronograma
OBJ = bin/sumador4                 # Nombre del archivo de salida generado por iverilog

all: $(OBJ)

$(OBJ): $(SOURCES) $(TESTBENCH)
	$(VERILOG_COMPILER) $(FLAGS) -o $(OBJ) $(TESTBENCH) $(SOURCES)

simulate: $(OBJ)
	$(SIMULATOR) $(OBJ)

.PHONY: clean
clean:
	rm -f $(OBJ) 