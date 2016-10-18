From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v4 2/4] PCI: rockchip: Mark RC as common clock architecture
Date: Tue, 18 Oct 2016 09:41:27 +0800
Message-ID: <1476754889-21804-2-git-send-email-shawn.lin@rock-chips.com>
References: <1476754889-21804-1-git-send-email-shawn.lin@rock-chips.com>
Return-path: <linux-pci-owner@vger.kernel.org>
In-Reply-To: <1476754889-21804-1-git-send-email-shawn.lin@rock-chips.com>
Sender: linux-pci-owner@vger.kernel.org
To: Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, Wenrui Li <wenrui.li@rock-chips.com>, Brian Norris <briannorris@chromium.org>, Shawn Lin <shawn.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

The default value of common clock configuration is
zero indicating Rockchip's RC is using asynchronous
clock architecture but actually we are using common
clock. This will confuses some EP drivers if they
need some different settings referring to this value.
So let's fix it.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

---

Changes in v4:
- rebase on the next branch

Changes in v3:
- rebase the code since it isn't cleanly applied again

Changes in v2:
- rebase the code since it isn't cleanly applied after Bjorn's cleanup

 drivers/pci/host/pcie-rockchip.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/pci/host/pcie-rockchip.c b/drivers/pci/host/pcie-rockchip.c
index 3ede865..8e260d2 100644
--- a/drivers/pci/host/pcie-rockchip.c
+++ b/drivers/pci/host/pcie-rockchip.c
@@ -141,6 +141,7 @@
 #define   PCIE_RC_CONFIG_DCR_CPLS_SHIFT		26
 #define PCIE_RC_CONFIG_LCS		(PCIE_RC_CONFIG_BASE + 0xd0)
 #define   PCIE_RC_CONFIG_LCS_RETRAIN_LINK	BIT(5)
+#define   PCIE_RC_CONFIG_LCS_CCC		BIT(6)
 #define   PCIE_RC_CONFIG_LCS_LBMIE		BIT(10)
 #define   PCIE_RC_CONFIG_LCS_LABIE		BIT(11)
 #define   PCIE_RC_CONFIG_LCS_LBMS		BIT(30)
@@ -536,6 +537,11 @@ static int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
 
 	rockchip_pcie_set_power_limit(rockchip);
 
+	/* Set RC's clock architecture as common clock */
+	status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_LCS);
+	status |= PCIE_RC_CONFIG_LCS_CCC;
+	rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_LCS);
+
 	/* Enable Gen1 training */
 	rockchip_pcie_write(rockchip, PCIE_CLIENT_LINK_TRAIN_ENABLE,
 			    PCIE_CLIENT_CONFIG);
-- 
2.3.7
