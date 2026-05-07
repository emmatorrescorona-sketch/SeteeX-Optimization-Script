#!/bin/bash
# =================================================================
# PROYECTO: SeteeX (Servicio Técnico Expréss)
# AUTOR: Emmanuel Torres Corona
# UBICACIÓN: Guadalajara, Jalisco, México
# DERECHOS RESERVADOS © 2026
# =================================================================

clear
echo "==============================================================="
echo "  ____       _              __  __ "
echo " / ___|  ___| |_ ___  ___  \ \/ / "
echo " \___ \ / _ \ __/ _ \/ _ \  \  /  "
echo "  ___) |  __/ ||  __/  __/  /  \  "
echo " |____/ \___|\__\___|\___| /_/\_\ "
echo "                                   "
echo "      S E R V I C I O   T É C N I C O   E X P R É S S"
echo "==============================================================="
echo "Iniciando motor de optimización profesional SeteeX..."
echo "Propiedad de: Emmanuel Torres Corona"
echo "==============================================================="
sleep 2

# 1. Actualización y Seguridad del Sistema
echo -e "\n[1/4] Ejecutando mantenimiento preventivo de software..."
sudo apt update && sudo apt full-upgrade -y

# 2. Instalación de herramientas SeteeX (Educación y Oficina)
# Kiwix permite estudiar sin internet, esencial para impacto social.
echo -e "\n[2/4] Instalando paquetes de alto rendimiento..."
sudo apt install -y kiwix-desktop vlc libreoffice-gtk3 preload zram-tools ufw

# 3. Optimización de Hardware (Ajuste de RAM y Swap)
echo -e "\n[3/4] Reconfigurando gestión de memoria para equipos antiguos..."
# Activación de ZRAM para duplicar virtualmente la eficiencia de la RAM
sudo systemctl enable zram-config

# Ajuste de Swappiness para reducir el desgaste del disco duro
if ! grep -q "vm.swappiness=10" /etc/sysctl.conf; then
    echo "vm.swappiness=10" | sudo tee -a /etc/sysctl.conf
    sudo sysctl -p
fi

# 4. Limpieza Expréss Final
echo -e "\n[4/4] Eliminando archivos temporales y basura digital..."
sudo apt autoremove -y && sudo apt clean

echo -e "\n==============================================================="
echo "      EQUIPO OPTIMIZADO EXITOSAMENTE POR SETEEX"
echo "      Tecnología honesta al alcance de todos."
echo "==============================================================="

