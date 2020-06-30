From: Yu-Hsuan Hsu <yuhsuan@chromium.org>
Subject: [PATCH] ASoC: rockchip: add format and rate constraints on rk3399
Date: Tue, 30 Jun 2020 17:16:15 +0800
Message-ID: <20200630091615.4020059-1-yuhsuan@chromium.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Cheng-Yi Chiang <cychiang@chromium.org>, Tzung-Bi Shih <tzungbi@chromium.org>, Yu-Hsuan Hsu <yuhsuan@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

S8 and S24 formats does not work on this machine driver so force to use
S16_LE instead.

In addition, add constraint to limit the max value of rate because the
rate higher than 96000(172000, 192000) is not stable either.

Signed-off-by: Yu-Hsuan Hsu <yuhsuan@chromium.org>
---
 sound/soc/rockchip/rk3399_gru_sound.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/sound/soc/rockchip/rk3399_gru_sound.c b/sound/soc/rockchip/rk3399_gru_sound.c
index f45e5aaa4b302..9539b0d024fed 100644
--- a/sound/soc/rockchip/rk3399_gru_sound.c
+++ b/sound/soc/rockchip/rk3399_gru_sound.c
@@ -219,19 +219,32 @@ static int rockchip_sound_dmic_hw_params(struct snd_pcm_substream *substream,
 	return 0;
 }
 
+static int rockchip_sound_startup(struct snd_pcm_substream *substream)
+{
+	struct snd_pcm_runtime *runtime = substream->runtime;
+
+	runtime->hw.formats = SNDRV_PCM_FMTBIT_S16_LE;
+	return snd_pcm_hw_constraint_minmax(runtime, SNDRV_PCM_HW_PARAM_RATE,
+			8000, 96000);
+}
+
 static const struct snd_soc_ops rockchip_sound_max98357a_ops = {
+	.startup = rockchip_sound_startup,
 	.hw_params = rockchip_sound_max98357a_hw_params,
 };
 
 static const struct snd_soc_ops rockchip_sound_rt5514_ops = {
+	.startup = rockchip_sound_startup,
 	.hw_params = rockchip_sound_rt5514_hw_params,
 };
 
 static const struct snd_soc_ops rockchip_sound_da7219_ops = {
+	.startup = rockchip_sound_startup,
 	.hw_params = rockchip_sound_da7219_hw_params,
 };
 
 static const struct snd_soc_ops rockchip_sound_dmic_ops = {
+	.startup = rockchip_sound_startup,
 	.hw_params = rockchip_sound_dmic_hw_params,
 };
 
-- 
2.27.0.212.ge8ba1cc988-goog
