From: Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 4.19 292/671] PCI: rockchip: Fix rockchip_pcie_ep_assert_intx() bitwise operations
Date: Thu, 16 Jan 2020 11:58:50 -0500
Message-ID: <20200116170509.12787-29-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <stable-owner@vger.kernel.org>
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
Sender: stable-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org, stable@vger.kernel.org
Cc: Colin Ian King <colin.king@canonical.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Mukesh Ojha <mojha@codeaurora.org>, Shawn Lin <shawn.lin@rock-chips.com>, Sasha Levin <sashal@kernel.org>, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Colin Ian King <colin.king@canonical.com>

[ Upstream commit c577f4a5a08bb9677e12ddafb62e2f3a901de87f ]

Currently the bitwise operations on the u16 variable 'status' with
the setting ROCKCHIP_PCIE_EP_CMD_STATUS_IS are incorrect because
ROCKCHIP_PCIE_EP_CMD_STATUS_IS is 1UL<<19 which is wider than the
u16 variable.

Fix this by making status a u32.

Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Reviewed-by: Mukesh Ojha <mojha@codeaurora.org>
Acked-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index b8163c56a142..caf34661d38d 100644
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
