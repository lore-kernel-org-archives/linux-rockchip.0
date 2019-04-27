From: Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 5.0 37/79] ASoC: rockchip: pdm: fix regmap_ops hang issue
Date: Fri, 26 Apr 2019 21:37:56 -0400
Message-ID: <20190427013838.6596-37-sashal@kernel.org>
References: <20190427013838.6596-1-sashal@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190427013838.6596-1-sashal@kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org, stable@vger.kernel.org
Cc: Sugar Zhang <sugar.zhang@rock-chips.com>, Mark Brown <broonie@kernel.org>, Sasha Levin <sashal@kernel.org>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Sugar Zhang <sugar.zhang@rock-chips.com>

[ Upstream commit c85064435fe7a216ec0f0238ef2b8f7cd850a450 ]

This is because set_fmt ops maybe called when PD is off,
and in such case, regmap_ops will lead system hang.
enale PD before doing regmap_ops.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 sound/soc/rockchip/rockchip_pdm.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/sound/soc/rockchip/rockchip_pdm.c b/sound/soc/rockchip/rockchip_pdm.c
index 400e29edb1c9..8a2e3bbce3a1 100644
--- a/sound/soc/rockchip/rockchip_pdm.c
+++ b/sound/soc/rockchip/rockchip_pdm.c
@@ -208,7 +208,9 @@ static int rockchip_pdm_set_fmt(struct snd_soc_dai *cpu_dai,
 		return -EINVAL;
 	}
 
+	pm_runtime_get_sync(cpu_dai->dev);
 	regmap_update_bits(pdm->regmap, PDM_CLK_CTRL, mask, val);
+	pm_runtime_put(cpu_dai->dev);
 
 	return 0;
 }
-- 
2.19.1
