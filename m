From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v3 2/3] PCI: rockchip: Mark RC as common clock architecture
Date: Wed, 12 Oct 2016 10:05:02 +0800
Message-ID: <1476237903-15076-2-git-send-email-shawn.lin@rock-chips.com>
References: <1476237903-15076-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1476237903-15076-1-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
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

The default value of common clock configuration is
zero indicating Rockchip's RC is using asynchronous
clock architecture but actually we are using common
clock. This will confuses some EP drivers if they
need some different settings referring to this value.
So let's fix it.

Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

---

Changes in v3:
- rebase the code since it isn't cleanly applied again

Changes in v2:
- rebase the code since it isn't cleanly applied after Bjorn's cleanup

 drivers/pci/host/pcie-rockchip.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/pci/host/pcie-rockchip.c b/drivers/pci/host/pcie-rockchip.c
index a67ff9e..d51afe6 100644
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
@@ -540,6 +541,11 @@ static int rockchip_pcie_init_port(struct rockchip_pcie *rockchip_pcie)
 
 	rockchip_pcie_set_power_limit(rockchip_pcie);
 
+	/* Set RC's clock architecture as common clock */
+	status = rockchip_pcie_readl(rockchip_pcie, PCIE_RC_CONFIG_LCS);
+	status |= PCIE_RC_CONFIG_LCS_CCC;
+	rockchip_pcie_writel(rockchip_pcie, PCIE_RC_CONFIG_LCS, status);
+
 	/* Enable Gen1 training */
 	rockchip_pcie_writel(rockchip_pcie, PCIE_CLIENT_CONFIG,
 			PCIE_CLIENT_LINK_TRAIN_ENABLE);
-- 
2.3.7
