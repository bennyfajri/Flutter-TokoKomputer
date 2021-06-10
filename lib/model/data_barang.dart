class DataBarang {
  String name;
  String type;
  String description;
  int price;
  int stock;
  List<String> imageAsset;

  DataBarang(
      {this.name,
      this.type,
      this.description,
      this.price,
      this.stock,
      this.imageAsset});
}

var dataBarang = [
  DataBarang(
      name: "Ryzen 9 5950x",
      type: "Processor",
      description:
          "# of CPU Cores : 16 \n # of Threads : 32 \n Base Clock 3.4GHz Max Boost Clock  Up to 4.9GHz Total L2 Cache : 8MB Total L3 Cache : 64MB Unlocked :Yes CMOS : TSMC 7nm FinFET Package : AM4 PCI Express® Version : PCIe 4.0 Thermal Solution (PIB) : Not included Default TDP / TDP :105W Max Temps : 90°C *OS Support : Windows 10 - 64-Bit Edition, RHEL x86 64-Bit, Ubuntu x86 64-Bit *Operating System (OS) support will vary by manufacturer.",
      price: 15999999,
      stock: 4,
      imageAsset: [
        "images/ryzen9.jpg",
        "images/ryzen9-1.jpg",
        "images/ryzen9-2.jpg"
      ]),
  DataBarang(
      name: "Ryzen 3 3200g",
      type: "Processor",
      description:
          "# of CPU Cores : 4 # of Threads : 4 # of GPU Cores : 8 Base Clock : 3.6GHz Max Boost Clock : Up to 4.0GHz Total L1 Cache : 384KB Total L2 Cache : 2MB Total L3 Cache : 4MB Unlocked : Yes CMOS : 12nm FinFET Package : AM4 PCI Express® Version : PCIe® 3.0 x8 Thermal Solution (PIB) : Wraith Stealth Thermal Solution (MPK) : Wraith Stealth Default TDP / TDP : 65W cTDP : 45-65W Max Temps : 95°C *OS Support : Windows 10 - 64-Bit Edition, RHEL x86 64-Bit, Ubuntu x86 64-Bit ,*Operating System (OS) support will vary by manufacturer.",
      price: 1650000,
      stock: 10,
      imageAsset: [
        "images/ryzen3-1.jpg",
        "images/ryzen3-2.jpg",
        "images/ryzen3-3.jpg"
      ]),
  DataBarang(
      name: "Crosshair VIII Hero",
      type: "Motherboard ",
      description:
          "AMD X570 ATX gaming motherboard with PCIe 4.0, 16 power stages , OptiMem III, 2.5 Gbps LAN, USB 3.2, SATA, M.2, and Aura Sync RGB lighting",
      price: 7950000,
      stock: 6,
      imageAsset: [
        "images/x570-1.png",
        "images/x570-2.png",
        "images/x570-3.png"
      ]),
  DataBarang(
      name: "Asrock a320m-hdv",
      type: "Motherboard ",
      description:
          "ASRock Super Alloy, Supports AMD Socket AM4 A-Series APUs (Bristol Ridge) and Ryzen Series CPUs (Summit Ridge & Raven Ridge) ,Supports DDR4 3200+ (OC) (Ryzen CPU) / 2400 (A-series APU), 1 PCIe 3.0 x16, 1 PCIe 2.0 x1, Graphics Output: HDMI, DVI-D, D-Sub, 7.1 CH HD Audio (Realtek ALC887 Audio Codec), ELNA Audio Caps, 4 SATA3, 1 Ultra M.2 (PCIe Gen3 x4 & SATA3), 6 USB 3.1 Gen1 (2 Front, 4 Rear), Realtek Gigabit LAN",
      price: 735000,
      stock: 11,
      imageAsset: [
        "images/A320M-HDV.png",
        "images/A320M-HDV-2.png",
        "images/A320M-HDV-3.png"
      ]),
  DataBarang(
      name: "Gskill Trident Z Neo",
      type: "RAM",
      description:
          "Garansi Resmi Life Time. Silakan Komfirmasi Persediaan Stok Barang Sebelum Melakukan pembelian. Trimaksih... Features : New-generation product of DRAM module, 1.2 V memory module, Lifetime warranty, Completely compatible with X99 chipset \n  DDR4 3600mhz 32GB (2x16GB) F4-3600C16D-32GTZN",
      price: 4759000,
      stock: 5,
      imageAsset: [
        "images/tridentz-1.jpg",
        "images/tridentz-2.jpg",
        "images/tridentz-3.jpg"
      ]),
  DataBarang(
      name: "Team Elite Plus",
      type: "RAM",
      description:
          "Memory Type : DDR4 Capacity : 32GB (16GBx2) Multi-Channel Kit : Dual Channel Kit Tested Speed : 3600MHz Tested Latency : 16-16-16-36 Tested Voltage : 1.35V Registered/Unbuffered : Unbuffered Error Checking : Non-ECC SPD Speed : 2133MHz SPD Voltage : 1.20V Fan Included : No Warranty :Limited Lifetime Features Intel XMP 2.0 (Extreme Memory Profile) :  Ready Additional Notes : Rated XMP frequency & stability depends on MB & CPU capability.",
      price: 805000,
      stock: 9,
      imageAsset: [
        "images/team-elite-1.jpg",
        "images/team-elite-2.jpg",
        "images/team-elite-3.jpg"
      ]),
  DataBarang(
      name: "MSI RTX™ 3090",
      type: "VGA",
      description:
          "Model Name GeForce RTX™ 3090 GAMING X TRIO 24G, Graphics Processing Unit NVIDIA GeForce RTX 3090, Interface PCI Express Gen 4, Cores10496 Units, Core Clocks Boost:1785 MHz, Memory Speed 19.5 Gbps, Memory 24GB GDDR6X, Memory Bus 384-bit",
      price: 45900000,
      stock: 2,
      imageAsset: [
        "images/3090-1.png",
        "images/3090-2.png",
        "images/3090-3.png"
      ]),
  DataBarang(
      name: "PowerColor RX 570",
      type: "VGA",
      description:
          "Graphics Engine AXRX 570 4GBD5-3DH/OC, Video Memory 4GB GDDR5, Engine Clock up to 1320MHz with boost, Memory Clock 1750MHz x4 (7.0Gbps), Memory Interface 256bit, DirectX Support 12, Bus Standard PCIE 3.0, Standard Display Connecors DL DVI-D/ HDMI/ DisplayPort x3, Customized Specifications, Feature Support, OpenGL Support, CrossFireX Technology Support, AMD Stream Technology Support, AMD Eyefinity Technology Support, AMD Hypermemory",
      price: 2385000,
      stock: 11,
      imageAsset: [
        "images/rx570.jpg",
        "images/rx570-2.jpg",
        "images/rx570-3.jpg"
      ]),
];

var barangRekomendasi = [
  DataBarang(
      name: "Ryzen 9 5950x",
      type: "Processor",
      description:
          "# of CPU Cores : 16 \n # of Threads : 32 \n Base Clock 3.4GHz Max Boost Clock  Up to 4.9GHz Total L2 Cache : 8MB Total L3 Cache : 64MB Unlocked :Yes CMOS : TSMC 7nm FinFET Package : AM4 PCI Express® Version : PCIe 4.0 Thermal Solution (PIB) : Not included Default TDP / TDP :105W Max Temps : 90°C *OS Support : Windows 10 - 64-Bit Edition, RHEL x86 64-Bit, Ubuntu x86 64-Bit *Operating System (OS) support will vary by manufacturer.",
      price: 15999999,
      stock: 4,
      imageAsset: [
        "images/ryzen9.jpg",
        "images/ryzen9-1.jpg",
        "images/ryzen9-2.jpg"
      ]),
  DataBarang(
      name: "Crosshair VIII Hero",
      type: "Motherboard ",
      description:
          "AMD X570 ATX gaming motherboard with PCIe 4.0, 16 power stages , OptiMem III, 2.5 Gbps LAN, USB 3.2, SATA, M.2, and Aura Sync RGB lighting",
      price: 7950000,
      stock: 6,
      imageAsset: [
        "images/x570-1.png",
        "images/x570-2.png",
        "images/x570-3.png"
      ]),
  DataBarang(
      name: "Gskill Trident Z Neo",
      type: "RAM",
      description:
          "Garansi Resmi Life Time. Silakan Komfirmasi Persediaan Stok Barang Sebelum Melakukan pembelian. Trimaksih... Features : New-generation product of DRAM module, 1.2 V memory module, Lifetime warranty, Completely compatible with X99 chipset \n  DDR4 3600mhz 32GB (2x16GB) F4-3600C16D-32GTZN",
      price: 4759000,
      stock: 5,
      imageAsset: [
        "images/tridentz-1.jpg",
        "images/tridentz-2.jpg",
        "images/tridentz-3.jpg"
      ]),
  DataBarang(
      name: "MSI RTX™ 3090",
      type: "VGA",
      description:
          "Model Name GeForce RTX™ 3090 GAMING X TRIO 24G, Graphics Processing Unit NVIDIA GeForce RTX 3090, Interface PCI Express Gen 4, Cores10496 Units, Core Clocks Boost:1785 MHz, Memory Speed 19.5 Gbps, Memory 24GB GDDR6X, Memory Bus 384-bit",
      price: 45900000,
      stock: 2,
      imageAsset: [
        "images/3090-1.png",
        "images/3090-2.png",
        "images/3090-3.png"
      ]),
];
