From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 31/57] ram: rk3399: Configure tsel write ca for lpddr4
Date: Tue, 16 Jul 2019 17:27:19 +0530
Message-ID: <20190716115745.12585-32-jagan@amarulasolutions.com>
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

tsel write ca_p and ca_n values need to write on PHY 544, 672
and 800 to configure ds odt.

Configure the same PHY register for lpddr4 would require a mask
value of (300 << 8).

Add support for it.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 7689711a99..1050cbdb07 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -502,9 +502,18 @@ static void set_ds_odt(const struct chan_info *chan,
 
 	/* phy_adr_tsel_select_ 8bits DENALI_PHY_544/672/800 offset_0 */
 	reg_value = tsel_wr_select_ca_n | (tsel_wr_select_ca_p << 0x4);
-	clrsetbits_le32(&denali_phy[544], 0xff, reg_value);
-	clrsetbits_le32(&denali_phy[672], 0xff, reg_value);
-	clrsetbits_le32(&denali_phy[800], 0xff, reg_value);
+	if (IS_ENABLED(CONFIG_RAM_RK3399_LPDDR4)) {
+		/* LPDDR4 these register read always return 0, so
+		 * can not use clrsetbits_le32(), need to write32
+		 */
+		writel((0x300 << 8) | reg_value, &denali_phy[544]);
+		writel((0x300 << 8) | reg_value, &denali_phy[672]);
+		writel((0x300 << 8) | reg_value, &denali_phy[800]);
+	} else {
+		clrsetbits_le32(&denali_phy[544], 0xff, reg_value);
+		clrsetbits_le32(&denali_phy[672], 0xff, reg_value);
+		clrsetbits_le32(&denali_phy[800], 0xff, reg_value);
+	}
 
 	/* phy_pad_addr_drive 8bits DENALI_PHY_928 offset_0 */
 	clrsetbits_le32(&denali_phy[928], 0xff, reg_value);
-- 
2.18.0.321.gffc6fa0e3
