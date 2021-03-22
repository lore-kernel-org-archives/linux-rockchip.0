Return-Path: <SRS0=HfFp=IU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 575FBC433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Mar 2021 18:19:27 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CA5DC61983
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Mar 2021 18:19:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CA5DC61983
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=P4b9+BF3In3FVkplSMZj7T/vLwmm0IuhuL9FOYsUn54=; b=gcsbhcXcYFCzlKISUT2KX/M54
	zm/DORK1SQ2VsjJvuqTdT89D7AaAbVI/bsyXhmlvLQbcrS0Bbmo5SgzIkBP5wrOA1QHbdQlJ9qU8R
	DGMJUfZGpmXHTEA++tQLIBeeHMuShjCe8JWWOb7BFx/+th6eiNiOvJzL6FXTTrGs0Lx1WvMwGwcz5
	qhG4L9bO7vtdnjs89KyVUtPcCPkc8QcVWEKLgRWpoxAdN1XLZYdfJ+wVrsNuZH+eSEoYwMMPsO0bC
	dRn3s2rW1v3WYPXzy1EhsLQ6iG3NtGA5jz50d4cotfxwLGvGxOTS5PdK3Pc/p07ivG1+wNL9vOD0j
	ru+Gopr6Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOP96-00CEZb-Mp; Mon, 22 Mar 2021 18:19:20 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOP8t-00CEYD-7S; Mon, 22 Mar 2021 18:19:09 +0000
Received: by mail-ed1-x52f.google.com with SMTP id b16so20547061eds.7;
 Mon, 22 Mar 2021 11:19:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=he1sHNhqR2uI8k5Zg0QdITwzf6w5j/Yg2Uh7d+S2xLg=;
 b=vCJcRopkyQsuskm6zcIoUiJ9GWAgVLbIjcAewyRF7O8lVbZivCnAmuc1mDBqI4dwDe
 L+2gUceCa4NZYWxACOaT3OX3jp7EWY0uRbUaCrDIqLAPk2tkZ173Ep4Cq4i5jWOiAn5R
 2S17iwCtOvDa5p34y1f3Y7LE8/VOBBfyJyiEHFK0BCMCOHng4F2iFsJ8vNEfoK+FB10A
 rMxUurH+1HGOXXGHHcKCw6idJatfeVsRDYTTGuBOXFt6LlaYaoSKoI3wovuDCRTFt/Hq
 VK0Wzz8TiEe1f6oUgkFUtWBbBvUSP7FXF4z1RUP/SrdpkG7PZS7HCBoL/7e6KYn48xga
 kJ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=he1sHNhqR2uI8k5Zg0QdITwzf6w5j/Yg2Uh7d+S2xLg=;
 b=f0nsD3chVI2/m1zVqMCLDk120Jx6a8fpZaM+BamG9w3M4Tx/+dLzkcE0xPvEXh0aAu
 SjFJdqRhy+wF8xdUBtvInQsxtw9fIC4B5T33T7Tv2VSsEbWQLh10+xLqDrWO+rfabmFK
 tFlGES+bo6Pgq6HTfHB/R5YapOXNerYFQZnwJastXA5VCFDPdH50RSJWNpXFYiqOm2Y6
 P1y1HUsRwFUBeEpOwWtiyWx8Dq6f8YMq4RsD67I/SH0frsKJS3QKC1UraHl1z9QqwrIP
 pMy0xVx9TwUwDbeYxvlfSRBApDuXjpGv86qpt2u2iE9o+sJr79S6EkN80ISsDmP1wy06
 fcrA==
X-Gm-Message-State: AOAM532rVs2Z3UgyroMJA8CsbKTqyP45xypDs27m6ar6vhH+ASusuoVP
 fkR5wsL6KRHc1/s71WPYmyGa0ie+xy5Ayw==
X-Google-Smtp-Source: ABdhPJyQTAbHgsYJ40Dng8g4x/bptgrSUZ5xMOHL7gNjZ4UJRFyVYyFWFwfuMEPoS7xJgoxKwEBtXw==
X-Received: by 2002:a05:6402:4386:: with SMTP id
 o6mr917732edc.307.1616437144316; 
 Mon, 22 Mar 2021 11:19:04 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 m7sm11473349edp.81.2021.03.22.11.19.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 22 Mar 2021 11:19:03 -0700 (PDT)
Subject: Re: [PATCH v6 2/5] drm: rockchip: add sound support to rk3066 hdmi
 driver
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 airlied@linux.ie, linux-kernel@vger.kernel.org, broonie@kernel.org,
 hjc@rock-chips.com, dri-devel@lists.freedesktop.org, lgirdwood@gmail.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
References: <20201206133355.16007-1-jbx6244@gmail.com>
 <20201206133355.16007-3-jbx6244@gmail.com>
Message-ID: <48dbe9b7-0aa0-f459-301f-f380e2b7f2f8@gmail.com>
Date: Mon, 22 Mar 2021 19:19:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201206133355.16007-3-jbx6244@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_181907_413748_D983BE94 
X-CRM114-Status: GOOD (  37.34  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

ping

On 12/6/20 2:33 PM, Johan Jonker wrote:
> From: Zheng Yang <zhengyang@rock-chips.com>
> 
> Add sound support to the rk3066 HDMI driver.
> 
> The I2S input of the HDMI TX allows transmission of
> DVD-Audio and decoded Dolby Digital
> to A/V Receivers and high-end displays.
> The interface supports 2 to 8 channels audio up to 192 kHz.
> The HDMI TX supports variable word length of
> 16bits to 32bits for I2S audio inputs.(This driver 24bit max)
> There are three I2S input modes supported.(This driver HDMI_I2S only)
> On RK3066/PX2 the HDMI TX audio source is connected to I2S_8CH.
> 
> Signed-off-by: Zheng Yang <zhengyang@rock-chips.com>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  drivers/gpu/drm/rockchip/Kconfig       |   2 +
>  drivers/gpu/drm/rockchip/rk3066_hdmi.c | 277 ++++++++++++++++++++++++++++++++-
>  2 files changed, 278 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
> index 310aa1546..4c20445dc 100644
> --- a/drivers/gpu/drm/rockchip/Kconfig
> +++ b/drivers/gpu/drm/rockchip/Kconfig
> @@ -11,6 +11,8 @@ config DRM_ROCKCHIP
>  	select DRM_DW_MIPI_DSI if ROCKCHIP_DW_MIPI_DSI
>  	select DRM_RGB if ROCKCHIP_RGB
>  	select SND_SOC_HDMI_CODEC if ROCKCHIP_CDN_DP && SND_SOC
> +	select SND_SOC_HDMI_CODEC if ROCKCHIP_RK3066_HDMI && SND_SOC
> +	select SND_SOC_ROCKCHIP_I2S if ROCKCHIP_RK3066_HDMI && SND_SOC
>  	help
>  	  Choose this option if you have a Rockchip soc chipset.
>  	  This driver provides kernel mode setting and buffer
> diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
> index 1c546c3a8..2f8654023 100644
> --- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
> +++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
> @@ -13,6 +13,8 @@
>  #include <linux/platform_device.h>
>  #include <linux/regmap.h>
>  
> +#include <sound/hdmi-codec.h>
> +
>  #include "rk3066_hdmi.h"
>  
>  #include "rockchip_drm_drv.h"
> @@ -20,9 +22,16 @@
>  
>  #define DEFAULT_PLLA_RATE 30000000
>  
> +struct audio_info {
> +	int channels;
> +	int sample_rate;
> +	int sample_width;
> +};
> +
>  struct hdmi_data_info {
>  	int vic; /* The CEA Video ID (VIC) of the current drm display mode. */
>  	bool sink_is_hdmi;
> +	bool sink_has_audio;
>  	unsigned int enc_out_format;
>  	unsigned int colorimetry;
>  };
> @@ -54,12 +63,19 @@ struct rk3066_hdmi {
>  
>  	unsigned int tmdsclk;
>  
> +	struct platform_device *audio_pdev;
> +	struct audio_info audio;
> +	bool audio_enable;
> +
>  	struct hdmi_data_info hdmi_data;
>  	struct drm_display_mode previous_mode;
>  };
>  
>  #define to_rk3066_hdmi(x) container_of(x, struct rk3066_hdmi, x)
>  
> +static int
> +rk3066_hdmi_config_audio(struct rk3066_hdmi *hdmi, struct audio_info *audio);
> +
>  static inline u8 hdmi_readb(struct rk3066_hdmi *hdmi, u16 offset)
>  {
>  	return readl_relaxed(hdmi->regs + offset);
> @@ -205,6 +221,23 @@ static int rk3066_hdmi_config_avi(struct rk3066_hdmi *hdmi,
>  					HDMI_INFOFRAME_AVI, 0, 0, 0);
>  }
>  
> +static int rk3066_hdmi_config_aai(struct rk3066_hdmi *hdmi,
> +				  struct audio_info *audio)
> +{
> +	union hdmi_infoframe frame;
> +	int rc;
> +
> +	rc = hdmi_audio_infoframe_init(&frame.audio);
> +
> +	frame.audio.coding_type = HDMI_AUDIO_CODING_TYPE_STREAM;
> +	frame.audio.sample_frequency = HDMI_AUDIO_SAMPLE_FREQUENCY_STREAM;
> +	frame.audio.sample_size = HDMI_AUDIO_SAMPLE_SIZE_STREAM;
> +	frame.audio.channels = hdmi->audio.channels;
> +
> +	return rk3066_hdmi_upload_frame(hdmi, rc, &frame,
> +					HDMI_INFOFRAME_AAI, 0, 0, 0);
> +}
> +
>  static int rk3066_hdmi_config_video_timing(struct rk3066_hdmi *hdmi,
>  					   struct drm_display_mode *mode)
>  {
> @@ -353,6 +386,7 @@ static int rk3066_hdmi_setup(struct rk3066_hdmi *hdmi,
>  		hdmi_modb(hdmi, HDMI_HDCP_CTRL, HDMI_VIDEO_MODE_MASK,
>  			  HDMI_VIDEO_MODE_HDMI);
>  		rk3066_hdmi_config_avi(hdmi, mode);
> +		rk3066_hdmi_config_audio(hdmi, &hdmi->audio);
>  	} else {
>  		hdmi_modb(hdmi, HDMI_HDCP_CTRL, HDMI_VIDEO_MODE_MASK, 0);
>  	}
> @@ -369,9 +403,20 @@ static int rk3066_hdmi_setup(struct rk3066_hdmi *hdmi,
>  	 */
>  	rk3066_hdmi_i2c_init(hdmi);
>  
> -	/* Unmute video output. */
> +	/* Unmute video and audio output. */
>  	hdmi_modb(hdmi, HDMI_VIDEO_CTRL2,
>  		  HDMI_VIDEO_AUDIO_DISABLE_MASK, HDMI_AUDIO_DISABLE);
> +	if (hdmi->audio_enable) {
> +		hdmi_modb(hdmi, HDMI_VIDEO_CTRL2, HDMI_AUDIO_DISABLE, 0);
> +		/* Reset audio capture logic. */
> +		hdmi_modb(hdmi, HDMI_VIDEO_CTRL2,
> +			  HDMI_AUDIO_CP_LOGIC_RESET_MASK,
> +			  HDMI_AUDIO_CP_LOGIC_RESET);
> +		usleep_range(900, 1000);
> +		hdmi_modb(hdmi, HDMI_VIDEO_CTRL2,
> +			  HDMI_AUDIO_CP_LOGIC_RESET_MASK, 0);
> +	}
> +
>  	return 0;
>  }
>  
> @@ -473,9 +518,13 @@ static int rk3066_hdmi_connector_get_modes(struct drm_connector *connector)
>  	edid = drm_get_edid(connector, hdmi->ddc);
>  	if (edid) {
>  		hdmi->hdmi_data.sink_is_hdmi = drm_detect_hdmi_monitor(edid);
> +		hdmi->hdmi_data.sink_has_audio = drm_detect_monitor_audio(edid);
>  		drm_connector_update_edid_property(connector, edid);
>  		ret = drm_add_edid_modes(connector, edid);
>  		kfree(edid);
> +	} else {
> +		hdmi->hdmi_data.sink_is_hdmi = true;
> +		hdmi->hdmi_data.sink_has_audio = true;
>  	}
>  
>  	return ret;
> @@ -536,6 +585,228 @@ struct drm_connector_helper_funcs rk3066_hdmi_connector_helper_funcs = {
>  };
>  
>  static int
> +rk3066_hdmi_config_audio(struct rk3066_hdmi *hdmi, struct audio_info *audio)
> +{
> +	u32 rate, channel, word_length, N, CTS;
> +	u64 tmp;
> +
> +	if (audio->channels < 3)
> +		channel = HDMI_AUDIO_I2S_CHANNEL_1_2;
> +	else if (audio->channels < 5)
> +		channel = HDMI_AUDIO_I2S_CHANNEL_3_4;
> +	else if (audio->channels < 7)
> +		channel = HDMI_AUDIO_I2S_CHANNEL_5_6;
> +	else
> +		channel = HDMI_AUDIO_I2S_CHANNEL_7_8;
> +
> +	switch (audio->sample_rate) {
> +	case 32000:
> +		rate = HDMI_AUDIO_SAMPLE_FRE_32000;
> +		N = N_32K;
> +		break;
> +	case 44100:
> +		rate = HDMI_AUDIO_SAMPLE_FRE_44100;
> +		N = N_441K;
> +		break;
> +	case 48000:
> +		rate = HDMI_AUDIO_SAMPLE_FRE_48000;
> +		N = N_48K;
> +		break;
> +	case 88200:
> +		rate = HDMI_AUDIO_SAMPLE_FRE_88200;
> +		N = N_882K;
> +		break;
> +	case 96000:
> +		rate = HDMI_AUDIO_SAMPLE_FRE_96000;
> +		N = N_96K;
> +		break;
> +	case 176400:
> +		rate = HDMI_AUDIO_SAMPLE_FRE_176400;
> +		N = N_1764K;
> +		break;
> +	case 192000:
> +		rate = HDMI_AUDIO_SAMPLE_FRE_192000;
> +		N = N_192K;
> +		break;
> +	default:
> +		DRM_DEV_ERROR(hdmi->dev, "no support for sample rate %d\n",
> +			      audio->sample_rate);
> +		return -ENOENT;
> +	}
> +
> +	switch (audio->sample_width) {
> +	case 16:
> +		word_length = 0x02;
> +		break;
> +	case 20:
> +		word_length = 0x0a;
> +		break;
> +	case 24:
> +		word_length = 0x0b;
> +		break;
> +	default:
> +		DRM_DEV_ERROR(hdmi->dev, "no support for word length %d\n",
> +			      audio->sample_width);
> +		return -ENOENT;
> +	}
> +
> +	tmp = (u64)hdmi->tmdsclk * N;
> +	do_div(tmp, 128 * audio->sample_rate);
> +	CTS = tmp;
> +
> +	/* Set_audio source I2S. */
> +	hdmi_writeb(hdmi, HDMI_AUDIO_CTRL1, 0x00);
> +	hdmi_writeb(hdmi, HDMI_AUDIO_CTRL2, 0x40);
> +	hdmi_writeb(hdmi, HDMI_I2S_AUDIO_CTRL,
> +		    HDMI_AUDIO_I2S_FORMAT_STANDARD | channel);
> +	hdmi_writeb(hdmi, HDMI_I2S_SWAP, 0x00);
> +	hdmi_modb(hdmi, HDMI_AV_CTRL1, HDMI_AUDIO_SAMPLE_FRE_MASK, rate);
> +	hdmi_writeb(hdmi, HDMI_AUDIO_SRC_NUM_AND_LENGTH, word_length);
> +
> +	/* Set N value. */
> +	hdmi_modb(hdmi, HDMI_LR_SWAP_N3,
> +		  HDMI_AUDIO_N_19_16_MASK, (N >> 16) & 0x0F);
> +	hdmi_writeb(hdmi, HDMI_N2, (N >> 8) & 0xFF);
> +	hdmi_writeb(hdmi, HDMI_N1, N & 0xFF);
> +
> +	/* Set CTS value. */
> +	hdmi_writeb(hdmi, HDMI_CTS_EXT1, CTS & 0xff);
> +	hdmi_writeb(hdmi, HDMI_CTS_EXT2, (CTS >> 8) & 0xff);
> +	hdmi_writeb(hdmi, HDMI_CTS_EXT3, (CTS >> 16) & 0xff);
> +
> +	if (audio->channels > 2)
> +		hdmi_modb(hdmi, HDMI_LR_SWAP_N3,
> +			  HDMI_AUDIO_LR_SWAP_MASK,
> +			  HDMI_AUDIO_LR_SWAP_SUBPACKET1);
> +	rate = (~(rate >> 4)) & 0x0f;
> +	hdmi_writeb(hdmi, HDMI_AUDIO_STA_BIT_CTRL1, rate);
> +	hdmi_writeb(hdmi, HDMI_AUDIO_STA_BIT_CTRL2, 0);
> +
> +	return rk3066_hdmi_config_aai(hdmi, audio);
> +}
> +
> +static int rk3066_hdmi_audio_hw_params(struct device *dev, void *d,
> +				       struct hdmi_codec_daifmt *daifmt,
> +				       struct hdmi_codec_params *params)
> +{
> +	struct rk3066_hdmi *hdmi = dev_get_drvdata(dev);
> +
> +	if (!hdmi->hdmi_data.sink_has_audio) {
> +		DRM_DEV_ERROR(hdmi->dev, "no audio support\n");
> +		return -ENODEV;
> +	}
> +
> +	if (!hdmi->encoder.crtc)
> +		return -ENODEV;
> +
> +	switch (daifmt->fmt) {
> +	case HDMI_I2S:
> +		break;
> +	default:
> +		DRM_DEV_ERROR(dev, "invalid format %d\n", daifmt->fmt);
> +		return -EINVAL;
> +	}
> +
> +	hdmi->audio.channels = params->channels;
> +	hdmi->audio.sample_rate = params->sample_rate;
> +	hdmi->audio.sample_width = params->sample_width;
> +
> +	return rk3066_hdmi_config_audio(hdmi, &hdmi->audio);
> +}
> +
> +static void rk3066_hdmi_audio_shutdown(struct device *dev, void *d)
> +{
> +	/* do nothing */
> +}
> +
> +static int
> +rk3066_hdmi_audio_mute_stream(struct device *dev, void *d,
> +			      bool mute, int direction)
> +{
> +	struct rk3066_hdmi *hdmi = dev_get_drvdata(dev);
> +
> +	if (!hdmi->hdmi_data.sink_has_audio) {
> +		DRM_DEV_ERROR(hdmi->dev, "no audio support\n");
> +		return -ENODEV;
> +	}
> +
> +	hdmi->audio_enable = !mute;
> +
> +	if (mute)
> +		hdmi_modb(hdmi, HDMI_VIDEO_CTRL2,
> +			  HDMI_AUDIO_DISABLE, HDMI_AUDIO_DISABLE);
> +	else
> +		hdmi_modb(hdmi, HDMI_VIDEO_CTRL2, HDMI_AUDIO_DISABLE, 0);
> +
> +	/*
> +	 * Under power mode E we need to reset the audio capture logic to
> +	 * make the audio setting update.
> +	 */
> +	if (rk3066_hdmi_get_power_mode(hdmi) == HDMI_SYS_POWER_MODE_E) {
> +		hdmi_modb(hdmi, HDMI_VIDEO_CTRL2,
> +			  HDMI_AUDIO_CP_LOGIC_RESET_MASK,
> +			  HDMI_AUDIO_CP_LOGIC_RESET);
> +		usleep_range(900, 1000);
> +		hdmi_modb(hdmi, HDMI_VIDEO_CTRL2,
> +			  HDMI_AUDIO_CP_LOGIC_RESET_MASK, 0);
> +	}
> +
> +	return 0;
> +}
> +
> +static int rk3066_hdmi_audio_get_eld(struct device *dev, void *d,
> +				     u8 *buf, size_t len)
> +{
> +	struct rk3066_hdmi *hdmi = dev_get_drvdata(dev);
> +	struct drm_mode_config *config = &hdmi->encoder.dev->mode_config;
> +	struct drm_connector *connector;
> +	int ret = -ENODEV;
> +
> +	mutex_lock(&config->mutex);
> +	list_for_each_entry(connector, &config->connector_list, head) {
> +		if (&hdmi->encoder == connector->encoder) {
> +			memcpy(buf, connector->eld,
> +			       min(sizeof(connector->eld), len));
> +			ret = 0;
> +		}
> +	}
> +	mutex_unlock(&config->mutex);
> +
> +	return ret;
> +}
> +
> +static const struct hdmi_codec_ops audio_codec_ops = {
> +	.hw_params = rk3066_hdmi_audio_hw_params,
> +	.audio_shutdown = rk3066_hdmi_audio_shutdown,
> +	.mute_stream = rk3066_hdmi_audio_mute_stream,
> +	.get_eld = rk3066_hdmi_audio_get_eld,
> +	.no_capture_mute = 1,
> +};
> +
> +static int rk3066_hdmi_audio_codec_init(struct rk3066_hdmi *hdmi,
> +					struct device *dev)
> +{
> +	struct hdmi_codec_pdata codec_data = {
> +		.i2s = 1,
> +		.ops = &audio_codec_ops,
> +		.max_i2s_channels = 8,
> +	};
> +
> +	hdmi->audio.channels = 2;
> +	hdmi->audio.sample_rate = 48000;
> +	hdmi->audio.sample_width = 16;
> +	hdmi->audio_enable = false;
> +	hdmi->audio_pdev =
> +		platform_device_register_data(dev,
> +					      HDMI_CODEC_DRV_NAME,
> +					      PLATFORM_DEVID_NONE,
> +					      &codec_data,
> +					      sizeof(codec_data));
> +
> +	return PTR_ERR_OR_ZERO(hdmi->audio_pdev);
> +}
> +
> +static int
>  rk3066_hdmi_register(struct drm_device *drm, struct rk3066_hdmi *hdmi)
>  {
>  	struct drm_encoder *encoder = &hdmi->encoder;
> @@ -567,6 +838,8 @@ rk3066_hdmi_register(struct drm_device *drm, struct rk3066_hdmi *hdmi)
>  
>  	drm_connector_attach_encoder(&hdmi->connector, encoder);
>  
> +	rk3066_hdmi_audio_codec_init(hdmi, dev);
> +
>  	return 0;
>  }
>  
> @@ -815,6 +1088,7 @@ static int rk3066_hdmi_bind(struct device *dev, struct device *master,
>  	return 0;
>  
>  err_cleanup_hdmi:
> +	platform_device_unregister(hdmi->audio_pdev);
>  	hdmi->connector.funcs->destroy(&hdmi->connector);
>  	hdmi->encoder.funcs->destroy(&hdmi->encoder);
>  err_disable_i2c:
> @@ -830,6 +1104,7 @@ static void rk3066_hdmi_unbind(struct device *dev, struct device *master,
>  {
>  	struct rk3066_hdmi *hdmi = dev_get_drvdata(dev);
>  
> +	platform_device_unregister(hdmi->audio_pdev);
>  	hdmi->connector.funcs->destroy(&hdmi->connector);
>  	hdmi->encoder.funcs->destroy(&hdmi->encoder);
>  
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
