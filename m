From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 65/92] ram: rk3399: Configure SLEWP_EN, SLEWN_EN for lpddr4
Date: Tue, 11 Jun 2019 20:21:08 +0530
Message-ID: <20190611145135.21399-66-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190611145135.21399-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, gajjar04akash-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Configure SLEWP_EN, SLEWN_EN for lpddr4 during phy IO config.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 4328790a4f..78e249e164 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -37,6 +37,8 @@
 
 #define PHY_BOOSTP_EN		0x1
 #define PHY_BOOSTN_EN		0x1
+#define PHY_SLEWP_EN		0x1
+#define PHY_SLEWN_EN		0x1
 
 #define CRU_SFTRST_DDR_CTRL(ch, n)	((0x1 << (8 + 16 + (ch) * 4)) | \
 					((n) << (8 + (ch) * 4)))
@@ -335,6 +337,25 @@ static int phy_io_config(const struct chan_info *chan,
 		clrsetbits_le32(&denali_phy[937], 0xff << 20, reg_value << 20);
 		/* PHY_939 PHY_PAD_CS_DRIVE */
 		clrsetbits_le32(&denali_phy[939], 0xff << 20, reg_value << 20);
+
+		/* SLEWP_EN & SLEWN_EN */
+		reg_value = ((PHY_SLEWP_EN << 3) | PHY_SLEWN_EN);
+		/* PHY_924 PHY_PAD_FDBK_DRIVE */
+		clrsetbits_le32(&denali_phy[924], 0x3f << 8, reg_value << 8);
+		/* PHY_926 PHY_PAD_DATA_DRIVE */
+		clrsetbits_le32(&denali_phy[926], 0x3f, reg_value);
+		/* PHY_927 PHY_PAD_DQS_DRIVE */
+		clrsetbits_le32(&denali_phy[927], 0x3f, reg_value);
+		/* PHY_928 PHY_PAD_ADDR_DRIVE */
+		clrsetbits_le32(&denali_phy[928], 0x3f << 8, reg_value << 8);
+		/* PHY_929 PHY_PAD_CLK_DRIVE */
+		clrsetbits_le32(&denali_phy[929], 0x3f << 8, reg_value << 8);
+		/* PHY_935 PHY_PAD_CKE_DRIVE */
+		clrsetbits_le32(&denali_phy[935], 0x3f << 8, reg_value << 8);
+		/* PHY_937 PHY_PAD_RST_DRIVE */
+		clrsetbits_le32(&denali_phy[937], 0x3f << 8, reg_value << 8);
+		/* PHY_939 PHY_PAD_CS_DRIVE */
+		clrsetbits_le32(&denali_phy[939], 0x3f << 8, reg_value << 8);
 	}
 
 	/* speed setting */
-- 
2.18.0.321.gffc6fa0e3
