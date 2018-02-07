From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH 2/2] soc: rockchip: disable jtag switching for RK3228/RK3229
 SoCs
Date: Wed,  7 Feb 2018 14:20:03 +0800
Message-ID: <1517984403-195765-2-git-send-email-shawn.lin@rock-chips.com>
References: <1517984403-195765-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1517984403-195765-1-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Disable IO function switching between sdmmc and jtag
for RK3228 and RK3229 SoCs.

Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 drivers/soc/rockchip/grf.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/soc/rockchip/grf.c b/drivers/soc/rockchip/grf.c
index 15e71fd..dd81b87 100644
--- a/drivers/soc/rockchip/grf.c
+++ b/drivers/soc/rockchip/grf.c
@@ -43,6 +43,17 @@ struct rockchip_grf_info {
 	.num_values = ARRAY_SIZE(rk3036_defaults),
 };
 
+#define RK3228_GRF_SOC_CON6		0x418
+
+static const struct rockchip_grf_value rk3228_defaults[] __initconst = {
+	{ "jtag switching", RK3228_GRF_SOC_CON6, HIWORD_UPDATE(0, 1, 8) },
+};
+
+static const struct rockchip_grf_info rk3228_grf __initconst = {
+	.values = rk3228_defaults,
+	.num_values = ARRAY_SIZE(rk3228_defaults),
+};
+
 #define RK3288_GRF_SOC_CON0		0x244
 
 static const struct rockchip_grf_value rk3288_defaults[] __initconst = {
@@ -92,6 +103,9 @@ struct rockchip_grf_info {
 		.compatible = "rockchip,rk3036-grf",
 		.data = (void *)&rk3036_grf,
 	}, {
+		.compatible = "rockchip,rk3228-grf",
+		.data = (void *)&rk3228_grf,
+	}, {
 		.compatible = "rockchip,rk3288-grf",
 		.data = (void *)&rk3288_grf,
 	}, {
-- 
1.9.1
