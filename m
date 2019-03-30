From: Colin King <colin.king@canonical.com>
Subject: [PATCH] PCI: rockchip: fix bitwise operations on status and ROCKCHIP_PCIE_EP_CMD_STATUS_IS
Date: Sat, 30 Mar 2019 15:09:10 +0000
Message-ID: <20190330150910.9389-1-colin.king@canonical.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

From: Colin Ian King <colin.king@canonical.com>

Currently the bitwise operations on the u16 variable 'status' with
the setting ROCKCHIP_PCIE_EP_CMD_STATUS_IS are incorrect because
ROCKCHIP_PCIE_EP_CMD_STATUS_IS is 1UL<<19 which is wider than the
u16 variable.  Fix this by making status a u32.  (Not tested).

Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index a5d799e2dff2..d743b0a48988 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -350,7 +350,7 @@ static void rockchip_pcie_ep_assert_intx(struct rockchip_pcie_ep *ep, u8 fn,
 	struct rockchip_pcie *rockchip = &ep->rockchip;
 	u32 r = ep->max_regions - 1;
 	u32 offset;
-	u16 status;
+	u32 status;
 	u8 msg_code;
 
 	if (unlikely(ep->irq_pci_addr != ROCKCHIP_PCIE_EP_PCI_LEGACY_IRQ_ADDR ||
-- 
2.20.1
