From: Paul Burton <paul.burton@imgtec.com>
Subject: [PATCH v7 8/8] PCI: rockchip: Use PCI_NUM_INTX
Date: Tue, 15 Aug 2017 12:02:23 -0700
Message-ID: <20170815190223.18807-9-paul.burton@imgtec.com>
References: <20170815190223.18807-1-paul.burton@imgtec.com>
Mime-Version: 1.0
Content-Type: text/plain
Return-path: <linux-pci-owner@vger.kernel.org>
In-Reply-To: <20170815190223.18807-1-paul.burton@imgtec.com>
Sender: linux-pci-owner@vger.kernel.org
To: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org
Cc: Paul Burton <paul.burton@imgtec.com>, Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Use the PCI_NUM_INTX macro to indicate the number of PCI INTx interrupts
rather than the magic number 4. This makes it clearer where the number
comes from & what it relates to.

Signed-off-by: Paul Burton <paul.burton@imgtec.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-pci@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org

---
I have only build tested this.

Changes in v7: None
Changes in v6: None
Changes in v5: None
Changes in v4: None
Changes in v3: None
Changes in v2: None

 drivers/pci/host/pcie-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/host/pcie-rockchip.c b/drivers/pci/host/pcie-rockchip.c
index 7bb9870f6d8c..eae195ca06ab 100644
--- a/drivers/pci/host/pcie-rockchip.c
+++ b/drivers/pci/host/pcie-rockchip.c
@@ -1116,7 +1116,7 @@ static int rockchip_pcie_init_irq_domain(struct rockchip_pcie *rockchip)
 		return -EINVAL;
 	}
 
-	rockchip->irq_domain = irq_domain_add_linear(intc, 4,
+	rockchip->irq_domain = irq_domain_add_linear(intc, PCI_NUM_INTX,
 						    &intx_domain_ops, rockchip);
 	if (!rockchip->irq_domain) {
 		dev_err(dev, "failed to get a INTx IRQ domain\n");
-- 
2.14.1
