From: Sasha Levin <sashal-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: [PATCH AUTOSEL 4.19 19/68] ASoC: rockchip: Fix mono capture
Date: Tue, 13 Aug 2019 22:14:57 -0400
Message-ID: <20190814021548.16001-19-sashal@kernel.org>
References: <20190814021548.16001-1-sashal@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190814021548.16001-1-sashal-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, stable-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Sasha Levin <sashal-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Cheng-Yi Chiang <cychiang-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

From: Cheng-Yi Chiang <cychiang-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

[ Upstream commit 789e162a6255325325bd321ab0cd51dc7e285054 ]

This reverts commit db51707b9c9aeedd310ebce60f15d5bb006567e0.
Revert "ASoC: rockchip: i2s: Support mono capture"

Previous discussion in

https://patchwork.kernel.org/patch/10147153/

explains the issue of the patch.
While device is configured as 1-ch, hardware is still
generating a 2-ch stream.
When user space reads the data and assumes it is a 1-ch stream,
the rate will be slower by 2x.

Revert the change so 1-ch is not supported.
User space can selectively take one channel data out of two channel
if 1-ch is preferred.
Currently, both channels record identical data.

Signed-off-by: Cheng-Yi Chiang <cychiang-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Link: https://lore.kernel.org/r/20190726044202.26866-1-cychiang-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
Signed-off-by: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Signed-off-by: Sasha Levin <sashal-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
---
 sound/soc/rockchip/rockchip_i2s.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 60d43d53a8f5e..11399f81c92f9 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -329,7 +329,6 @@ static int rockchip_i2s_hw_params(struct snd_pcm_substream *substream,
 		val |= I2S_CHN_4;
 		break;
 	case 2:
-	case 1:
 		val |= I2S_CHN_2;
 		break;
 	default:
@@ -462,7 +461,7 @@ static struct snd_soc_dai_driver rockchip_i2s_dai = {
 	},
 	.capture = {
 		.stream_name = "Capture",
-		.channels_min = 1,
+		.channels_min = 2,
 		.channels_max = 2,
 		.rates = SNDRV_PCM_RATE_8000_192000,
 		.formats = (SNDRV_PCM_FMTBIT_S8 |
@@ -662,7 +661,7 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
 	}
 
 	if (!of_property_read_u32(node, "rockchip,capture-channels", &val)) {
-		if (val >= 1 && val <= 8)
+		if (val >= 2 && val <= 8)
 			soc_dai->capture.channels_max = val;
 	}
 
-- 
2.20.1
