From: Alyssa Rosenzweig <alyssa-kyPdXwtBHbIqQpLF9uBUvQ@public.gmane.org>
Subject: [PATCH] ASoC: rockchip: Select DMA_PL330 by RK3399 audio
Date: Sat, 23 Mar 2019 23:24:33 -0700
Message-ID: <20190324062433.2369-1-alyssa@rosenzweig.io>
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
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Alyssa Rosenzweig <alyssa-kyPdXwtBHbIqQpLF9uBUvQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Without the appropriate DMA controller selected, the RK3399 audio
drivers compile but fail immediately. Accordingly, selecting the RK3399
audio without the corresponding PL330 controller is an invalid
configuration. Prevent this by an appropriate `select` directive in the
Kconfig.

Signed-off-by: Alyssa Rosenzweig <alyssa-kyPdXwtBHbIqQpLF9uBUvQ@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
---
 sound/soc/rockchip/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/rockchip/Kconfig b/sound/soc/rockchip/Kconfig
index 957046ac6c8c..fa3cab461a60 100644
--- a/sound/soc/rockchip/Kconfig
+++ b/sound/soc/rockchip/Kconfig
@@ -73,6 +73,7 @@ config SND_SOC_RK3399_GRU_SOUND
 	select SND_SOC_RT5514_SPI
 	select SND_SOC_HDMI_CODEC
 	select SND_SOC_DMIC
+	select PL330_DMA
 	help
 	  Say Y or M here if you want to add support multiple codecs for SoC
 	  audio on Rockchip RK3399 GRU boards.
-- 
2.20.1
