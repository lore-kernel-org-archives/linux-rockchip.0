From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] PCI: rockchip: check link status when validating device
Date: Fri, 19 May 2017 14:58:27 +0800
Message-ID: <1495177107-203736-1-git-send-email-shawn.lin@rock-chips.com>
Return-path: <linux-pci-owner@vger.kernel.org>
Sender: linux-pci-owner@vger.kernel.org
To: Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, Brian Norris <briannorris@chromium.org>, Jeffy Chen <jeffy.chen@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

This patch checks the link status before reading and
writing configure space of devices attached to the RC.
If the link status is down, we shouldn't try to access
the devices.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/pci/host/pcie-rockchip.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/pci/host/pcie-rockchip.c b/drivers/pci/host/pcie-rockchip.c
index 0e020b6..1e64227 100644
--- a/drivers/pci/host/pcie-rockchip.c
+++ b/drivers/pci/host/pcie-rockchip.c
@@ -275,9 +275,21 @@ static void rockchip_pcie_update_txcredit_mui(struct rockchip_pcie *rockchip)
 	rockchip_pcie_write(rockchip, val, PCIE_CORE_TXCREDIT_CFG1);
 }
 
+static inline bool rockchip_pcie_link_up(struct rockchip_pcie *rockchip)
+{
+	return PCIE_LINK_UP(rockchip_pcie_read(rockchip,
+					PCIE_CLIENT_BASIC_STATUS1));
+}
+
 static int rockchip_pcie_valid_device(struct rockchip_pcie *rockchip,
 				      struct pci_bus *bus, int dev)
 {
+	/* do not access the devices if the link isn't completed */
+	if (bus->number != rockchip->root_bus_nr) {
+		if (!rockchip_pcie_link_up(rockchip))
+			return 0;
+	}
+
 	/* access only one slot on each root port */
 	if (bus->number == rockchip->root_bus_nr && dev > 0)
 		return 0;
-- 
1.9.1
