From: Cheng-Yi Chiang <cychiang@chromium.org>
Subject: [PATCH] drm: bridge/dw_hdmi: add audio sample channel status setting
Date: Tue,  3 Sep 2019 13:51:03 +0800
Message-ID: <20190903055103.134764-1-cychiang@chromium.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, a.hajda@samsung.com, Laurent.pinchart@ideasonboard.com, airlied@linux.ie, daniel@ffwll.ch, kuninori.morimoto.gx@renesas.com, sam@ravnborg.org, cychiang@chromium.org, dianders@chromium.org, dgreid@chromium.org, tzungbi@chromium.org, zhengxing@rock-chips.com, cain.cai@rock-chips.com, eddie.cai@rock-chips.com, jeffy.chen@rock-chips.com, kuankuan.y@gmail.com, enric.balletbo@collabora.com, dri-devel@lists.freedesktop.org, Yakir Yang <ykk@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

From: Yakir Yang <ykk@rock-chips.com>

When transmitting IEC60985 linear PCM audio, we configure the
Audio Sample Channel Status information of all the channel
status bits in the IEC60958 frame.
Refer to 60958-3 page 10 for frequency, original frequency, and
wordlength setting.

This fix the issue that audio does not come out on some monitors
(e.g. LG 22CV241)

Signed-off-by: Yakir Yang <ykk@rock-chips.com>
Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 59 +++++++++++++++++++++++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.h | 20 ++++++++
 2 files changed, 79 insertions(+)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index bd65d0479683..34d46e25d610 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -582,6 +582,63 @@ static unsigned int hdmi_compute_n(unsigned int freq, unsigned long pixel_clk)
 	return n;
 }
 
+static void hdmi_set_schnl(struct dw_hdmi *hdmi)
+{
+	u8 aud_schnl_samplerate;
+	u8 aud_schnl_8;
+
+	/* These registers are on RK3288 using version 2.0a. */
+	if (hdmi->version != 0x200a)
+		return;
+
+	switch (hdmi->sample_rate) {
+	case 32000:
+		aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_32K;
+		break;
+	case 44100:
+		aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_44K1;
+		break;
+	case 48000:
+		aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_48K;
+		break;
+	case 88200:
+		aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_88K2;
+		break;
+	case 96000:
+		aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_96K;
+		break;
+	case 176400:
+		aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_176K4;
+		break;
+	case 192000:
+		aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_192K;
+		break;
+	case 768000:
+		aud_schnl_samplerate = HDMI_FC_AUDSCHNLS7_SMPRATE_768K;
+		break;
+	default:
+		dev_warn(hdmi->dev, "Unsupported audio sample rate (%u)\n",
+			 hdmi->sample_rate);
+		return;
+	}
+
+	/* set channel status register */
+	hdmi_modb(hdmi, aud_schnl_samplerate, HDMI_FC_AUDSCHNLS7_SMPRATE_MASK,
+		  HDMI_FC_AUDSCHNLS7);
+
+	/*
+	 * Set original frequency to be the same as frequency.
+	 * Use one-complement value as stated in IEC60958-3 page 13.
+	 */
+	aud_schnl_8 = (~aud_schnl_samplerate) <<
+			HDMI_FC_AUDSCHNLS8_ORIGSAMPFREQ_OFFSET;
+
+	/* This means word length is 16 bit. Refer to IEC60958-3 page 12. */
+	aud_schnl_8 |= 2 << HDMI_FC_AUDSCHNLS8_WORDLEGNTH_OFFSET;
+
+	hdmi_writeb(hdmi, aud_schnl_8, HDMI_FC_AUDSCHNLS8);
+}
+
 static void hdmi_set_clk_regenerator(struct dw_hdmi *hdmi,
 	unsigned long pixel_clk, unsigned int sample_rate)
 {
@@ -620,6 +677,8 @@ static void hdmi_set_clk_regenerator(struct dw_hdmi *hdmi,
 	hdmi->audio_cts = cts;
 	hdmi_set_cts_n(hdmi, cts, hdmi->audio_enable ? n : 0);
 	spin_unlock_irq(&hdmi->audio_lock);
+
+	hdmi_set_schnl(hdmi);
 }
 
 static void hdmi_init_clk_regenerator(struct dw_hdmi *hdmi)
diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
index 6988f12d89d9..619ebc1c8354 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.h
@@ -158,6 +158,17 @@
 #define HDMI_FC_SPDDEVICEINF                    0x1062
 #define HDMI_FC_AUDSCONF                        0x1063
 #define HDMI_FC_AUDSSTAT                        0x1064
+#define HDMI_FC_AUDSV                           0x1065
+#define HDMI_FC_AUDSU                           0x1066
+#define HDMI_FC_AUDSCHNLS0                      0x1067
+#define HDMI_FC_AUDSCHNLS1                      0x1068
+#define HDMI_FC_AUDSCHNLS2                      0x1069
+#define HDMI_FC_AUDSCHNLS3                      0x106a
+#define HDMI_FC_AUDSCHNLS4                      0x106b
+#define HDMI_FC_AUDSCHNLS5                      0x106c
+#define HDMI_FC_AUDSCHNLS6                      0x106d
+#define HDMI_FC_AUDSCHNLS7                      0x106e
+#define HDMI_FC_AUDSCHNLS8                      0x106f
 #define HDMI_FC_DATACH0FILL                     0x1070
 #define HDMI_FC_DATACH1FILL                     0x1071
 #define HDMI_FC_DATACH2FILL                     0x1072
@@ -706,6 +717,15 @@ enum {
 /* HDMI_FC_AUDSCHNLS7 field values */
 	HDMI_FC_AUDSCHNLS7_ACCURACY_OFFSET = 4,
 	HDMI_FC_AUDSCHNLS7_ACCURACY_MASK = 0x30,
+	HDMI_FC_AUDSCHNLS7_SMPRATE_MASK = 0x0f,
+	HDMI_FC_AUDSCHNLS7_SMPRATE_192K = 0xe,
+	HDMI_FC_AUDSCHNLS7_SMPRATE_176K4 = 0xc,
+	HDMI_FC_AUDSCHNLS7_SMPRATE_96K = 0xa,
+	HDMI_FC_AUDSCHNLS7_SMPRATE_768K = 0x9,
+	HDMI_FC_AUDSCHNLS7_SMPRATE_88K2 = 0x8,
+	HDMI_FC_AUDSCHNLS7_SMPRATE_32K = 0x3,
+	HDMI_FC_AUDSCHNLS7_SMPRATE_48K = 0x2,
+	HDMI_FC_AUDSCHNLS7_SMPRATE_44K1 = 0x0,
 
 /* HDMI_FC_AUDSCHNLS8 field values */
 	HDMI_FC_AUDSCHNLS8_ORIGSAMPFREQ_MASK = 0xf0,
-- 
2.23.0.187.g17f5b7556c-goog
