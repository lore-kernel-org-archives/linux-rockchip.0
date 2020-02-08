From: Lad Prabhakar <prabhakar.csengg@gmail.com>
Subject: [PATCH v4 6/6] misc: pci_endpoint_test: Add Device ID for RZ/G2E PCIe controller
Date: Sat,  8 Feb 2020 18:36:41 +0000
Message-ID: <20200208183641.6674-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20200208183641.6674-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-pci-owner@vger.kernel.org>
In-Reply-To: <20200208183641.6674-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Sender: linux-pci-owner@vger.kernel.org
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Andrew Murray <andrew.murray@arm.com>, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
List-Id: linux-rockchip.vger.kernel.org

Add RZ/G2E in pci_device_id table so that pci-epf-test can be used for
testing PCIe EP in RZ/G2E.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/misc/pci_endpoint_test.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/misc/pci_endpoint_test.c b/drivers/misc/pci_endpoint_test.c
index a5e3170..3c84e9a 100644
--- a/drivers/misc/pci_endpoint_test.c
+++ b/drivers/misc/pci_endpoint_test.c
@@ -66,6 +66,8 @@
 
 #define PCI_DEVICE_ID_TI_AM654			0xb00c
 
+#define PCI_DEVICE_ID_RENESAS_RZG2E		0x002d
+
 #define is_am654_pci_dev(pdev)		\
 		((pdev)->device == PCI_DEVICE_ID_TI_AM654)
 
@@ -797,6 +799,7 @@ static const struct pci_device_id pci_endpoint_test_tbl[] = {
 	{ PCI_DEVICE(PCI_VENDOR_ID_TI, PCI_DEVICE_ID_TI_AM654),
 	  .driver_data = (kernel_ulong_t)&am654_data
 	},
+	{ PCI_DEVICE(PCI_VENDOR_ID_RENESAS, PCI_DEVICE_ID_RENESAS_RZG2E) },
 	{ }
 };
 MODULE_DEVICE_TABLE(pci, pci_endpoint_test_tbl);
-- 
2.7.4
