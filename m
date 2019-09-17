From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 2/4] mfd: rk808: fix rk817 powerkey integration
Date: Tue, 17 Sep 2019 10:12:54 +0200
Message-ID: <20190917081256.24919-2-heiko@sntech.de>
References: <20190917081256.24919-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190917081256.24919-1-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: lee.jones@linaro.org
Cc: linux-kernel@vger.kernel.org, d.schultz@phytec.de, linux-rockchip@lists.infradead.org, christoph.muellner@theobroma-systems.com, tony.xie@rock-chips.com, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

The pwrkey integration seems to stem from the vendor kernel, as the
compatible is wrong and also the order of key-irqs is swapped.

So fix these issues to make the pwrkey on rk817 actually work.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/mfd/rk808.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 050478cabc95..966841744ee6 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -121,16 +121,8 @@ static struct resource rk817_rtc_resources[] = {
 };
 
 static struct resource rk805_key_resources[] = {
-	{
-		.start  = RK805_IRQ_PWRON_FALL,
-		.end    = RK805_IRQ_PWRON_FALL,
-		.flags  = IORESOURCE_IRQ,
-	},
-	{
-		.start  = RK805_IRQ_PWRON_RISE,
-		.end    = RK805_IRQ_PWRON_RISE,
-		.flags  = IORESOURCE_IRQ,
-	}
+	DEFINE_RES_IRQ(RK805_IRQ_PWRON_RISE),
+	DEFINE_RES_IRQ(RK805_IRQ_PWRON_FALL),
 };
 
 static struct resource rk817_pwrkey_resources[] = {
@@ -167,7 +159,7 @@ static const struct mfd_cell rk817s[] = {
 	{ .name = "rk808-clkout",},
 	{ .name = "rk808-regulator",},
 	{
-		.name = "rk8xx-pwrkey",
+		.name = "rk805-pwrkey",
 		.num_resources = ARRAY_SIZE(rk817_pwrkey_resources),
 		.resources = &rk817_pwrkey_resources[0],
 	},
-- 
2.20.1
