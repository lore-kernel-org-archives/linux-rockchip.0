Return-Path: <SRS0=Nc53=EX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59145C63697
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2020 19:47:19 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 863462222E
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2020 19:47:18 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="pBBjpkw8";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="qk6qS28g"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 863462222E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gDOSEZutWqenUcHy+nr0fYrKF9kmE6YBcd+xqL4QR34=; b=pBBjpkw8u6SYTv/Vrpz22ZyTJt
	PlTywAzunq/aG4eCnk/zjNrGCb9pcSXbnOLn3KJuv3mF2eXloIB2PDA4k8hEJ/6vFhRltkA/qIu+A
	4XLp2BDkDDuPDfXXKOxnBmJpwl51lVC43G51+9zzonnltMGYwowXUOm/NPotSyLAd8ZNBwfKiYBSg
	mFpAA4GMTigisqLYsxyvhXJq7+pZqVJR9vMb8gW26GA1woSF9liephvxIf5S/1P4YxOUlOpiw0CUh
	qCbDX2YMDpaDRiZ5x/XwA5T3hEiZsw/2mY3GMAqr6wyGgmbpL5fSRsEdS/ukImluSbHEPftQ14yQL
	rJBLfOrw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kf6wU-0003cy-MQ; Tue, 17 Nov 2020 19:47:07 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kf6uo-0002ut-1l; Tue, 17 Nov 2020 19:45:29 +0000
Received: by mail-ed1-x544.google.com with SMTP id t9so23746286edq.8;
 Tue, 17 Nov 2020 11:45:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+1N9mI1qUYPZ3UD7BXdz5GXkPG3b++Xt3sDUHLMO1JQ=;
 b=qk6qS28gnRKwOESLNcHfwLAHZfwM/ryUrm4byv6G1JrTmi4UkgEIkDCO6iStNcFbFE
 UOSd8UrxjVZ3QirzO3hBeq9I9RBePEuFoFVYsYITJH2Xt2hUOSfPsajcO6sTiksmwKNQ
 P9sIAoUPj9xxDU84/oTa3D8iFI0221w0unUk42ffsize5YNCnEmEkucgJO3Q1AgYfivK
 weMfY3HyfMd+YlgmsXXVSVmEkhlhVvOYWCfieKGjuVqNpCfP0IiTMd3541oZ+6vyB5bE
 tCYA2Yj7DJs6SdZuonxEFdHHmqndmE7Mw+zUkp+EFjGmRqyjGS543vnveo1Mzr/ifmFX
 ZOiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+1N9mI1qUYPZ3UD7BXdz5GXkPG3b++Xt3sDUHLMO1JQ=;
 b=UprGU9vbogoumUdN6lYA7XAN/uZ2PVQzFbrFXBBbYja3G3AOd/MbCKno4MtDc5Y6J1
 XohgFnC3lVht/MdhM5d6R7BQJMySfFGxBV9S1ckgJXY1j20L2eE5UQgW0tL4R3IBtRPp
 o+vPIvFVOrDMjcLiKivO0js3/E+NYzzjKEgttbnCxKszdsnxWeB3cW3+c5/RljjoacJh
 +/k9gV4zaQGU8hU283IHH32E4soYbsWztpnuLWBgOMR+UEXI6WTeEq+kty0P8vCMA5C/
 DTMxXK+Zjxk9iw/wEXxv23POZ4w7yqdtE3MdpzHbJ/GwuezfqMmm22ce6td20QEgCewi
 w/8g==
X-Gm-Message-State: AOAM531VCvjr7iSRDWLiHJLAgykpc97ipE6YGj7Iry+S+scxC7j3qieI
 Ag0AVb0ubO9KxBuC7gcOweU=
X-Google-Smtp-Source: ABdhPJzMLxn5EMqczXJ5JfwQssQuzFDjojsvETt5m20Kllu/KiRDTUuYwmXt+mNyRKxuoHaeavha0w==
X-Received: by 2002:aa7:d615:: with SMTP id c21mr22524926edr.23.1605642321052; 
 Tue, 17 Nov 2020 11:45:21 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w2sm727972ejc.109.2020.11.17.11.45.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Nov 2020 11:45:20 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v4 4/7] drm: rockchip: add sound support to rk3066 hdmi driver
Date: Tue, 17 Nov 2020 20:45:04 +0100
Message-Id: <20201117194507.14843-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201117194507.14843-1-jbx6244@gmail.com>
References: <20201117194507.14843-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201117_144522_269958_FD03D019 
X-CRM114-Status: GOOD (  29.12  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: alsa-devel@alsa-project.org, linux-rockchip@lists.infradead.org,
 airlied@linux.ie, linux-kernel@vger.kernel.org, mturquette@baylibre.com,
 hjc@rock-chips.com, dri-devel@lists.freedesktop.org, lgirdwood@gmail.com,
 sboyd@kernel.org, robh+dt@kernel.org, broonie@kernel.org, daniel@ffwll.ch,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Zheng Yang <zhengyang@rock-chips.com>

Add sound support to the rk3066 HDMI driver.

The I2S input of the HDMI TX allows transmission of
DVD-Audio and decoded Dolby Digital
to A/V Receivers and high-end displays.
The interface supports 2 to 8 channels audio up to 192 kHz.
The HDMI TX supports variable word length of
16bits to 32bits for I2S audio inputs.(This driver 24bit max)
There are three I2S input modes supported.(This driver HDMI_I2S only)
On RK3066/PX2 the HDMI TX audio source is connected to I2S_8CH.

Signed-off-by: Zheng Yang <zhengyang@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/gpu/drm/rockchip/Kconfig       |   2 +
 drivers/gpu/drm/rockchip/rk3066_hdmi.c | 272 ++++++++++++++++++++++++++++++++-
 2 files changed, 273 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index 310aa1546..4c20445dc 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -11,6 +11,8 @@ config DRM_ROCKCHIP
 	select DRM_DW_MIPI_DSI if ROCKCHIP_DW_MIPI_DSI
 	select DRM_RGB if ROCKCHIP_RGB
 	select SND_SOC_HDMI_CODEC if ROCKCHIP_CDN_DP && SND_SOC
+	select SND_SOC_HDMI_CODEC if ROCKCHIP_RK3066_HDMI && SND_SOC
+	select SND_SOC_ROCKCHIP_I2S if ROCKCHIP_RK3066_HDMI && SND_SOC
 	help
 	  Choose this option if you have a Rockchip soc chipset.
 	  This driver provides kernel mode setting and buffer
diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
index 1c546c3a8..31568658f 100644
--- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
+++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
@@ -13,6 +13,8 @@
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
 
+#include <sound/hdmi-codec.h>
+
 #include "rk3066_hdmi.h"
 
 #include "rockchip_drm_drv.h"
@@ -20,9 +22,16 @@
 
 #define DEFAULT_PLLA_RATE 30000000
 
+struct audio_info {
+	int sample_rate;
+	int channels;
+	int sample_width;
+};
+
 struct hdmi_data_info {
 	int vic; /* The CEA Video ID (VIC) of the current drm display mode. */
 	bool sink_is_hdmi;
+	bool sink_has_audio;
 	unsigned int enc_out_format;
 	unsigned int colorimetry;
 };
@@ -54,12 +63,19 @@ struct rk3066_hdmi {
 
 	unsigned int tmdsclk;
 
+	struct platform_device *audio_pdev;
+	bool audio_enable;
+
 	struct hdmi_data_info hdmi_data;
+	struct audio_info audio;
 	struct drm_display_mode previous_mode;
 };
 
 #define to_rk3066_hdmi(x) container_of(x, struct rk3066_hdmi, x)
 
+static int
+rk3066_hdmi_config_audio(struct rk3066_hdmi *hdmi, struct audio_info *audio);
+
 static inline u8 hdmi_readb(struct rk3066_hdmi *hdmi, u16 offset)
 {
 	return readl_relaxed(hdmi->regs + offset);
@@ -205,6 +221,20 @@ static int rk3066_hdmi_config_avi(struct rk3066_hdmi *hdmi,
 					HDMI_INFOFRAME_AVI, 0, 0, 0);
 }
 
+static int rk3066_hdmi_config_aai(struct rk3066_hdmi *hdmi,
+				  struct audio_info *audio)
+{
+	struct hdmi_audio_infoframe *faudio;
+	union hdmi_infoframe frame;
+	int rc;
+
+	rc = hdmi_audio_infoframe_init(&frame.audio);
+	faudio = (struct hdmi_audio_infoframe *)&frame;
+
+	return rk3066_hdmi_upload_frame(hdmi, rc, &frame,
+					HDMI_INFOFRAME_AAI, 0, 0, 0);
+}
+
 static int rk3066_hdmi_config_video_timing(struct rk3066_hdmi *hdmi,
 					   struct drm_display_mode *mode)
 {
@@ -353,6 +383,7 @@ static int rk3066_hdmi_setup(struct rk3066_hdmi *hdmi,
 		hdmi_modb(hdmi, HDMI_HDCP_CTRL, HDMI_VIDEO_MODE_MASK,
 			  HDMI_VIDEO_MODE_HDMI);
 		rk3066_hdmi_config_avi(hdmi, mode);
+		rk3066_hdmi_config_audio(hdmi, &hdmi->audio);
 	} else {
 		hdmi_modb(hdmi, HDMI_HDCP_CTRL, HDMI_VIDEO_MODE_MASK, 0);
 	}
@@ -369,9 +400,20 @@ static int rk3066_hdmi_setup(struct rk3066_hdmi *hdmi,
 	 */
 	rk3066_hdmi_i2c_init(hdmi);
 
-	/* Unmute video output. */
+	/* Unmute video and audio output. */
 	hdmi_modb(hdmi, HDMI_VIDEO_CTRL2,
 		  HDMI_VIDEO_AUDIO_DISABLE_MASK, HDMI_AUDIO_DISABLE);
+	if (hdmi->audio_enable) {
+		hdmi_modb(hdmi, HDMI_VIDEO_CTRL2, HDMI_AUDIO_DISABLE, 0);
+		/* Reset audio capture logic. */
+		hdmi_modb(hdmi, HDMI_VIDEO_CTRL2,
+			  HDMI_AUDIO_CP_LOGIC_RESET_MASK,
+			  HDMI_AUDIO_CP_LOGIC_RESET);
+		usleep_range(900, 1000);
+		hdmi_modb(hdmi, HDMI_VIDEO_CTRL2,
+			  HDMI_AUDIO_CP_LOGIC_RESET_MASK, 0);
+	}
+
 	return 0;
 }
 
@@ -473,9 +515,13 @@ static int rk3066_hdmi_connector_get_modes(struct drm_connector *connector)
 	edid = drm_get_edid(connector, hdmi->ddc);
 	if (edid) {
 		hdmi->hdmi_data.sink_is_hdmi = drm_detect_hdmi_monitor(edid);
+		hdmi->hdmi_data.sink_has_audio = drm_detect_monitor_audio(edid);
 		drm_connector_update_edid_property(connector, edid);
 		ret = drm_add_edid_modes(connector, edid);
 		kfree(edid);
+	} else {
+		hdmi->hdmi_data.sink_is_hdmi = true;
+		hdmi->hdmi_data.sink_has_audio = true;
 	}
 
 	return ret;
@@ -536,6 +582,228 @@ struct drm_connector_helper_funcs rk3066_hdmi_connector_helper_funcs = {
 };
 
 static int
+rk3066_hdmi_config_audio(struct rk3066_hdmi *hdmi, struct audio_info *audio)
+{
+	u32 rate, channel, word_length, N, CTS;
+	u64 tmp;
+
+	if (audio->channels < 3)
+		channel = HDMI_AUDIO_I2S_CHANNEL_1_2;
+	else if (audio->channels < 5)
+		channel = HDMI_AUDIO_I2S_CHANNEL_3_4;
+	else if (audio->channels < 7)
+		channel = HDMI_AUDIO_I2S_CHANNEL_5_6;
+	else
+		channel = HDMI_AUDIO_I2S_CHANNEL_7_8;
+
+	switch (audio->sample_rate) {
+	case 32000:
+		rate = HDMI_AUDIO_SAMPLE_FRE_32000;
+		N = N_32K;
+		break;
+	case 44100:
+		rate = HDMI_AUDIO_SAMPLE_FRE_44100;
+		N = N_441K;
+		break;
+	case 48000:
+		rate = HDMI_AUDIO_SAMPLE_FRE_48000;
+		N = N_48K;
+		break;
+	case 88200:
+		rate = HDMI_AUDIO_SAMPLE_FRE_88200;
+		N = N_882K;
+		break;
+	case 96000:
+		rate = HDMI_AUDIO_SAMPLE_FRE_96000;
+		N = N_96K;
+		break;
+	case 176400:
+		rate = HDMI_AUDIO_SAMPLE_FRE_176400;
+		N = N_1764K;
+		break;
+	case 192000:
+		rate = HDMI_AUDIO_SAMPLE_FRE_192000;
+		N = N_192K;
+		break;
+	default:
+		DRM_DEV_ERROR(hdmi->dev, "no support for sample rate %d\n",
+			      audio->sample_rate);
+		return -ENOENT;
+	}
+
+	switch (audio->sample_width) {
+	case 16:
+		word_length = 0x02;
+		break;
+	case 20:
+		word_length = 0x0a;
+		break;
+	case 24:
+		word_length = 0x0b;
+		break;
+	default:
+		DRM_DEV_ERROR(hdmi->dev, "no support for word length %d\n",
+			      audio->sample_width);
+		return -ENOENT;
+	}
+
+	tmp = (u64)hdmi->tmdsclk * N;
+	do_div(tmp, 128 * audio->sample_rate);
+	CTS = tmp;
+
+	/* Set_audio source I2S. */
+	hdmi_writeb(hdmi, HDMI_AUDIO_CTRL1, 0x00);
+	hdmi_writeb(hdmi, HDMI_AUDIO_CTRL2, 0x40);
+	hdmi_writeb(hdmi, HDMI_I2S_AUDIO_CTRL,
+		    HDMI_AUDIO_I2S_FORMAT_STANDARD | channel);
+	hdmi_writeb(hdmi, HDMI_I2S_SWAP, 0x00);
+	hdmi_modb(hdmi, HDMI_AV_CTRL1, HDMI_AUDIO_SAMPLE_FRE_MASK, rate);
+	hdmi_writeb(hdmi, HDMI_AUDIO_SRC_NUM_AND_LENGTH, word_length);
+
+	/* Set N value. */
+	hdmi_modb(hdmi, HDMI_LR_SWAP_N3,
+		  HDMI_AUDIO_N_19_16_MASK, (N >> 16) & 0x0F);
+	hdmi_writeb(hdmi, HDMI_N2, (N >> 8) & 0xFF);
+	hdmi_writeb(hdmi, HDMI_N1, N & 0xFF);
+
+	/* Set CTS value. */
+	hdmi_writeb(hdmi, HDMI_CTS_EXT1, CTS & 0xff);
+	hdmi_writeb(hdmi, HDMI_CTS_EXT2, (CTS >> 8) & 0xff);
+	hdmi_writeb(hdmi, HDMI_CTS_EXT3, (CTS >> 16) & 0xff);
+
+	if (audio->channels > 2)
+		hdmi_modb(hdmi, HDMI_LR_SWAP_N3,
+			  HDMI_AUDIO_LR_SWAP_MASK,
+			  HDMI_AUDIO_LR_SWAP_SUBPACKET1);
+	rate = (~(rate >> 4)) & 0x0f;
+	hdmi_writeb(hdmi, HDMI_AUDIO_STA_BIT_CTRL1, rate);
+	hdmi_writeb(hdmi, HDMI_AUDIO_STA_BIT_CTRL2, 0);
+
+	return rk3066_hdmi_config_aai(hdmi, audio);
+}
+
+static int rk3066_hdmi_audio_hw_params(struct device *dev, void *d,
+				       struct hdmi_codec_daifmt *daifmt,
+				       struct hdmi_codec_params *params)
+{
+	struct rk3066_hdmi *hdmi = dev_get_drvdata(dev);
+
+	if (!hdmi->hdmi_data.sink_has_audio) {
+		DRM_DEV_ERROR(hdmi->dev, "no audio support\n");
+		return -ENODEV;
+	}
+
+	if (!hdmi->encoder.crtc)
+		return -ENODEV;
+
+	switch (daifmt->fmt) {
+	case HDMI_I2S:
+		break;
+	default:
+		DRM_DEV_ERROR(dev, "invalid format %d\n", daifmt->fmt);
+		return -EINVAL;
+	}
+
+	hdmi->audio.sample_width = params->sample_width;
+	hdmi->audio.sample_rate = params->sample_rate;
+	hdmi->audio.channels = params->channels;
+
+	return rk3066_hdmi_config_audio(hdmi, &hdmi->audio);
+}
+
+static void rk3066_hdmi_audio_shutdown(struct device *dev, void *d)
+{
+	/* do nothing */
+}
+
+static int
+rk3066_hdmi_audio_mute_stream(struct device *dev, void *d,
+			      bool mute, int direction)
+{
+	struct rk3066_hdmi *hdmi = dev_get_drvdata(dev);
+
+	if (!hdmi->hdmi_data.sink_has_audio) {
+		DRM_DEV_ERROR(hdmi->dev, "no audio support\n");
+		return -ENODEV;
+	}
+
+	hdmi->audio_enable = !mute;
+
+	if (mute)
+		hdmi_modb(hdmi, HDMI_VIDEO_CTRL2,
+			  HDMI_AUDIO_DISABLE, HDMI_AUDIO_DISABLE);
+	else
+		hdmi_modb(hdmi, HDMI_VIDEO_CTRL2, HDMI_AUDIO_DISABLE, 0);
+
+	/*
+	 * Under power mode E we need to reset the audio capture logic to
+	 * make the audio setting update.
+	 */
+	if (rk3066_hdmi_get_power_mode(hdmi) == HDMI_SYS_POWER_MODE_E) {
+		hdmi_modb(hdmi, HDMI_VIDEO_CTRL2,
+			  HDMI_AUDIO_CP_LOGIC_RESET_MASK,
+			  HDMI_AUDIO_CP_LOGIC_RESET);
+		usleep_range(900, 1000);
+		hdmi_modb(hdmi, HDMI_VIDEO_CTRL2,
+			  HDMI_AUDIO_CP_LOGIC_RESET_MASK, 0);
+	}
+
+	return 0;
+}
+
+static int rk3066_hdmi_audio_get_eld(struct device *dev, void *d,
+				     u8 *buf, size_t len)
+{
+	struct rk3066_hdmi *hdmi = dev_get_drvdata(dev);
+	struct drm_mode_config *config = &hdmi->encoder.dev->mode_config;
+	struct drm_connector *connector;
+	int ret = -ENODEV;
+
+	mutex_lock(&config->mutex);
+	list_for_each_entry(connector, &config->connector_list, head) {
+		if (&hdmi->encoder == connector->encoder) {
+			memcpy(buf, connector->eld,
+			       min(sizeof(connector->eld), len));
+			ret = 0;
+		}
+	}
+	mutex_unlock(&config->mutex);
+
+	return ret;
+}
+
+static const struct hdmi_codec_ops audio_codec_ops = {
+	.hw_params = rk3066_hdmi_audio_hw_params,
+	.audio_shutdown = rk3066_hdmi_audio_shutdown,
+	.mute_stream = rk3066_hdmi_audio_mute_stream,
+	.get_eld = rk3066_hdmi_audio_get_eld,
+	.no_capture_mute = 1,
+};
+
+static int rk3066_hdmi_audio_codec_init(struct rk3066_hdmi *hdmi,
+					struct device *dev)
+{
+	struct hdmi_codec_pdata codec_data = {
+		.i2s = 1,
+		.ops = &audio_codec_ops,
+		.max_i2s_channels = 8,
+	};
+
+	hdmi->audio.channels = 2;
+	hdmi->audio.sample_rate = 48000;
+	hdmi->audio.sample_width = 16;
+	hdmi->audio_enable = false;
+	hdmi->audio_pdev =
+		platform_device_register_data(dev,
+					      HDMI_CODEC_DRV_NAME,
+					      PLATFORM_DEVID_NONE,
+					      &codec_data,
+					      sizeof(codec_data));
+
+	return PTR_ERR_OR_ZERO(hdmi->audio_pdev);
+}
+
+static int
 rk3066_hdmi_register(struct drm_device *drm, struct rk3066_hdmi *hdmi)
 {
 	struct drm_encoder *encoder = &hdmi->encoder;
@@ -567,6 +835,8 @@ rk3066_hdmi_register(struct drm_device *drm, struct rk3066_hdmi *hdmi)
 
 	drm_connector_attach_encoder(&hdmi->connector, encoder);
 
+	rk3066_hdmi_audio_codec_init(hdmi, dev);
+
 	return 0;
 }
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
