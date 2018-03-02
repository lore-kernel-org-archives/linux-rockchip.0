From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH] soc: rockchip: disable jtag switching for RK3128 SoCs
Date: Fri,  2 Mar 2018 13:20:31 +0100
Message-ID: <20180302122031.17426-1-heiko@sntech.de>
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
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Xiao Yao <xiaoyao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

From: Xiao Yao <xiaoyao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Disable IO function switching between sdmmc and jtag
for RK3128 SoCs.

Signed-off-by: Xiao Yao <xiaoyao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
---
 drivers/soc/rockchip/grf.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/soc/rockchip/grf.c b/drivers/soc/rockchip/grf.c
index dd81b87d79f0..96882ffde67e 100644
--- a/drivers/soc/rockchip/grf.c
+++ b/drivers/soc/rockchip/grf.c
@@ -43,6 +43,17 @@ static const struct rockchip_grf_info rk3036_grf __initconst = {
 	.num_values = ARRAY_SIZE(rk3036_defaults),
 };
 
+#define RK3128_GRF_SOC_CON0		0x140
+
+static const struct rockchip_grf_value rk3128_defaults[] __initconst = {
+	{ "jtag switching", RK3128_GRF_SOC_CON0, HIWORD_UPDATE(0, 1, 8) },
+};
+
+static const struct rockchip_grf_info rk3128_grf __initconst = {
+	.values = rk3128_defaults,
+	.num_values = ARRAY_SIZE(rk3128_defaults),
+};
+
 #define RK3228_GRF_SOC_CON6		0x418
 
 static const struct rockchip_grf_value rk3228_defaults[] __initconst = {
@@ -102,6 +113,9 @@ static const struct of_device_id rockchip_grf_dt_match[] __initconst = {
 	{
 		.compatible = "rockchip,rk3036-grf",
 		.data = (void *)&rk3036_grf,
+	}, {
+		.compatible = "rockchip,rk3128-grf",
+		.data = (void *)&rk3128_grf,
 	}, {
 		.compatible = "rockchip,rk3228-grf",
 		.data = (void *)&rk3228_grf,
-- 
2.16.1
