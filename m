From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 2/2] PCI: rockchip: Add 100ms delay before enabling training
Date: Thu, 21 May 2020 09:05:30 +0800
Message-ID: <1590023130-137406-2-git-send-email-shawn.lin@rock-chips.com>
References: <1590023130-137406-1-git-send-email-shawn.lin@rock-chips.com>
Return-path: <linux-pci-owner@vger.kernel.org>
In-Reply-To: <1590023130-137406-1-git-send-email-shawn.lin@rock-chips.com>
Sender: linux-pci-owner@vger.kernel.org
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-pci@vger.kernel.org, Simon Xue <xxm@rock-chips.com>, linux-rockchip@lists.infradead.org, Shawn Lin <shawn.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

According to PCI Express Card Electromechanical Specification
Revision 3.0, Table 2-4, power stable and reference clk stable
before PERST# inactive should be at least 100ms and 100us
respectively. Otherwise we do see some failures for link training.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/pci/controller/pcie-rockchip-host.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index 94af6f5..2f4d909 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -331,6 +331,14 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
 	rockchip_pcie_write(rockchip, PCIE_CLIENT_LINK_TRAIN_ENABLE,
 			    PCIE_CLIENT_CONFIG);
 
+	/*
+	 * According to PCI Express Card Electromechanical Specification
+	 * Revision 3.0, Table 2-4, power stable and reference clk stable
+	 * before PERST# inactive should be at least 100ms and 100us
+	 * respectively. Otherwise we do see some failures for link training.
+	 */
+	msleep(100);
+
 	gpiod_set_value_cansleep(rockchip->ep_gpio, 1);
 
 	/* 500ms timeout value should be enough for Gen1/2 training */
-- 
2.7.4
