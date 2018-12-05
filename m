From: Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 4.19 029/123] ASoC: rockchip: add missing slave_config setting for I2S
Date: Wed,  5 Dec 2018 04:34:21 -0500
Message-ID: <20181205093555.5386-29-sashal@kernel.org>
References: <20181205093555.5386-1-sashal@kernel.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20181205093555.5386-1-sashal@kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: stable@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Katsuhiro Suzuki <katsuhiro@katsuster.net>, Mark Brown <broonie@kernel.org>, Sasha Levin <sashal@kernel.org>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Katsuhiro Suzuki <katsuhiro@katsuster.net>

[ Upstream commit 16a8ee4c80b45984b6de1f90a49edcf336b7c621 ]

This patch adds missing prepare_sleve_config that is needed for
setup the DMA slave channel for I2S.

Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Signed-off-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 sound/soc/rockchip/rockchip_pcm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/rockchip/rockchip_pcm.c b/sound/soc/rockchip/rockchip_pcm.c
index f77538319221..7029e0b85f9e 100644
--- a/sound/soc/rockchip/rockchip_pcm.c
+++ b/sound/soc/rockchip/rockchip_pcm.c
@@ -32,6 +32,7 @@ static const struct snd_pcm_hardware snd_rockchip_hardware = {
 
 static const struct snd_dmaengine_pcm_config rk_dmaengine_pcm_config = {
 	.pcm_hardware = &snd_rockchip_hardware,
+	.prepare_slave_config = snd_dmaengine_pcm_prepare_slave_config,
 	.prealloc_buffer_size = 32 * 1024,
 };
 
-- 
2.17.1
