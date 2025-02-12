CC := gcc
RM := rm
RMDIR := rmdir

CFLAGS := -Wall -Wextra -g -O0

SRC_DIR := src
O_DIR	:= o
S_DIR  	:= s
I_DIR  	:= i
BIN_DIR := bin
INCLUDE_DIR := include

SRC := $(wildcard $(SRC_DIR)/*.c)
O 	:= $(patsubst $(SRC_DIR)/%.c, $(O_DIR)/%.o, $(SRC))
S 	:= $(patsubst $(O_DIR)/%.o, $(S_DIR)/%.s, $(O))
I 	:= $(patsubst $(S_DIR)/%.s, $(I_DIR)/%.i, $(S))
BIN := $(patsubst $(I_DIR)/%.i, $(BIN_DIR)/%.out, $(I))
#INCLUDE := $(patsubst $(SRC_DIR)/%.c, $(INCLUDE_DIR)/%.h, $(BIN))

CLEAN := clean_i clean_o clean_s clean_out
# ===================================================================================================

.PHONY: all clean rebuild

all: $(BIN)
clean: $(CLEAN)
rebuild: clean all

# ---------------------------------------------------------------------------------------------------
.SECONDARY: $(O) $(S) $(I)

$(BIN_DIR)/%.out: $(O_DIR)/%.o
	@mkdir -p $(BIN_DIR)
	@printf "%s\t%-20s  %s\n" "$(CC) $(CFLAGS)" "      $<" "-o  $@"  &&  $(CC) $(CFLAGS)    $< -o $@
$(O_DIR)/%.o: $(S_DIR)/%.s
	@mkdir -p $(O_DIR)
	@printf "%s\t%-20s  %s\n" "$(CC) $(CFLAGS)" "-c    $<" "-o    $@"  &&  $(CC) $(CFLAGS) -c $< -o $@
$(S_DIR)/%.s: $(I_DIR)/%.i
	@mkdir -p $(S_DIR)
	@printf "%s\t%-20s  %s\n" "$(CC) $(CFLAGS)" "-S    $<" "-o    $@"  &&  $(CC) $(CFLAGS) -S $< -o $@
#$(I_DIR)/%.i: $(SRC_DIR)/%.c $(shell [ -e $(INCLUDE_DIR)/$*.h ] && echo $(INCLUDE_DIR)/$*.h)
$(I_DIR)/%.i: $(SRC_DIR)/%.c
	@mkdir -p $(I_DIR)
	@printf "%s\t%-20s  %s\n" "$(CC) $(CFLAGS)" "-E  $<" "-o    $@"  &&  $(CC) $(CFLAGS) -E $< -o $@


# ---------------------------------------------------------------------------------------------------
.SECONDARY: clean_i clean_o clean_s clean_out

clean_i:
	@if [ -d $(I_DIR) ]; then 	\
		$(RM) -f $(I);			\
		$(RMDIR) $(I_DIR);		\
	fi
clean_s:
	@if [ -d $(S_DIR) ]; then 	\
		$(RM) -f $(S);			\
		$(RMDIR) $(S_DIR);		\
	fi
clean_o:
	@if [ -d $(O_DIR) ]; then	\
		$(RM) -f $(O);			\
		$(RMDIR) $(O_DIR);		\
	fi
clean_out:
	@if [ -d $(BIN_DIR) ]; then	\
		$(RM) -f $(BIN);		\
		$(RMDIR) $(BIN_DIR);	\
	fi

# ---------------------------------------------------------------------------------------------------


# cc -E .c -o .i
# cc -S .i -o .s
# cc -c .s -o .o
