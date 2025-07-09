#!/bin/bash

# Renk Kodları
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
RESET='\033[0m'
BOLD='\033[1m'

# Başlık
clear
figlet "MENÜ" | lolcat
read -p "İsminizi giriniz: " isim

# Karşılama
echo -e "${CYAN}Hoş geldiniz $isim efendim!${RESET}"
echo -e "${MAGENTA}Menümüz birkaç saniye içinde yüklenecektir...${RESET}"
sleep 1 && echo -e "${YELLOW}3${RESET}"
sleep 1 && echo -e "${YELLOW}2${RESET}"
sleep 1 && echo -e "${YELLOW}1${RESET}"
echo -e "${RED}Yükleniyor...${RESET}"
sleep 1
clear

# İsimle yeniden başlık
figlet "$isim" | lolcat

# Menü Döngüsü
while true; do
  echo ""
  echo -e "${GREEN}1) Bugünün tarihi${RESET}"
  echo -e "${CYAN}2) IP adresinizi göster${RESET}"
  echo -e "${RED}3) Çıkış yap${RESET}"
  echo ""
  read -p "Bir seçim yapınız (1/2/3): " secim

  case $secim in
    1)
      echo -e "${YELLOW}Tarih:${RESET}"
      date
      ;;
    2)
      echo -e "${YELLOW}IP Adresiniz:${RESET}"
      curl -s ifconfig.me
      ;;
    3)
      echo -e "${MAGENTA}Görüşmek üzere $isim!${RESET}"
      exit 0
      ;;
    *)
      echo -e "${RED}Geçersiz seçim. Lütfen 1, 2 veya 3 girin.${RESET}"
      ;;
  esac

  echo ""
  read -p "Devam etmek için Enter'a basın..." dummy
  clear
  figlet "$isim" | lolcat
done
