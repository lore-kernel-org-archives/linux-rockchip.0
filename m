From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 25/57] ram: rk3399: Avoid two channel ZQ Cal Start at the
 same time
Date: Tue, 16 Jul 2019 17:27:13 +0530
Message-ID: <20190716115745.12585-26-jagan@amarulasolutions.com>
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

It is possible in lpddr4 dram, where both the channels would
start at same time with ZQ Cal Start. If it uses ZQ Call start
then it will use RZQ.

For example LPDDR4 366 Dual-Die, Quad-Channel Package, RZQ maybe
connect to both channel. If ZQ Cal Start at the same time,
it will use the same RZQ.

It is not a problem of using RZQ in both the channels, but can not
use at the same time.

So, to avoid this, we have an option of dram tINIT3 value for
increasing the frequency for channel 1.

This patch increase the available tINIT3 with existing running
dram frequency.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 023838a301..beb4f6de54 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -550,6 +550,20 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 		    sizeof(struct rk3399_ddr_pctl_regs) - 4);
 	writel(params_ctl[0], &denali_ctl[0]);
 
+	/*
+	 * two channel init at the same time, then ZQ Cal Start
+	 * at the same time, it will use the same RZQ, but cannot
+	 * start at the same time.
+	 *
+	 * So, increase tINIT3 for channel 1, will avoid two
+	 * channel ZQ Cal Start at the same time
+	 */
+	if (params->base.dramtype == LPDDR4 && channel == 1) {
+		tmp = ((params->base.ddr_freq * MHz + 999) / 1000);
+		tmp1 = readl(&denali_ctl[14]);
+		writel(tmp + tmp1, &denali_ctl[14]);
+	}
+
 	copy_to_reg(denali_pi, &params->pi_regs.denali_pi[0],
 		    sizeof(struct rk3399_ddr_pi_regs));
 
-- 
2.18.0.321.gffc6fa0e3
