From: Lad Prabhakar <prabhakar.csengg@gmail.com>
Subject: [PATCH v4 2/6] PCI: rcar: Fix calculating mask for PCIEPAMR register
Date: Sat,  8 Feb 2020 18:36:37 +0000
Message-ID: <20200208183641.6674-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20200208183641.6674-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-renesas-soc-owner@vger.kernel.org>
In-Reply-To: <20200208183641.6674-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Sender: linux-renesas-soc-owner@vger.kernel.org
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Andrew Murray <andrew.murray@arm.com>, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
List-Id: linux-rockchip.vger.kernel.org

The mask value was calculated incorrectly for PCIEPAMR register if the
size was less the 128bytes, this patch fixes the above by adding a check
on size.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/pci/controller/pcie-rcar.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/pcie-rcar.c b/drivers/pci/controller/pcie-rcar.c
index d5568db..c76a92a 100644
--- a/drivers/pci/controller/pcie-rcar.c
+++ b/drivers/pci/controller/pcie-rcar.c
@@ -71,7 +71,7 @@ void rcar_pcie_set_outbound(int win, void __iomem *base,
 	/* Setup PCIe address space mappings for each resource */
 	resource_size_t res_start;
 	resource_size_t size;
-	u32 mask;
+	u32 mask = 0x0;
 
 	rcar_pci_write_reg(base, 0x00000000, PCIEPTCTLR(win));
 
@@ -80,7 +80,8 @@ void rcar_pcie_set_outbound(int win, void __iomem *base,
 	 * keeps things pretty simple.
 	 */
 	size = resource_size(res);
-	mask = (roundup_pow_of_two(size) / SZ_128) - 1;
+	if (size > 128)
+		mask = (roundup_pow_of_two(size) / SZ_128) - 1;
 	rcar_pci_write_reg(base, mask << 7, PCIEPAMR(win));
 
 	if (!host) {
-- 
2.7.4
