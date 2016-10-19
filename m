From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH] PCI: rockchip: remove the pointer to L1 substate cap
Date: Wed, 19 Oct 2016 17:10:34 +0800
Message-ID: <1476868234-15135-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: Wenrui Li <wenrui.li-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Rajat Jain <rajatja-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Per the errata of TRM, the RC can't support L1 substate, so we
need to remove the L1 substate cap.

Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 drivers/pci/host/pcie-rockchip.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/pci/host/pcie-rockchip.c b/drivers/pci/host/pcie-rockchip.c
index e0b22da..8370a85 100644
--- a/drivers/pci/host/pcie-rockchip.c
+++ b/drivers/pci/host/pcie-rockchip.c
@@ -142,6 +142,8 @@
 #define   PCIE_RC_CONFIG_LCS_LBMS		BIT(30)
 #define   PCIE_RC_CONFIG_LCS_LAMS		BIT(31)
 #define PCIE_RC_CONFIG_L1_SUBSTATE_CTRL2 (PCIE_RC_CONFIG_BASE + 0x90c)
+#define PCIE_RC_CONFIG_THP_CAP		(PCIE_RC_CONFIG_BASE + 0x274)
+#define   PCIE_RC_CONFIG_THP_CAP_NEXT_MASK	GENMASK(31, 20)
 
 #define PCIE_CORE_AXI_CONF_BASE		0xc00000
 #define PCIE_CORE_OB_REGION_ADDR0	(PCIE_CORE_AXI_CONF_BASE + 0x0)
@@ -558,6 +560,12 @@ static int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
 	rockchip_pcie_write(rockchip,
 			    PCI_CLASS_BRIDGE_PCI << PCIE_RC_CONFIG_SCC_SHIFT,
 			    PCIE_RC_CONFIG_RID_CCR);
+
+	/* Clear THP cap's next cap pointer to remove L1 substate cap */
+	status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_THP_CAP);
+	status &= ~PCIE_RC_CONFIG_THP_CAP_NEXT_MASK;
+	rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_THP_CAP);
+
 	rockchip_pcie_write(rockchip, 0x0, PCIE_RC_BAR_CONF);
 
 	rockchip_pcie_write(rockchip,
-- 
2.3.7
