From: Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 5.3 22/81] ASoc: rockchip: i2s: Fix RPM imbalance
Date: Wed, 30 Oct 2019 11:48:28 -0400
Message-ID: <20191030154928.9432-22-sashal@kernel.org>
References: <20191030154928.9432-1-sashal@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <stable-owner@vger.kernel.org>
In-Reply-To: <20191030154928.9432-1-sashal@kernel.org>
Sender: stable-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org, stable@vger.kernel.org
Cc: Robin Murphy <robin.murphy@arm.com>, Mark Brown <broonie@kernel.org>, Sasha Levin <sashal@kernel.org>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Robin Murphy <robin.murphy@arm.com>

[ Upstream commit b1e620e7d32f5aad5353cc3cfc13ed99fea65d3a ]

If rockchip_pcm_platform_register() fails, e.g. upon deferring to wait
for an absent DMA channel, we return without disabling RPM, which makes
subsequent re-probe attempts scream with errors about the unbalanced
enable. Don't do that.

Fixes: ebb75c0bdba2 ("ASoC: rockchip: i2s: Adjust devm usage")
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
Link: https://lore.kernel.org/r/bcb12a849a05437fb18372bc7536c649b94bdf07.1570029862.git.robin.murphy@arm.com
Signed-off-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 sound/soc/rockchip/rockchip_i2s.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 88ebaf6e1880a..a0506e554c98b 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -674,7 +674,7 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
 	ret = rockchip_pcm_platform_register(&pdev->dev);
 	if (ret) {
 		dev_err(&pdev->dev, "Could not register PCM\n");
-		return ret;
+		goto err_suspend;
 	}
 
 	return 0;
-- 
2.20.1
