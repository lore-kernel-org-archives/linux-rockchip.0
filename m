Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC8A0C38150
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Jul 2024 23:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sh9J1OQyVg1XFaohLTCzMzOWGZyMzCsTKRS9tv5pCRs=; b=mfeuIlqZLgXSyK
	GBuWCrWgVSs87uKZpNSWmGXEJa9k5tuCICdG+uUJU3fPCdywjJhHhPgmBHRIxeoDXCw5wqbKxF5cR
	wKplP3OaSx6tu+eCEDtfRunxjU1TeXVTRbPCuvzXQDfgyA1dek2jHL5u/YuGd4NXMbUeZ/bwvT5K8
	9fXRFJIwe7j1SZhrtCQiDRwiK6NzEPHxokHQJkTn0xIJUyDNHOE6U50ksVzktkN4G1vwVoKBHQwJq
	XQ9shlm5xnAn70l+0OtbfCrSYaXY64JFfLLWmRmihEpNMgKbkcwFFgoAwuMVW+FQUKTLKvEDmsAMj
	ONk7bO0+aceQ1xWPZtjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQFJb-0000000169H-1XyG;
	Sat, 06 Jul 2024 23:59:39 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQFJL-0000000165X-48EL;
	Sat, 06 Jul 2024 23:59:25 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-a77cc73d35fso293523166b.0;
        Sat, 06 Jul 2024 16:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720310361; x=1720915161; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VNZ9iBZQ210M7WVot+ZdRFe+tyFsVSy9bBritfukgnI=;
        b=YIiTmmUSCicj9YfubvqiTOWI7+S8lP+Jhf3X9IVlFdt9pCv/mgiMJStAKnSFvb8DWd
         ycFPMqTNHad9XshUPmVMdNS4eFiVULvRkFDw9hYf1qgmh571vn7wQvivT/9osOihmkdw
         ZziIE4gG5vWA9dSqK6Kn4KfjFbP1B7+1JUyc/UFUuvJNewNlM9RFvssvHb0xYNfVo1hW
         OHUAWy5V5dZFwQg8t+6qV5jqPFmilK6xTqmxvW00QF/FCZ6mmpBfT7cEZKbabh/pvWKz
         x4QdFLi16HW6H0nvh75BEDTq/Yypte8Fb7sxw0mGVvoXvVH+Hh5D9A0fKxxfZFA8VSYi
         MkdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720310361; x=1720915161;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VNZ9iBZQ210M7WVot+ZdRFe+tyFsVSy9bBritfukgnI=;
        b=K18WXHUMfz/yrK6i8w3h+2upD85grzuENk0K6/+0KHuTQqoYwIAjR9v6VFst9j/s+a
         0J1nQSmlVScWxCCcDvpdR4VvST/m+cWggMxsFZkN2cAOrbF1qd2Bga4DgRxfji+LzpMA
         0BAM/l1Ti5xpZpdeB6JzQtlLiXTSIASFgg+i6XMr6XgQf88c35lazPAxMu/NI8YERWAR
         nQIXfk2bxtFxIVaIgMpmd619gS555xqxeERBPD2l07KAOp5Z1Dl7keZEyJR4fnugPt53
         W+XkDadP8ms+HUKAiZC95w5M+D6LHW7R65ra8GsTT2BHdP2Mtg807ULFNFgZPe9XgIFw
         DOVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUgJ99jJ0TuzXLv7o64kc90dw2Dn2ejk7av7bhwiJeXcFfzra83MPFg1ZP2QUb0sfxFYCniKO1Ckbv6AQGesRQD9Nh7mUKexgUxbb+GPL68zwNn03HwXOJb43s9aK8j9Rtm5QkHrXQ554yMX7VlqP5hbrzb+tpSphg=
X-Gm-Message-State: AOJu0Yzao/qva4ColwuGYcNQLwFeOOpukjVKhM61vSZqvV0sJvGRBJMk
	R/K/sHBepuOfc5692kItB5y3zGoyTy39BVwoeG7i2sRfj0IIm3qs
X-Google-Smtp-Source: AGHT+IHAwbWprN8cNIggazy2qsmEc4v2QwwxuON1fQEUFT/EiNzeA4kIq3zxUDmz+y6RVfOqIX9wAQ==
X-Received: by 2002:a17:906:e218:b0:a72:9ebe:29da with SMTP id a640c23a62f3a-a77bdae479emr505599066b.35.1720310361167;
        Sat, 06 Jul 2024 16:59:21 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:1:32d0:42ff:fe10:6983? (2a02-a449-4071-1-32d0-42ff-fe10-6983.fixed6.kpn.net. [2a02:a449:4071:1:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a77db963ee4sm138118066b.154.2024.07.06.16.59.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Jul 2024 16:59:20 -0700 (PDT)
Message-ID: <5dae5aa1-99a4-4509-87b8-b8fd1a599065@gmail.com>
Date: Sun, 7 Jul 2024 01:59:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2] drm/rockchip: inno_hdmi: add audio support
To: heiko@sntech.de
Cc: hjc@rock-chips.com, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, daniel@ffwll.ch, lgirdwood@gmail.com, broonie@kernel.org,
 linux-sound@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240706_165924_072506_45D6D807 
X-CRM114-Status: GOOD (  24.77  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add sound support to the INNO HDMI driver.
The HDMI TX audio source is connected to I2S.
Using the common hdmi-codec driver to support hdmi audio function.

Signed-off-by: Yakir Yang <ykk@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

NOT TESTED WITH HARDWARE

Changed V2:
  rebased
  hook to encoder->funcs->late_register
  return -EPROBE_DEFER as early as possible
  rename and update inno_hdmi_disable_frame() function
  avi and aai frames can not be disabled (See TRM)
  restyle
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 295 ++++++++++++++++++++++++---
 drivers/gpu/drm/rockchip/inno_hdmi.h |   2 +
 2 files changed, 263 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 3df2cfcf9998..9c28080a0e27 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -22,12 +22,20 @@
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_simple_kms_helper.h>

+#include <sound/hdmi-codec.h>
+
 #include "rockchip_drm_drv.h"

 #include "inno_hdmi.h"

 #define INNO_HDMI_MIN_TMDS_CLOCK  25000000U

+struct inno_hdmi_audio_info {
+	int channels;
+	int sample_rate;
+	int sample_width;
+};
+
 struct inno_hdmi_phy_config {
 	unsigned long pixelclock;
 	u8 pre_emphasis;
@@ -62,6 +70,10 @@ struct inno_hdmi {
 	struct inno_hdmi_i2c *i2c;
 	struct i2c_adapter *ddc;

+	struct platform_device *audio_pdev;
+	struct inno_hdmi_audio_info audio;
+	bool audio_enabled;
+
 	const struct inno_hdmi_variant *variant;
 };

@@ -257,34 +269,35 @@ static void inno_hdmi_reset(struct inno_hdmi *hdmi)
 	inno_hdmi_standby(hdmi);
 }

-static void inno_hdmi_disable_frame(struct inno_hdmi *hdmi,
-				    enum hdmi_infoframe_type type)
+static void inno_hdmi_set_frame_index(struct inno_hdmi *hdmi,
+				      enum hdmi_infoframe_type type)
 {
 	struct drm_connector *connector = &hdmi->connector;
-
-	if (type != HDMI_INFOFRAME_TYPE_AVI) {
+	u32 frame_index;
+
+	switch (type) {
+	case HDMI_INFOFRAME_TYPE_AVI:
+		frame_index = INFOFRAME_AVI;
+		break;
+	case HDMI_INFOFRAME_TYPE_AUDIO:
+		frame_index = INFOFRAME_AAI;
+		break;
+	default:
 		drm_err(connector->dev,
 			"Unsupported infoframe type: %u\n", type);
 		return;
 	}

-	hdmi_writeb(hdmi, HDMI_CONTROL_PACKET_BUF_INDEX, INFOFRAME_AVI);
+	hdmi_writeb(hdmi, HDMI_CONTROL_PACKET_BUF_INDEX, frame_index);
 }

 static int inno_hdmi_upload_frame(struct inno_hdmi *hdmi,
 				  union hdmi_infoframe *frame, enum hdmi_infoframe_type type)
 {
-	struct drm_connector *connector = &hdmi->connector;
 	u8 packed_frame[HDMI_MAXIMUM_INFO_FRAME_SIZE];
 	ssize_t rc, i;

-	if (type != HDMI_INFOFRAME_TYPE_AVI) {
-		drm_err(connector->dev,
-			"Unsupported infoframe type: %u\n", type);
-		return 0;
-	}
-
-	inno_hdmi_disable_frame(hdmi, type);
+	inno_hdmi_set_frame_index(hdmi, type);

 	rc = hdmi_infoframe_pack(frame, packed_frame,
 				 sizeof(packed_frame));
@@ -312,7 +325,6 @@ static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
 						      &hdmi->connector,
 						      mode);
 	if (rc) {
-		inno_hdmi_disable_frame(hdmi, HDMI_INFOFRAME_TYPE_AVI);
 		return rc;
 	}

@@ -338,6 +350,197 @@ static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
 	return inno_hdmi_upload_frame(hdmi, &frame, HDMI_INFOFRAME_TYPE_AVI);
 }

+static int inno_hdmi_config_aai(struct inno_hdmi *hdmi)
+{
+	union hdmi_infoframe frame;
+	int rc;
+
+	rc = hdmi_audio_infoframe_init(&frame.audio);
+	if (rc < 0)
+		return rc;
+
+	frame.audio.coding_type = HDMI_AUDIO_CODING_TYPE_STREAM;
+	frame.audio.sample_frequency = HDMI_AUDIO_SAMPLE_FREQUENCY_STREAM;
+	frame.audio.sample_size = HDMI_AUDIO_SAMPLE_SIZE_STREAM;
+	frame.audio.channels = hdmi->audio.channels;
+
+	return inno_hdmi_upload_frame(hdmi, &frame, HDMI_INFOFRAME_TYPE_AUDIO);
+}
+
+static int inno_hdmi_audio_config(struct inno_hdmi *hdmi)
+{
+	struct inno_hdmi_audio_info *audio = &hdmi->audio;
+	int rate, N, channel;
+
+	if (audio->channels < 3)
+		channel = I2S_CHANNEL_1_2;
+	else if (audio->channels < 5)
+		channel = I2S_CHANNEL_3_4;
+	else if (audio->channels < 7)
+		channel = I2S_CHANNEL_5_6;
+	else
+		channel = I2S_CHANNEL_7_8;
+
+	switch (audio->sample_rate) {
+	case 32000:
+		rate = AUDIO_32K;
+		N = N_32K;
+		break;
+	case 44100:
+		rate = AUDIO_441K;
+		N = N_441K;
+		break;
+	case 48000:
+		rate = AUDIO_48K;
+		N = N_48K;
+		break;
+	case 88200:
+		rate = AUDIO_882K;
+		N = N_882K;
+		break;
+	case 96000:
+		rate = AUDIO_96K;
+		N = N_96K;
+		break;
+	case 176400:
+		rate = AUDIO_1764K;
+		N = N_1764K;
+		break;
+	case 192000:
+		rate = AUDIO_192K;
+		N = N_192K;
+		break;
+	default:
+		dev_err(hdmi->dev, "[%s] not support such sample rate %d\n",
+			__func__, audio->sample_rate);
+		return -ENOENT;
+	}
+
+	/* Set audio source I2S. */
+	hdmi_writeb(hdmi, HDMI_AUDIO_CTRL1, 0x01);
+	hdmi_writeb(hdmi, AUDIO_SAMPLE_RATE, rate);
+	hdmi_writeb(hdmi, AUDIO_I2S_MODE, v_I2S_MODE(I2S_STANDARD) |
+		    v_I2S_CHANNEL(channel));
+
+	hdmi_writeb(hdmi, AUDIO_I2S_MAP, 0x00);
+	hdmi_writeb(hdmi, AUDIO_I2S_SWAPS_SPDIF, 0);
+
+	/* Set N value. */
+	hdmi_writeb(hdmi, AUDIO_N_H, (N >> 16) & 0x0F);
+	hdmi_writeb(hdmi, AUDIO_N_M, (N >> 8) & 0xFF);
+	hdmi_writeb(hdmi, AUDIO_N_L, N & 0xFF);
+
+	/*Set HDMI NLPCM mode to support HDMI bit stream. */
+	hdmi_writeb(hdmi, HDMI_AUDIO_CHANNEL_STATUS, v_AUDIO_STATUS_NLPCM(0));
+
+	return inno_hdmi_config_aai(hdmi);
+}
+
+static int inno_hdmi_audio_hw_params(struct device *dev, void *d,
+				     struct hdmi_codec_daifmt *daifmt,
+				     struct hdmi_codec_params *params)
+{
+	struct inno_hdmi *hdmi = dev_get_drvdata(dev);
+	struct drm_display_info *display = &hdmi->connector.display_info;
+
+	if (!display->has_audio) {
+		DRM_DEV_ERROR(hdmi->dev, "no audio support\n");
+		return -ENODEV;
+	}
+
+	if (!hdmi->encoder.encoder.crtc)
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
+	hdmi->audio.channels = params->channels;
+	hdmi->audio.sample_rate = params->sample_rate;
+	hdmi->audio.sample_width = params->sample_width;
+
+	return inno_hdmi_audio_config(hdmi);
+}
+
+static void inno_hdmi_audio_shutdown(struct device *dev, void *d)
+{
+	/* Do nothing. */
+}
+
+static int inno_hdmi_audio_mute_stream(struct device *dev, void *d, bool mute, int direction)
+{
+	struct inno_hdmi *hdmi = dev_get_drvdata(dev);
+	struct drm_display_info *display = &hdmi->connector.display_info;
+
+	if (!display->has_audio) {
+		DRM_DEV_ERROR(hdmi->dev, "no audio support\n");
+		return -ENODEV;
+	}
+
+	hdmi->audio_enabled = !mute;
+
+	if (mute)
+		hdmi_modb(hdmi, HDMI_AV_MUTE, m_AUDIO_MUTE | m_AUDIO_PD,
+			  v_AUDIO_MUTE(1) | v_AUDIO_PD(1));
+	else
+		hdmi_modb(hdmi, HDMI_AV_MUTE, m_AUDIO_MUTE | m_AUDIO_PD,
+			  v_AUDIO_MUTE(0) | v_AUDIO_PD(0));
+
+	return 0;
+}
+
+static int inno_hdmi_audio_get_eld(struct device *dev, void *d, uint8_t *buf, size_t len)
+{
+	struct inno_hdmi *hdmi = dev_get_drvdata(dev);
+	struct drm_mode_config *config = &hdmi->encoder.encoder.dev->mode_config;
+	struct drm_connector *connector;
+	int ret = -ENODEV;
+
+	mutex_lock(&config->mutex);
+	list_for_each_entry(connector, &config->connector_list, head) {
+		if (&hdmi->encoder.encoder == connector->encoder) {
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
+	.hw_params      = inno_hdmi_audio_hw_params,
+	.audio_shutdown = inno_hdmi_audio_shutdown,
+	.mute_stream    = inno_hdmi_audio_mute_stream,
+	.get_eld        = inno_hdmi_audio_get_eld,
+};
+
+static int inno_hdmi_audio_codec_init(struct inno_hdmi *hdmi)
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
+	hdmi->audio_enabled = false;
+	hdmi->audio_pdev = platform_device_register_data(hdmi->dev,
+							 HDMI_CODEC_DRV_NAME,
+							 PLATFORM_DEVID_NONE,
+							 &codec_data,
+							 sizeof(codec_data));
+
+	return PTR_ERR_OR_ZERO(hdmi->audio_pdev);
+}
+
 static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)
 {
 	struct drm_connector *connector = &hdmi->connector;
@@ -479,8 +682,10 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,

 	inno_hdmi_config_video_csc(hdmi);

-	if (display->is_hdmi)
+	if (display->is_hdmi) {
 		inno_hdmi_config_video_avi(hdmi, mode);
+		inno_hdmi_audio_config(hdmi);
+	}

 	/*
 	 * When IP controller have configured to an accurate video
@@ -588,6 +793,26 @@ inno_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
 				&crtc_state->adjusted_mode) == MODE_OK ? 0 : -EINVAL;
 }

+static int inno_hdmi_encoder_late_register(struct drm_encoder *encoder)
+{
+	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
+
+	return inno_hdmi_audio_codec_init(hdmi);
+}
+
+static void inno_hdmi_encoder_early_unregister(struct drm_encoder *encoder)
+{
+	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
+
+	platform_device_unregister(hdmi->audio_pdev);
+}
+
+static const struct drm_encoder_funcs inno_hdmi_encoder_funcs = {
+	.destroy          = drm_encoder_cleanup,
+	.late_register    = inno_hdmi_encoder_late_register,
+	.early_unregister = inno_hdmi_encoder_early_unregister,
+};
+
 static struct drm_encoder_helper_funcs inno_hdmi_encoder_helper_funcs = {
 	.atomic_check	= inno_hdmi_encoder_atomic_check,
 	.atomic_enable	= inno_hdmi_encoder_enable,
@@ -687,37 +912,26 @@ inno_hdmi_connector_duplicate_state(struct drm_connector *connector)
 }

 static const struct drm_connector_funcs inno_hdmi_connector_funcs = {
-	.fill_modes = drm_helper_probe_single_connector_modes,
-	.detect = inno_hdmi_connector_detect,
-	.destroy = inno_hdmi_connector_destroy,
-	.reset = inno_hdmi_connector_reset,
+	.fill_modes             = drm_helper_probe_single_connector_modes,
+	.detect                 = inno_hdmi_connector_detect,
+	.destroy                = inno_hdmi_connector_destroy,
+	.reset                  = inno_hdmi_connector_reset,
 	.atomic_duplicate_state = inno_hdmi_connector_duplicate_state,
-	.atomic_destroy_state = inno_hdmi_connector_destroy_state,
+	.atomic_destroy_state   = inno_hdmi_connector_destroy_state,
 };

 static struct drm_connector_helper_funcs inno_hdmi_connector_helper_funcs = {
-	.get_modes = inno_hdmi_connector_get_modes,
+	.get_modes  = inno_hdmi_connector_get_modes,
 	.mode_valid = inno_hdmi_connector_mode_valid,
 };

 static int inno_hdmi_register(struct drm_device *drm, struct inno_hdmi *hdmi)
 {
 	struct drm_encoder *encoder = &hdmi->encoder.encoder;
-	struct device *dev = hdmi->dev;
-
-	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm, dev->of_node);
-
-	/*
-	 * If we failed to find the CRTC(s) which this encoder is
-	 * supposed to be connected to, it's because the CRTC has
-	 * not been registered yet.  Defer probing, and hope that
-	 * the required CRTC is added later.
-	 */
-	if (encoder->possible_crtcs == 0)
-		return -EPROBE_DEFER;

 	drm_encoder_helper_add(encoder, &inno_hdmi_encoder_helper_funcs);
-	drm_simple_encoder_init(drm, encoder, DRM_MODE_ENCODER_TMDS);
+	drm_encoder_init(drm, encoder, &inno_hdmi_encoder_funcs,
+			 DRM_MODE_ENCODER_TMDS, NULL);

 	hdmi->connector.polled = DRM_CONNECTOR_POLL_HPD;

@@ -911,6 +1125,7 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 {
 	struct platform_device *pdev = to_platform_device(dev);
 	struct drm_device *drm = data;
+	struct drm_encoder *encoder;
 	struct inno_hdmi *hdmi;
 	const struct inno_hdmi_variant *variant;
 	int irq;
@@ -920,6 +1135,18 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 	if (!hdmi)
 		return -ENOMEM;

+	encoder = &hdmi->encoder.encoder;
+	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm, dev->of_node);
+
+	/*
+	 * If we failed to find the CRTC(s) which this encoder is
+	 * supposed to be connected to, it's because the CRTC has
+	 * not been registered yet.  Defer probing, and hope that
+	 * the required CRTC is added later.
+	 */
+	if (encoder->possible_crtcs == 0)
+		return -EPROBE_DEFER;
+
 	hdmi->dev = dev;

 	variant = of_device_get_match_data(hdmi->dev);
diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.h b/drivers/gpu/drm/rockchip/inno_hdmi.h
index a7edf3559e60..0d108d3578fa 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.h
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.h
@@ -91,10 +91,12 @@ enum {
 #define HDMI_AV_MUTE			0x05
 #define m_AVMUTE_CLEAR			(1 << 7)
 #define m_AVMUTE_ENABLE			(1 << 6)
+#define m_AUDIO_PD			(1 << 2)
 #define m_AUDIO_MUTE			(1 << 1)
 #define m_VIDEO_BLACK			(1 << 0)
 #define v_AVMUTE_CLEAR(n)		(n << 7)
 #define v_AVMUTE_ENABLE(n)		(n << 6)
+#define v_AUDIO_PD(n)			(n << 2)
 #define v_AUDIO_MUTE(n)			(n << 1)
 #define v_VIDEO_MUTE(n)			(n << 0)

--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
