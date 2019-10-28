From: kbuild test robot <lkp@intel.com>
Subject: [RFC PATCH] ASoC: rockchip_max98090: rk_card_configs[] can be static
Date: Tue, 29 Oct 2019 01:02:46 +0800
Message-ID: <20191028170246.5uhqmm4gc576yrsh@4978f4969bb8>
References: <20191025133007.11190-4-cychiang@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20191025133007.11190-4-cychiang@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Cheng-Yi Chiang <cychiang@chromium.org>
Cc: kbuild-all@lists.01.org, linux-kernel@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>, Hans Verkuil <hverkuil@xs4all.nl>, Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Takashi Iwai <tiwai@suse.com>, Jaroslav Kysela <perex@perex.cz>, Russell King <rmk+kernel@armlinux.org.uk>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, dianders@chromium.org, dgreid@chromium.org, tzungbi@chromium.org
List-Id: linux-rockchip.vger.kernel.org


Fixes: 0cc0922ae849 ("ASoC: rockchip_max98090: Optionally support HDMI use case")
Signed-off-by: kbuild test robot <lkp@intel.com>
---
 rockchip_max98090.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
index 550e577897198..a476749931387 100644
--- a/sound/soc/rockchip/rockchip_max98090.c
+++ b/sound/soc/rockchip/rockchip_max98090.c
@@ -472,7 +472,7 @@ static int snd_rk_mc_probe(struct platform_device *pdev)
 	return ret;
 }
 
-struct rk_card_config rk_card_configs[] = {
+static struct rk_card_config rk_card_configs[] = {
 	[RK_USE_MAX98090] = {
 		.usage = RK_USE_MAX98090,
 		.card = &rockchip_max98090_card,
