From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 4/4] mfd: rk808: use DEFINE_RES_IRQ for rk808 rtc alarm irq
Date: Tue, 17 Sep 2019 10:12:56 +0200
Message-ID: <20190917081256.24919-4-heiko@sntech.de>
References: <20190917081256.24919-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190917081256.24919-1-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: lee.jones@linaro.org
Cc: linux-kernel@vger.kernel.org, d.schultz@phytec.de, linux-rockchip@lists.infradead.org, christoph.muellner@theobroma-systems.com, tony.xie@rock-chips.com, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

Do not open code the definition, instead use the nice DEFINE_RES_IRQ
macro for it.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/mfd/rk808.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index c0e5e921766d..a69a6742ecdc 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -109,11 +109,7 @@ static const struct regmap_config rk817_regmap_config = {
 };
 
 static struct resource rtc_resources[] = {
-	{
-		.start  = RK808_IRQ_RTC_ALARM,
-		.end    = RK808_IRQ_RTC_ALARM,
-		.flags  = IORESOURCE_IRQ,
-	}
+	DEFINE_RES_IRQ(RK808_IRQ_RTC_ALARM),
 };
 
 static struct resource rk817_rtc_resources[] = {
-- 
2.20.1
