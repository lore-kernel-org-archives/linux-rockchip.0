Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8ACA2C3DA41
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jul 2024 02:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NGWepbXPdvoiQH6zeRVtNbHLNmZZEkU7SYVONQwV0Qg=; b=d2yqrY/Bw2i5VR
	q1rAbR2GhUjW1PGqp9O2EEcXPJnEbclwgHiQlhpam+1FQO/5inCYNsLg1PSK1MSWYCsz9a0zdU9VW
	yp6z9Ae/A30wHdO2cEsUG6qKAFDVcczHsgp0UmYEcQwyJGBLD3lVbncpjEdlp1pqzWUtx+Tk+lwSP
	8jZa+ChIZS8Ydaj1yz2lmyYSizvH9dg2/vciiRG/0nalz/XP/aq+f89Vtha0l9b3PUd8JzUrdJpn2
	YTSdM/STQ8ETOw+odhCPsgg8YiClLrC06yj+IareOMqyOfGWVM7MQXmo4LGH2CogcaAoGRQnrYHQo
	BNwUNWq8f71vuvS9RmbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQeGP-00000002ca5-1dbn;
	Mon, 08 Jul 2024 02:38:01 +0000
Received: from m15.mail.163.com ([45.254.50.219])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQeGA-00000002cYO-1C5L;
	Mon, 08 Jul 2024 02:37:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=htvZACadToEHfgFjXxbgPz4evgi+ninORl76Epm7o0c=; b=X
	sB/UC8+sUEhp4+e4mJylOZgXXlv1nkPIfOIOeuvhb5yj5uPn4j0hwDdYWc7GvuWK
	R0I47BSnzjYg/yi3eUgv/jcunYCNkEacuwX84iNa/djrBDIDTFuLQvqi5uLhVOKE
	g+o7/tiyKGHs4DePlfR0UgITJQEaWw/b/SB4Dzwrhs=
Received: from andyshrk$163.com ( [103.29.142.67] ) by
 ajax-webmail-wmsvr-40-113 (Coremail) ; Mon, 8 Jul 2024 10:36:47 +0800 (CST)
X-Originating-IP: [103.29.142.67]
Date: Mon, 8 Jul 2024 10:36:47 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Johan Jonker" <jbx6244@gmail.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, andy.yan@rock-chips.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch, 
	dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re:[PATCH v10] drm/rockchip: rk3066_hdmi: add sound support
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20230109(dcb5de15)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <9f55fa12-51d9-4c85-a34f-0c42c61678e0@gmail.com>
References: <9f55fa12-51d9-4c85-a34f-0c42c61678e0@gmail.com>
X-NTES-SC: AL_Qu2ZAvibuUor4SadZekZnEobh+Y5UcK2s/ki2YFXN5k0oiTA4REjQnF7Jmft4cKBGj2NvhaYYBlcxO9kcZdoUqH3LFPZm7kWrVH2tbVn2khB
MIME-Version: 1.0
Message-ID: <45298488.2cd0.19090336cad.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: _____wDnj5u_UItmT98oAA--.5838W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0gYWXmWXy2-UQAABsf
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240707_193746_825070_5AFA79F8 
X-CRM114-Status: GOOD (  15.38  )
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



Hi Johan,
    Thanks for your patch.

At 2024-07-04 21:48:13, "Johan Jonker" <jbx6244@gmail.com> wrote:
>Add sound support to the RK3066 HDMI driver.
>The HDMI TX audio source is connected to I2S_8CH.
>
>Signed-off-by: Zheng Yang <zhengyang@rock-chips.com>
>Signed-off-by: Johan Jonker <jbx6244@gmail.com>

   Reviewed-by: Andy Yan <andy.yan@rock-chips.com>



>---
>
>Changed V10:
>  s/audio_enable/audio_enabled
>  hook to encoder->funcs->late_register
>  move audio functions up to avoid adding a declaration
>
>Changed V9:
>  Use late_register and early_unregister hooks to
>  (un)register the "hdmi-audio-codec" driver.
>  restyle
>
>Changed V8:
>  return -EPROBE_DEFER as early as possible
>  move rk3066_hdmi_audio_codec_init() function after rk3066_hdmi_register()
>  restyle
>
>Changed V7:
>  rebase
>---
> drivers/gpu/drm/rockchip/Kconfig       |   2 +
> drivers/gpu/drm/rockchip/rk3066_hdmi.c | 330 +++++++++++++++++++++++--
> 2 files changed, 306 insertions(+), 26 deletions(-)
>
>diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
>index 1bf3e2829cd0..a32ee558408c 100644
>--- a/drivers/gpu/drm/rockchip/Kconfig
>+++ b/drivers/gpu/drm/rockchip/Kconfig
>@@ -102,6 +102,8 @@ config ROCKCHIP_RGB
> config ROCKCHIP_RK3066_HDMI
> 	bool "Rockchip specific extensions for RK3066 HDMI"
> 	depends on DRM_ROCKCHIP
>+	select SND_SOC_HDMI_CODEC if SND_SOC
>+	select SND_SOC_ROCKCHIP_I2S if SND_SOC
> 	help
> 	  This selects support for Rockchip SoC specific extensions
> 	  for the RK3066 HDMI driver. If you want to enable
>diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
>index 784de990da1b..e3b8faf89ae2 100644
>--- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
>+++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
>@@ -15,12 +15,20 @@
> #include <linux/platform_device.h>
> #include <linux/regmap.h>
>
>+#include <sound/hdmi-codec.h>
>+
> #include "rk3066_hdmi.h"
>
> #include "rockchip_drm_drv.h"
>
> #define DEFAULT_PLLA_RATE 30000000
>
>+struct rk3066_hdmi_audio_info {
>+	int channels;
>+	int sample_rate;
>+	int sample_width;
>+};
>+
> struct hdmi_data_info {
> 	int vic; /* The CEA Video ID (VIC) of the current drm display mode. */
> 	unsigned int enc_out_format;
>@@ -40,7 +48,6 @@ struct rk3066_hdmi_i2c {
>
> struct rk3066_hdmi {
> 	struct device *dev;
>-	struct drm_device *drm_dev;
> 	struct regmap *grf_regmap;
> 	int irq;
> 	struct clk *hclk;
>@@ -54,6 +61,10 @@ struct rk3066_hdmi {
>
> 	unsigned int tmdsclk;
>
>+	struct platform_device *audio_pdev;
>+	struct rk3066_hdmi_audio_info audio;
>+	bool audio_enabled;
>+
> 	struct hdmi_data_info hdmi_data;
> };
>
>@@ -214,6 +225,241 @@ static int rk3066_hdmi_config_avi(struct rk3066_hdmi *hdmi,
> 					HDMI_INFOFRAME_AVI, 0, 0, 0);
> }
>
>+static int rk3066_hdmi_config_aai(struct rk3066_hdmi *hdmi)
>+{
>+	union hdmi_infoframe frame;
>+	int rc;
>+
>+	rc = hdmi_audio_infoframe_init(&frame.audio);
>+
>+	frame.audio.coding_type = HDMI_AUDIO_CODING_TYPE_STREAM;
>+	frame.audio.sample_frequency = HDMI_AUDIO_SAMPLE_FREQUENCY_STREAM;
>+	frame.audio.sample_size = HDMI_AUDIO_SAMPLE_SIZE_STREAM;
>+	frame.audio.channels = hdmi->audio.channels;
>+
>+	return rk3066_hdmi_upload_frame(hdmi, rc, &frame,
>+					HDMI_INFOFRAME_AAI, 0, 0, 0);
>+}
>+
>+static int rk3066_hdmi_audio_config(struct rk3066_hdmi *hdmi)
>+{
>+	u32 rate, channel, word_length, N, CTS;
>+	struct rk3066_hdmi_audio_info *audio = &hdmi->audio;
>+	u64 tmp;
>+
>+	if (audio->channels < 3)
>+		channel = HDMI_AUDIO_I2S_CHANNEL_1_2;
>+	else if (audio->channels < 5)
>+		channel = HDMI_AUDIO_I2S_CHANNEL_3_4;
>+	else if (audio->channels < 7)
>+		channel = HDMI_AUDIO_I2S_CHANNEL_5_6;
>+	else
>+		channel = HDMI_AUDIO_I2S_CHANNEL_7_8;
>+
>+	switch (audio->sample_rate) {
>+	case 32000:
>+		rate = HDMI_AUDIO_SAMPLE_FRE_32000;
>+		N = N_32K;
>+		break;
>+	case 44100:
>+		rate = HDMI_AUDIO_SAMPLE_FRE_44100;
>+		N = N_441K;
>+		break;
>+	case 48000:
>+		rate = HDMI_AUDIO_SAMPLE_FRE_48000;
>+		N = N_48K;
>+		break;
>+	case 88200:
>+		rate = HDMI_AUDIO_SAMPLE_FRE_88200;
>+		N = N_882K;
>+		break;
>+	case 96000:
>+		rate = HDMI_AUDIO_SAMPLE_FRE_96000;
>+		N = N_96K;
>+		break;
>+	case 176400:
>+		rate = HDMI_AUDIO_SAMPLE_FRE_176400;
>+		N = N_1764K;
>+		break;
>+	case 192000:
>+		rate = HDMI_AUDIO_SAMPLE_FRE_192000;
>+		N = N_192K;
>+		break;
>+	default:
>+		DRM_DEV_ERROR(hdmi->dev, "no support for sample rate %d\n",
>+			      audio->sample_rate);
>+		return -ENOENT;
>+	}
>+
>+	switch (audio->sample_width) {
>+	case 16:
>+		word_length = 0x02;
>+		break;
>+	case 20:
>+		word_length = 0x0a;
>+		break;
>+	case 24:
>+		word_length = 0x0b;
>+		break;
>+	default:
>+		DRM_DEV_ERROR(hdmi->dev, "no support for word length %d\n",
>+			      audio->sample_width);
>+		return -ENOENT;
>+	}
>+
>+	tmp = (u64)hdmi->tmdsclk * N;
>+	do_div(tmp, 128 * audio->sample_rate);
>+	CTS = tmp;
>+
>+	/* Set_audio source I2S. */
>+	hdmi_writeb(hdmi, HDMI_AUDIO_CTRL1, 0x00);
>+	hdmi_writeb(hdmi, HDMI_AUDIO_CTRL2, 0x40);
>+	hdmi_writeb(hdmi, HDMI_I2S_AUDIO_CTRL,
>+		    HDMI_AUDIO_I2S_FORMAT_STANDARD | channel);
>+	hdmi_writeb(hdmi, HDMI_I2S_SWAP, 0x00);
>+	hdmi_modb(hdmi, HDMI_AV_CTRL1, HDMI_AUDIO_SAMPLE_FRE_MASK, rate);
>+	hdmi_writeb(hdmi, HDMI_AUDIO_SRC_NUM_AND_LENGTH, word_length);
>+
>+	/* Set N value. */
>+	hdmi_modb(hdmi, HDMI_LR_SWAP_N3,
>+		  HDMI_AUDIO_N_19_16_MASK, (N >> 16) & 0x0F);
>+	hdmi_writeb(hdmi, HDMI_N2, (N >> 8) & 0xFF);
>+	hdmi_writeb(hdmi, HDMI_N1, N & 0xFF);
>+
>+	/* Set CTS value. */
>+	hdmi_writeb(hdmi, HDMI_CTS_EXT1, CTS & 0xff);
>+	hdmi_writeb(hdmi, HDMI_CTS_EXT2, (CTS >> 8) & 0xff);
>+	hdmi_writeb(hdmi, HDMI_CTS_EXT3, (CTS >> 16) & 0xff);
>+
>+	if (audio->channels > 2)
>+		hdmi_modb(hdmi, HDMI_LR_SWAP_N3,
>+			  HDMI_AUDIO_LR_SWAP_MASK,
>+			  HDMI_AUDIO_LR_SWAP_SUBPACKET1);
>+	rate = (~(rate >> 4)) & 0x0f;
>+	hdmi_writeb(hdmi, HDMI_AUDIO_STA_BIT_CTRL1, rate);
>+	hdmi_writeb(hdmi, HDMI_AUDIO_STA_BIT_CTRL2, 0);
>+
>+	return rk3066_hdmi_config_aai(hdmi);
>+}
>+
>+static int rk3066_hdmi_audio_hw_params(struct device *dev, void *d,
>+				       struct hdmi_codec_daifmt *daifmt,
>+				       struct hdmi_codec_params *params)
>+{
>+	struct rk3066_hdmi *hdmi = dev_get_drvdata(dev);
>+	struct drm_display_info *display = &hdmi->connector.display_info;
>+
>+	if (!display->has_audio) {
>+		DRM_DEV_ERROR(hdmi->dev, "no audio support\n");
>+		return -ENODEV;
>+	}
>+
>+	if (!hdmi->encoder.encoder.crtc)
>+		return -ENODEV;
>+
>+	switch (daifmt->fmt) {
>+	case HDMI_I2S:
>+		break;
>+	default:
>+		DRM_DEV_ERROR(dev, "invalid format %d\n", daifmt->fmt);
>+		return -EINVAL;
>+	}
>+
>+	hdmi->audio.channels = params->channels;
>+	hdmi->audio.sample_rate = params->sample_rate;
>+	hdmi->audio.sample_width = params->sample_width;
>+
>+	return rk3066_hdmi_audio_config(hdmi);
>+}
>+
>+static void rk3066_hdmi_audio_shutdown(struct device *dev, void *d)
>+{
>+	/* Do nothing. */
>+}
>+
>+static int rk3066_hdmi_audio_mute_stream(struct device *dev, void *d, bool mute, int direction)
>+{
>+	struct rk3066_hdmi *hdmi = dev_get_drvdata(dev);
>+	struct drm_display_info *display = &hdmi->connector.display_info;
>+
>+	if (!display->has_audio) {
>+		DRM_DEV_ERROR(hdmi->dev, "no audio support\n");
>+		return -ENODEV;
>+	}
>+
>+	hdmi->audio_enabled = !mute;
>+
>+	if (mute)
>+		hdmi_modb(hdmi, HDMI_VIDEO_CTRL2,
>+			  HDMI_AUDIO_DISABLE, HDMI_AUDIO_DISABLE);
>+	else
>+		hdmi_modb(hdmi, HDMI_VIDEO_CTRL2, HDMI_AUDIO_DISABLE, 0);
>+
>+	/*
>+	 * Under power mode E we need to reset the audio capture logic to
>+	 * make the audio setting update.
>+	 */
>+	if (rk3066_hdmi_get_power_mode(hdmi) == HDMI_SYS_POWER_MODE_E) {
>+		hdmi_modb(hdmi, HDMI_VIDEO_CTRL2,
>+			  HDMI_AUDIO_CP_LOGIC_RESET_MASK,
>+			  HDMI_AUDIO_CP_LOGIC_RESET);
>+		usleep_range(900, 1000);
>+		hdmi_modb(hdmi, HDMI_VIDEO_CTRL2,
>+			  HDMI_AUDIO_CP_LOGIC_RESET_MASK, 0);
>+	}
>+
>+	return 0;
>+}
>+
>+static int rk3066_hdmi_audio_get_eld(struct device *dev, void *d, u8 *buf, size_t len)
>+{
>+	struct rk3066_hdmi *hdmi = dev_get_drvdata(dev);
>+	struct drm_mode_config *config = &hdmi->encoder.encoder.dev->mode_config;
>+	struct drm_connector *connector;
>+	int ret = -ENODEV;
>+
>+	mutex_lock(&config->mutex);
>+	list_for_each_entry(connector, &config->connector_list, head) {
>+		if (&hdmi->encoder.encoder == connector->encoder) {
>+			memcpy(buf, connector->eld,
>+			       min(sizeof(connector->eld), len));
>+			ret = 0;
>+		}
>+	}
>+	mutex_unlock(&config->mutex);
>+
>+	return ret;
>+}
>+
>+static const struct hdmi_codec_ops rk3066_hdmi_audio_codec_ops = {
>+	.hw_params       = rk3066_hdmi_audio_hw_params,
>+	.audio_shutdown  = rk3066_hdmi_audio_shutdown,
>+	.mute_stream     = rk3066_hdmi_audio_mute_stream,
>+	.get_eld         = rk3066_hdmi_audio_get_eld,
>+	.no_capture_mute = 1,
>+};
>+
>+static int rk3066_hdmi_audio_codec_init(struct rk3066_hdmi *hdmi)
>+{
>+	struct hdmi_codec_pdata rk3066_hdmi_codec_data = {
>+		.i2s = 1,
>+		.ops = &rk3066_hdmi_audio_codec_ops,
>+		.max_i2s_channels = 8,
>+	};
>+
>+	hdmi->audio.channels = 2;
>+	hdmi->audio.sample_rate = 48000;
>+	hdmi->audio.sample_width = 16;
>+	hdmi->audio_enabled = false;
>+	hdmi->audio_pdev = platform_device_register_data(hdmi->dev,
>+							 HDMI_CODEC_DRV_NAME,
>+							 PLATFORM_DEVID_NONE,
>+							 &rk3066_hdmi_codec_data,
>+							 sizeof(rk3066_hdmi_codec_data));
>+
>+	return PTR_ERR_OR_ZERO(hdmi->audio_pdev);
>+}
>+
> static int rk3066_hdmi_config_video_timing(struct rk3066_hdmi *hdmi,
> 					   struct drm_display_mode *mode)
> {
>@@ -364,6 +610,7 @@ static int rk3066_hdmi_setup(struct rk3066_hdmi *hdmi,
> 		hdmi_modb(hdmi, HDMI_HDCP_CTRL, HDMI_VIDEO_MODE_MASK,
> 			  HDMI_VIDEO_MODE_HDMI);
> 		rk3066_hdmi_config_avi(hdmi, mode);
>+		rk3066_hdmi_audio_config(hdmi);
> 	} else {
> 		hdmi_modb(hdmi, HDMI_HDCP_CTRL, HDMI_VIDEO_MODE_MASK, 0);
> 	}
>@@ -380,9 +627,20 @@ static int rk3066_hdmi_setup(struct rk3066_hdmi *hdmi,
> 	 */
> 	rk3066_hdmi_i2c_init(hdmi);
>
>-	/* Unmute video output. */
>+	/* Unmute video and audio output. */
> 	hdmi_modb(hdmi, HDMI_VIDEO_CTRL2,
> 		  HDMI_VIDEO_AUDIO_DISABLE_MASK, HDMI_AUDIO_DISABLE);
>+	if (hdmi->audio_enabled) {
>+		hdmi_modb(hdmi, HDMI_VIDEO_CTRL2, HDMI_AUDIO_DISABLE, 0);
>+		/* Reset audio capture logic. */
>+		hdmi_modb(hdmi, HDMI_VIDEO_CTRL2,
>+			  HDMI_AUDIO_CP_LOGIC_RESET_MASK,
>+			  HDMI_AUDIO_CP_LOGIC_RESET);
>+		usleep_range(900, 1000);
>+		hdmi_modb(hdmi, HDMI_VIDEO_CTRL2,
>+			  HDMI_AUDIO_CP_LOGIC_RESET_MASK, 0);
>+	}
>+
> 	return 0;
> }
>
>@@ -431,6 +689,7 @@ static void rk3066_hdmi_encoder_disable(struct drm_encoder *encoder,
> 			  HDMI_AUDIO_CP_LOGIC_RESET);
> 		usleep_range(500, 510);
> 	}
>+
> 	rk3066_hdmi_set_power_mode(hdmi, HDMI_SYS_POWER_MODE_A);
> }
>
>@@ -447,6 +706,26 @@ rk3066_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
> 	return 0;
> }
>
>+static int rk3066_hdmi_encoder_late_register(struct drm_encoder *encoder)
>+{
>+	struct rk3066_hdmi *hdmi = encoder_to_rk3066_hdmi(encoder);
>+
>+	return rk3066_hdmi_audio_codec_init(hdmi);
>+}
>+
>+static void rk3066_hdmi_encoder_early_unregister(struct drm_encoder *encoder)
>+{
>+	struct rk3066_hdmi *hdmi = encoder_to_rk3066_hdmi(encoder);
>+
>+	platform_device_unregister(hdmi->audio_pdev);
>+}
>+
>+static const struct drm_encoder_funcs rk3066_hdmi_encoder_funcs = {
>+	.destroy          = drm_encoder_cleanup,
>+	.late_register    = rk3066_hdmi_encoder_late_register,
>+	.early_unregister = rk3066_hdmi_encoder_early_unregister,
>+};
>+
> static const
> struct drm_encoder_helper_funcs rk3066_hdmi_encoder_helper_funcs = {
> 	.atomic_check   = rk3066_hdmi_encoder_atomic_check,
>@@ -519,41 +798,28 @@ static void rk3066_hdmi_connector_destroy(struct drm_connector *connector)
> }
>
> static const struct drm_connector_funcs rk3066_hdmi_connector_funcs = {
>-	.fill_modes = rk3066_hdmi_probe_single_connector_modes,
>-	.detect = rk3066_hdmi_connector_detect,
>-	.destroy = rk3066_hdmi_connector_destroy,
>-	.reset = drm_atomic_helper_connector_reset,
>+	.fill_modes             = rk3066_hdmi_probe_single_connector_modes,
>+	.detect                 = rk3066_hdmi_connector_detect,
>+	.destroy                = rk3066_hdmi_connector_destroy,
>+	.reset                  = drm_atomic_helper_connector_reset,
> 	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
>-	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
>+	.atomic_destroy_state   = drm_atomic_helper_connector_destroy_state,
> };
>
> static const
> struct drm_connector_helper_funcs rk3066_hdmi_connector_helper_funcs = {
>-	.get_modes = rk3066_hdmi_connector_get_modes,
>-	.mode_valid = rk3066_hdmi_connector_mode_valid,
>+	.get_modes    = rk3066_hdmi_connector_get_modes,
>+	.mode_valid   = rk3066_hdmi_connector_mode_valid,
> 	.best_encoder = rk3066_hdmi_connector_best_encoder,
> };
>
>-static int
>-rk3066_hdmi_register(struct drm_device *drm, struct rk3066_hdmi *hdmi)
>+static int rk3066_hdmi_register(struct drm_device *drm, struct rk3066_hdmi *hdmi)
> {
> 	struct drm_encoder *encoder = &hdmi->encoder.encoder;
>-	struct device *dev = hdmi->dev;
>-
>-	encoder->possible_crtcs =
>-		drm_of_find_possible_crtcs(drm, dev->of_node);
>-
>-	/*
>-	 * If we failed to find the CRTC(s) which this encoder is
>-	 * supposed to be connected to, it's because the CRTC has
>-	 * not been registered yet.  Defer probing, and hope that
>-	 * the required CRTC is added later.
>-	 */
>-	if (encoder->possible_crtcs == 0)
>-		return -EPROBE_DEFER;
>
> 	drm_encoder_helper_add(encoder, &rk3066_hdmi_encoder_helper_funcs);
>-	drm_simple_encoder_init(drm, encoder, DRM_MODE_ENCODER_TMDS);
>+	drm_encoder_init(drm, encoder, &rk3066_hdmi_encoder_funcs,
>+			 DRM_MODE_ENCODER_TMDS, NULL);
>
> 	hdmi->connector.polled = DRM_CONNECTOR_POLL_HPD;
>
>@@ -740,6 +1006,7 @@ static int rk3066_hdmi_bind(struct device *dev, struct device *master,
> {
> 	struct platform_device *pdev = to_platform_device(dev);
> 	struct drm_device *drm = data;
>+	struct drm_encoder *encoder;
> 	struct rk3066_hdmi *hdmi;
> 	int irq;
> 	int ret;
>@@ -748,8 +1015,19 @@ static int rk3066_hdmi_bind(struct device *dev, struct device *master,
> 	if (!hdmi)
> 		return -ENOMEM;
>
>+	encoder = &hdmi->encoder.encoder;
>+	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm, dev->of_node);
>+
>+	/*
>+	 * If we failed to find the CRTC(s) which this encoder is
>+	 * supposed to be connected to, it's because the CRTC has
>+	 * not been registered yet. Defer probing and hope that
>+	 * the required CRTC is added later.
>+	 */
>+	if (encoder->possible_crtcs == 0)
>+		return -EPROBE_DEFER;
>+
> 	hdmi->dev = dev;
>-	hdmi->drm_dev = drm;
> 	hdmi->regs = devm_platform_ioremap_resource(pdev, 0);
> 	if (IS_ERR(hdmi->regs))
> 		return PTR_ERR(hdmi->regs);
>--
>2.39.2
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
