INPUT_DIR = ./inputs
LOG_DIR = ./checkpoints
RUN_DIR = ./mlruns
MAKEDATA_DIR = ./makedata

DATA1 = DD
DATA1_DIR = $(INPUT_DIR)/${DATA1}
MAKEDATA1_PATH = $(MAKEDATA_DIR)/$(DATA1)/download.sh

DATA2 = ENZYMES
DATA2_DIR = $(INPUT_DIR)/${DATA2}
MAKEDATA2_PATH = $(MAKEDATA_DIR)/$(DATA2)/download.sh

DATA3 = FRANKENSTEIN
DATA3_DIR = $(INPUT_DIR)/${DATA3}
MAKEDATA3_PATH = $(MAKEDATA_DIR)/$(DATA3)/download.sh

DATA4 = MUTAG
DATA4_DIR = $(INPUT_DIR)/${DATA4}
MAKEDATA4_PATH = $(MAKEDATA_DIR)/$(DATA4)/download.sh

DATA5 = NCI1
DATA5_DIR = $(INPUT_DIR)/${DATA5}
MAKEDATA5_PATH = $(MAKEDATA_DIR)/$(DATA5)/download.sh

DATA6 = NCI109
DATA6_DIR = $(INPUT_DIR)/${DATA6}
MAKEDATA6_PATH = $(MAKEDATA_DIR)/$(DATA6)/download.sh

DATA7 = PROTEINS
DATA7_DIR = $(INPUT_DIR)/${DATA7}
MAKEDATA7_PATH = $(MAKEDATA_DIR)/$(DATA7)/download.sh

DATA8 = COLLAB
DATA8_DIR = $(INPUT_DIR)/${DATA8}
MAKEDATA8_PATH = $(MAKEDATA_DIR)/$(DATA8)/download.sh

DATA9 = IMDB-BINARY
DATA9_DIR = $(INPUT_DIR)/${DATA9}
MAKEDATA9_PATH = $(MAKEDATA_DIR)/$(DATA9)/download.sh

DATA10 = IMDB-MULTI
DATA10_DIR = $(INPUT_DIR)/${DATA10}
MAKEDATA10_PATH = $(MAKEDATA_DIR)/$(DATA10)/download.sh

DATA11 = PTC_MR
DATA11_DIR = $(INPUT_DIR)/${DATA11}
MAKEDATA11_PATH = $(MAKEDATA_DIR)/$(DATA11)/download.sh


all: $(INPUT_DIR) $(LOG_DIR) $(RUN_DIR) $(DATA1_DIR) $(DATA2_DIR) $(DATA3_DIR) $(DATA4_DIR) $(DATA5_DIR) $(DATA6_DIR) $(DATA7_DIR) $(DATA8_DIR) $(DATA9_DIR) $(DATA10_DIR) $(DATA11_DIR)

$(INPUT_DIR):
	mkdir -p $(INPUT_DIR)

$(LOG_DIR):
	mkdir -p $(LOG_DIR)

$(RUN_DIR):
	mkdir -p $(RUN_DIR)

$(DATA1_DIR): $(MAKEDATA1_PATH)
	bash $(MAKEDATA1_PATH)

$(DATA2_DIR): $(MAKEDATA2_PATH)
	bash $(MAKEDATA2_PATH)

$(DATA3_DIR): $(MAKEDATA3_PATH)
	bash $(MAKEDATA3_PATH)

$(DATA4_DIR): $(MAKEDATA4_PATH)
	bash $(MAKEDATA4_PATH)

$(DATA5_DIR): $(MAKEDATA5_PATH)
	bash $(MAKEDATA5_PATH)

$(DATA6_DIR): $(MAKEDATA6_PATH)
	bash $(MAKEDATA6_PATH)

$(DATA7_DIR): $(MAKEDATA7_PATH)
	bash $(MAKEDATA7_PATH)

$(DATA8_DIR): $(MAKEDATA8_PATH)
	bash $(MAKEDATA8_PATH)

$(DATA9_DIR): $(MAKEDATA9_PATH)
	bash $(MAKEDATA9_PATH)

$(DATA10_DIR): $(MAKEDATA10_PATH)
	bash $(MAKEDATA10_PATH)

$(DATA11_DIR): $(MAKEDATA11_PATH)
	bash $(MAKEDATA11_PATH)
