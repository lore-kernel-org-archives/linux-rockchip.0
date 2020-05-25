From: Tiezhu Yang <yangtiezhu-cXZgJK919ebM1kAEIRd3EQ@public.gmane.org>
Subject: [PATCH v2 2/2] phy: Remove CONFIG_ARCH_* check for related subdir in
 Makefile
Date: Mon, 25 May 2020 21:08:58 +0800
Message-ID: <1590412138-13903-2-git-send-email-yangtiezhu@loongson.cn>
References: <1590412138-13903-1-git-send-email-yangtiezhu@loongson.cn>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1590412138-13903-1-git-send-email-yangtiezhu-cXZgJK919ebM1kAEIRd3EQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>, Vinod Koul <vkoul-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Matthias Brugger <matthias.bgg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Tiezhu Yang <yangtiezhu-cXZgJK919ebM1kAEIRd3EQ@public.gmane.org>, Xuefeng Li <lixuefeng-cXZgJK919ebM1kAEIRd3EQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

If CONFIG_ARCH_ROCKCHIP is not set but COMPILE_TEST is set, the file in
the subdir rockchip can not be built due to CONFIG_ARCH_ROCKCHIP check
in drivers/phy/Makefile.

Since the related configs in drivers/phy/rockchip/Kconfig depend on
ARCH_ROCKCHIP, so remove CONFIG_ARCH_ROCKCHIP check for subdir rockchip
in drivers/phy/Makefile.

The other CONFIG_ARCH_* about allwinner, amlogic, mediatek, renesas and
tegra have the same situation, so remove them too.

Signed-off-by: Tiezhu Yang <yangtiezhu-cXZgJK919ebM1kAEIRd3EQ@public.gmane.org>
---

v2:
  - Remove all the CONFIG_ARCH_* check for related subdir in Makefile
  - Modify the patch subject and update commit message

 drivers/phy/Makefile | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
index 310c149..16e2622 100644
--- a/drivers/phy/Makefile
+++ b/drivers/phy/Makefile
@@ -8,24 +8,24 @@ obj-$(CONFIG_GENERIC_PHY_MIPI_DPHY)	+= phy-core-mipi-dphy.o
 obj-$(CONFIG_PHY_LPC18XX_USB_OTG)	+= phy-lpc18xx-usb-otg.o
 obj-$(CONFIG_PHY_XGENE)			+= phy-xgene.o
 obj-$(CONFIG_PHY_PISTACHIO_USB)		+= phy-pistachio-usb.o
-obj-$(CONFIG_ARCH_SUNXI)		+= allwinner/
-obj-$(CONFIG_ARCH_MESON)		+= amlogic/
-obj-$(CONFIG_ARCH_MEDIATEK)		+= mediatek/
-obj-$(CONFIG_ARCH_RENESAS)		+= renesas/
-obj-$(CONFIG_ARCH_ROCKCHIP)		+= rockchip/
-obj-$(CONFIG_ARCH_TEGRA)		+= tegra/
-obj-y					+= broadcom/	\
+obj-y					+= allwinner/	\
+					   amlogic/	\
+					   broadcom/	\
 					   cadence/	\
 					   freescale/	\
 					   hisilicon/	\
 					   intel/	\
 					   lantiq/	\
 					   marvell/	\
+					   mediatek/	\
 					   motorola/	\
 					   mscc/	\
 					   qualcomm/	\
 					   ralink/	\
+					   renesas/	\
+					   rockchip/	\
 					   samsung/	\
 					   socionext/	\
 					   st/		\
+					   tegra/	\
 					   ti/
-- 
2.1.0
