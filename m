From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 29/57] ram: rk3399: Configure PHY RX_CM_INPUT for lpddr4
Date: Tue, 16 Jul 2019 17:27:17 +0530
Message-ID: <20190716115745.12585-30-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190716115745.12585-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, gajjar04akash-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Configure PHY RX_CM_INPUT for lpddr4 during phy IO config.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index c02f936f2a..2ab10da53f 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -39,6 +39,7 @@
 #define PHY_BOOSTN_EN		0x1
 #define PHY_SLEWP_EN		0x1
 #define PHY_SLEWN_EN		0x1
+#define PHY_RX_CM_INPUT		0x1
 
 #define CRU_SFTRST_DDR_CTRL(ch, n)	((0x1 << (8 + 16 + (ch) * 4)) | \
 					((n) << (8 + (ch) * 4)))
@@ -384,6 +385,27 @@ static int phy_io_config(const struct chan_info *chan,
 	/* PHY_939 PHY_PAD_CS_DRIVE */
 	clrsetbits_le32(&denali_phy[939], 0x3 << 17, speed << 17);
 
+	if (IS_ENABLED(CONFIG_RAM_RK3399_LPDDR4)) {
+		/* RX_CM_INPUT */
+		reg_value = PHY_RX_CM_INPUT;
+		/* PHY_924 PHY_PAD_FDBK_DRIVE */
+		clrsetbits_le32(&denali_phy[924], 0x1 << 14, reg_value << 14);
+		/* PHY_926 PHY_PAD_DATA_DRIVE */
+		clrsetbits_le32(&denali_phy[926], 0x1 << 11, reg_value << 11);
+		/* PHY_927 PHY_PAD_DQS_DRIVE */
+		clrsetbits_le32(&denali_phy[927], 0x1 << 13, reg_value << 13);
+		/* PHY_928 PHY_PAD_ADDR_DRIVE */
+		clrsetbits_le32(&denali_phy[928], 0x1 << 19, reg_value << 19);
+		/* PHY_929 PHY_PAD_CLK_DRIVE */
+		clrsetbits_le32(&denali_phy[929], 0x1 << 21, reg_value << 21);
+		/* PHY_935 PHY_PAD_CKE_DRIVE */
+		clrsetbits_le32(&denali_phy[935], 0x1 << 19, reg_value << 19);
+		/* PHY_937 PHY_PAD_RST_DRIVE */
+		clrsetbits_le32(&denali_phy[937], 0x1 << 19, reg_value << 19);
+		/* PHY_939 PHY_PAD_CS_DRIVE */
+		clrsetbits_le32(&denali_phy[939], 0x1 << 19, reg_value << 19);
+	}
+
 	return 0;
 }
 
-- 
2.18.0.321.gffc6fa0e3
