From: Alper Nebi Yasak <alpernebiyasak@gmail.com>
Subject: [PATCH] ASoC: rk3399_gru_sound: Add DAPM pins, kcontrols for jack detection
Date: Tue, 21 Jul 2020 21:27:10 +0300
Message-ID: <20200721182709.6895-1-alpernebiyasak@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark Brown <broonie@kernel.org>
Cc: alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>, Alper Nebi Yasak <alpernebiyasak@gmail.com>, Jaroslav Kysela <perex@perex.cz>, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

PulseAudio (and perhaps other userspace utilities) can not detect any
jack for rk3399_gru_sound as the driver doesn't expose related Jack
kcontrols.

This patch adds two DAPM pins to the headset jack, where the
snd_soc_card_jack_new() call automatically creates "Headphones Jack" and
"Headset Mic Jack" kcontrols from them.

With an appropriate ALSA UCM config specifying JackControl fields for
the "Headphones" and "Headset" (mic) devices, PulseAudio can detect
plug/unplug events for both of them after this patch.

Signed-off-by: Alper Nebi Yasak <alpernebiyasak@gmail.com>
---

 sound/soc/rockchip/rk3399_gru_sound.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/sound/soc/rockchip/rk3399_gru_sound.c b/sound/soc/rockchip/rk3399_gru_sound.c
index f45e5aaa4b30..c17d146717a8 100644
--- a/sound/soc/rockchip/rk3399_gru_sound.c
+++ b/sound/soc/rockchip/rk3399_gru_sound.c
@@ -32,6 +32,19 @@ static unsigned int dmic_wakeup_delay;
 
 static struct snd_soc_jack rockchip_sound_jack;
 
+/* Headset jack detection DAPM pins */
+static struct snd_soc_jack_pin rockchip_sound_jack_pins[] = {
+	{
+		.pin = "Headphones",
+		.mask = SND_JACK_HEADPHONE,
+	},
+	{
+		.pin = "Headset Mic",
+		.mask = SND_JACK_MICROPHONE,
+	},
+
+};
+
 static const struct snd_soc_dapm_widget rockchip_dapm_widgets[] = {
 	SND_SOC_DAPM_HP("Headphones", NULL),
 	SND_SOC_DAPM_SPK("Speakers", NULL),
@@ -176,7 +189,9 @@ static int rockchip_sound_da7219_init(struct snd_soc_pcm_runtime *rtd)
 				    SND_JACK_HEADSET | SND_JACK_LINEOUT |
 				    SND_JACK_BTN_0 | SND_JACK_BTN_1 |
 				    SND_JACK_BTN_2 | SND_JACK_BTN_3,
-				    &rockchip_sound_jack, NULL, 0);
+				    &rockchip_sound_jack,
+				    rockchip_sound_jack_pins,
+				    ARRAY_SIZE(rockchip_sound_jack_pins));
 
 	if (ret) {
 		dev_err(rtd->card->dev, "New Headset Jack failed! (%d)\n", ret);
-- 
2.28.0.rc1
