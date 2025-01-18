Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E410C02185
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Jan 2025 03:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XIjNkIWTR8Gp+SXcZDfLODMlIzcnSUBZEyzIVPRqJSM=; b=iXqQpYvkKOoJ/l
	csd6zF5xs2mXKMSs7TSUqycfWRovOk493RzUg5enjLS5K+ujJD78tgbbk9E/fMGXL9yRkn7YyQr4g
	AumTkyCPgpcSgON+KfiTCWqam08wf+ZB9jZ0uTvRW1tU9l4XkXzwpZo2x7kacea7mn+fhAtfGychU
	wS2ZGxG0agQO9LRx9SO4SylITCpZ6fgN/0CXHFmQSblYV3cOPV6opKgYDR14kpZRFxbptycLLQcHF
	0oY9xYa58V5gZXvXrceO9ED11szLPGYXHwLkgoBsVifw1YTAeUkHFXkK+r7d/eR/8YEOxR/YHEejP
	FLkVpNB9XIFPc7Ul7nYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYzaP-00000001mm3-3tlH;
	Sat, 18 Jan 2025 03:33:25 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYzZ8-00000001mgi-1Jg5
	for linux-rockchip@lists.infradead.org;
	Sat, 18 Jan 2025 03:32:08 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-53f22fd6832so2908156e87.1
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Jan 2025 19:32:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737171124; x=1737775924; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hzhYcQ8TIQfms4jIUonylBO9hpxU9lIyBPmgiVcYCfA=;
        b=c1OfykRN5o6zFkO1C4tfAOpgMIpRGIzmwjOvzqmMo3qyxehXGqglHT6WQy3YQLM9oz
         vKJnbUsRRpFjbnxus7afo7dziQD3zTpGLrE4ot1wy3oeyfAu7TNZ2ATO/J7SOFWbG2Sd
         l8hwJpOD4nYt8LzSgptecIFbu30t0AZB36qljiMHlBv92gpOfLukYBDz3vi891xXwPQz
         rTPLrpClX7mhKjNxJEAn8hvVeZG3ofyUPntYodp1PLdTf/vGM3SLTGGMSs79HhKtpdeh
         VXrOx0X62NQOySJOy5wIcVuMd77XzB63ZP+ZJlWH4GuEgnTmmBe54M6U23dLn90i88mj
         6jtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737171124; x=1737775924;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hzhYcQ8TIQfms4jIUonylBO9hpxU9lIyBPmgiVcYCfA=;
        b=XPMvZkfgoLPzmttZ31vFjkU5Il+zUB8NlFf4ZJT7071QHC6zmsFogp+XJnUvh80gDJ
         cMrJJwGJDuopW2nw+U3eTK8aCdoL0i/S7UPcXriNlhrks/jnHpr3IJakhLStAyogcjNm
         qp3nSEhgcC/yw0bENzOnPI4LY8lHaosSuUlHErh4GFNKFSJupXQJaorlFDiAz0BClUje
         7YzSqRqK4b/4WkhCvAFTi2sg7UQjg/HOfECHRSPRVDIB8CV7BjULMVu7334K9anCQpFY
         +EhTfrjNR/0FYZ+3LIQwS6hM0+D89hb3ytgB7vSCuMqLDvlumiTdbO835we7T5USjGWt
         v2Fg==
X-Forwarded-Encrypted: i=1; AJvYcCXDu0M6DXv8ZqTWgZDAiurqG3VRMXASX6bhdgqSqrmsmI6n1mtp1A52GofI26JtLZyOCDMXqkPb/1s16LejMA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzAt4ozMQthDj1a3TxSTwGf0lr8ojI3UZvtMlF6HaOxtyi0YQEF
	+tw1UVL911Y/yqCRhtwPc18v61yEcerTG0etKAphAkFJIMhem9hL+yfy0Ca8y3w=
X-Gm-Gg: ASbGncvD1irq0PN2XCFmBZN82KLV3R6RTSGwhn6do1P3P44xhIoIjqFJtpc/FHT6W9J
	hrQFGGF9OwDv7U+nw7ZDZ2tDBBo+cmrt4O1n/h5732y0kN+4o6FSyfUjBFnmvJeyyF1eGMS9i2I
	tk6Mxlj8eXTAN5pVFeRPzUipmdkWHBVjlAYYAEhyN3PwDoxneru/hYkfPU7Pm8L3VUC33vEgqrv
	SRz9LIVV5LsqMQllBOQ4ZXx97oAnVQg9dKFR44bkdjidfKd3gKNvoxG5t1pGVcrCcAluY8dzVjl
	RmmOhxE/BtmmRXnDFRnkWIV6SUEWNLfIv9XMsrxrBcl5+88NZQ==
X-Google-Smtp-Source: AGHT+IEHCXhnR9Ifz788WfaTw8BC7iP0CpDRy+2jMi6d69znvkXj4Q2lQp7TuxJzYYy15v3Qpf7Fpg==
X-Received: by 2002:a05:6512:e8d:b0:542:9883:263 with SMTP id 2adb3069b0e04-5439c246370mr1751170e87.14.1737171123682;
        Fri, 17 Jan 2025 19:32:03 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af60970sm574860e87.116.2025.01.17.19.32.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2025 19:32:02 -0800 (PST)
Date: Sat, 18 Jan 2025 05:31:59 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH v1 1/2] drm/bridge: synopsys: Add audio support for
 dw-hdmi-qp
Message-ID: <xtthbgdnyaevtcvjmkqsipje6ksxmbilkacbw5f4m4fvu62ggx@wm34iotb2a6d>
References: <20250117164815.67253-1-detlev.casanova@collabora.com>
 <20250117164815.67253-2-detlev.casanova@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250117164815.67253-2-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250117_193206_417360_02A38523 
X-CRM114-Status: GOOD (  30.34  )
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
Cc: Algea Cao <algea.cao@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, Kever Yang <kever.yang@rock-chips.com>, dri-devel@lists.freedesktop.org, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Dragan Simic <dsimic@manjaro.org>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, Sugar Zhang <sugar.zhang@rock-chips.com>, linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org, Neil Armstrong <neil.armstrong@linaro.org>, Jianfeng Liu <liujianfeng1994@gmail.com>, linux-kernel@vger.kernel.org, Alexey Charkov <alchark@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Jan 17, 2025 at 11:46:57AM -0500, Detlev Casanova wrote:
> From: Sugar Zhang <sugar.zhang@rock-chips.com>
> 
> Register the dw-hdmi-qp bridge driver as an HDMI audio codec.
> 
> The register values computation functions (for n) are based on the
> downstream driver, as well as the register writing functions.
> 
> The driver uses the generic HDMI Codec framework in order to implement
> the HDMI audio support.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 472 +++++++++++++++++++
>  1 file changed, 472 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
> index b281cabfe992..55ceeb180bc6 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
> @@ -36,6 +36,66 @@
>  
>  #define SCRAMB_POLL_DELAY_MS	3000
>  
> +/*
> + * Unless otherwise noted, entries in this table are 100% optimization.
> + * Values can be obtained from hdmi_compute_n() but that function is
> + * slow so we pre-compute values we expect to see.
> + *
> + * All 32k and 48k values are expected to be the same (due to the way
> + * the math works) for any rate that's an exact kHz.
> + */
> +static const struct dw_hdmi_audio_tmds_n {
> +	unsigned long tmds;
> +	unsigned int n_32k;
> +	unsigned int n_44k1;
> +	unsigned int n_48k;
> +} common_tmds_n_table[] = {
> +	{ .tmds = 25175000, .n_32k = 4096, .n_44k1 = 12854, .n_48k = 6144, },
> +	{ .tmds = 25200000, .n_32k = 4096, .n_44k1 = 5656, .n_48k = 6144, },
> +	{ .tmds = 27000000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
> +	{ .tmds = 28320000, .n_32k = 4096, .n_44k1 = 5586, .n_48k = 6144, },
> +	{ .tmds = 30240000, .n_32k = 4096, .n_44k1 = 5642, .n_48k = 6144, },
> +	{ .tmds = 31500000, .n_32k = 4096, .n_44k1 = 5600, .n_48k = 6144, },
> +	{ .tmds = 32000000, .n_32k = 4096, .n_44k1 = 5733, .n_48k = 6144, },
> +	{ .tmds = 33750000, .n_32k = 4096, .n_44k1 = 6272, .n_48k = 6144, },
> +	{ .tmds = 36000000, .n_32k = 4096, .n_44k1 = 5684, .n_48k = 6144, },
> +	{ .tmds = 40000000, .n_32k = 4096, .n_44k1 = 5733, .n_48k = 6144, },
> +	{ .tmds = 49500000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
> +	{ .tmds = 50000000, .n_32k = 4096, .n_44k1 = 5292, .n_48k = 6144, },
> +	{ .tmds = 54000000, .n_32k = 4096, .n_44k1 = 5684, .n_48k = 6144, },
> +	{ .tmds = 65000000, .n_32k = 4096, .n_44k1 = 7056, .n_48k = 6144, },
> +	{ .tmds = 68250000, .n_32k = 4096, .n_44k1 = 5376, .n_48k = 6144, },
> +	{ .tmds = 71000000, .n_32k = 4096, .n_44k1 = 7056, .n_48k = 6144, },
> +	{ .tmds = 72000000, .n_32k = 4096, .n_44k1 = 5635, .n_48k = 6144, },
> +	{ .tmds = 73250000, .n_32k = 4096, .n_44k1 = 14112, .n_48k = 6144, },
> +	{ .tmds = 74250000, .n_32k = 4096, .n_44k1 = 6272, .n_48k = 6144, },
> +	{ .tmds = 75000000, .n_32k = 4096, .n_44k1 = 5880, .n_48k = 6144, },
> +	{ .tmds = 78750000, .n_32k = 4096, .n_44k1 = 5600, .n_48k = 6144, },
> +	{ .tmds = 78800000, .n_32k = 4096, .n_44k1 = 5292, .n_48k = 6144, },
> +	{ .tmds = 79500000, .n_32k = 4096, .n_44k1 = 4704, .n_48k = 6144, },
> +	{ .tmds = 83500000, .n_32k = 4096, .n_44k1 = 7056, .n_48k = 6144, },
> +	{ .tmds = 85500000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
> +	{ .tmds = 88750000, .n_32k = 4096, .n_44k1 = 14112, .n_48k = 6144, },
> +	{ .tmds = 97750000, .n_32k = 4096, .n_44k1 = 14112, .n_48k = 6144, },
> +	{ .tmds = 101000000, .n_32k = 4096, .n_44k1 = 7056, .n_48k = 6144, },
> +	{ .tmds = 106500000, .n_32k = 4096, .n_44k1 = 4704, .n_48k = 6144, },
> +	{ .tmds = 108000000, .n_32k = 4096, .n_44k1 = 5684, .n_48k = 6144, },
> +	{ .tmds = 115500000, .n_32k = 4096, .n_44k1 = 5712, .n_48k = 6144, },
> +	{ .tmds = 119000000, .n_32k = 4096, .n_44k1 = 5544, .n_48k = 6144, },
> +	{ .tmds = 135000000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
> +	{ .tmds = 146250000, .n_32k = 4096, .n_44k1 = 6272, .n_48k = 6144, },
> +	{ .tmds = 148500000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
> +	{ .tmds = 154000000, .n_32k = 4096, .n_44k1 = 5544, .n_48k = 6144, },
> +	{ .tmds = 162000000, .n_32k = 4096, .n_44k1 = 5684, .n_48k = 6144, },
> +
> +	/* For 297 MHz+ HDMI spec have some other rule for setting N */
> +	{ .tmds = 297000000, .n_32k = 3073, .n_44k1 = 4704, .n_48k = 5120, },
> +	{ .tmds = 594000000, .n_32k = 3073, .n_44k1 = 9408, .n_48k = 10240, },
> +
> +	/* End of table */
> +	{ .tmds = 0,         .n_32k = 0,    .n_44k1 = 0,    .n_48k = 0, },
> +};
> +
>  struct dw_hdmi_qp_i2c {
>  	struct i2c_adapter	adap;
>  
> @@ -59,6 +119,8 @@ struct dw_hdmi_qp {
>  		void *data;
>  	} phy;
>  
> +	struct mutex audio_mutex;

There should be a comment, what is being protected by this mutex.

> +
>  	struct regmap *regm;
>  };
>  

[...]

> +static int dw_hdmi_qp_init_audio_infoframe(struct dw_hdmi_qp *hdmi)
> +{
> +	struct hdmi_audio_infoframe frame;
> +	u8 infoframe_buf[HDMI_INFOFRAME_SIZE(AUDIO)];
> +	int ret = 0;
> +
> +	hdmi_audio_infoframe_init(&frame);
> +
> +	frame.coding_type = HDMI_AUDIO_CODING_TYPE_STREAM;
> +	frame.sample_frequency = HDMI_AUDIO_SAMPLE_FREQUENCY_STREAM;
> +	frame.sample_size = HDMI_AUDIO_SAMPLE_SIZE_STREAM;
> +	frame.channels = 2;
> +
> +	ret = hdmi_audio_infoframe_pack(&frame, infoframe_buf,
> +					sizeof(infoframe_buf));
> +	if (ret < 0) {
> +		dev_err(hdmi->dev, "%s: Failed to pack audio infoframe: %d\n",
> +			__func__, ret);
> +		return ret;
> +	}
> +
> +	regmap_bulk_write(hdmi->regm, PKT_AUDI_CONTENTS1, &infoframe_buf[3], 2);
> +	dw_hdmi_qp_mod(hdmi,
> +		  PKTSCHED_ACR_TX_EN | PKTSCHED_AUDI_TX_EN,
> +		  PKTSCHED_ACR_TX_EN | PKTSCHED_AUDI_TX_EN,
> +		  PKTSCHED_PKT_EN);
> +
> +	return 0;
> +}
> +
> +static void dw_hdmi_qp_set_audio_infoframe(struct dw_hdmi_qp *hdmi,
> +				    struct hdmi_codec_params *hparms)
> +{
> +	u8 infoframe_buf[HDMI_INFOFRAME_SIZE(AUDIO)];
> +	int ret = 0;
> +
> +	ret = hdmi_audio_infoframe_pack(&hparms->cea, infoframe_buf,
> +					sizeof(infoframe_buf));

Please use existing functions,
drm_atomic_helper_connector_hdmi_update_audio_infoframe() and
drm_atomic_helper_connector_hdmi_clear_audio_infoframe() to manage the
infoframe. The drm_atomic_helper_connector_hdmi_update_infoframes()
function will take care of updating the audio infoframe.

> +	if (!ret) {
> +		dev_err(hdmi->dev, "%s: Failed to pack audio infoframe: %d\n",
> +			__func__, ret);
> +		return;
> +	}
> +
> +	/*
> +	 * AUDI_CONTENTS0: { RSV, HB2, HB1, RSV }
> +	 * AUDI_CONTENTS1: { PB3, PB2, PB1, PB0 }
> +	 * AUDI_CONTENTS2: { PB7, PB6, PB5, PB4 }
> +	 *
> +	 * PB0: CheckSum
> +	 * PB1: | CT3    | CT2  | CT1  | CT0  | F13  | CC2 | CC1 | CC0 |
> +	 * PB2: | F27    | F26  | F25  | SF2  | SF1  | SF0 | SS1 | SS0 |
> +	 * PB3: | F37    | F36  | F35  | F34  | F33  | F32 | F31 | F30 |
> +	 * PB4: | CA7    | CA6  | CA5  | CA4  | CA3  | CA2 | CA1 | CA0 |
> +	 * PB5: | DM_INH | LSV3 | LSV2 | LSV1 | LSV0 | F52 | F51 | F50 |
> +	 * PB6~PB10: Reserved
> +	 *
> +	 * AUDI_CONTENTS0 default value defined by HDMI specification,
> +	 * and shall only be changed for debug purposes.
> +	 * So, we only configure payload byte from PB0~PB7(2 word total).
> +	 */
> +	regmap_bulk_write(hdmi->regm, PKT_AUDI_CONTENTS1, &infoframe_buf[3], 2);

This should go to your dw_hdmi_qp_bridge_write_infoframe().

> +
> +	/* Enable ACR, AUDI, AMD */
> +	dw_hdmi_qp_mod(hdmi,
> +		  PKTSCHED_ACR_TX_EN | PKTSCHED_AUDI_TX_EN | PKTSCHED_AMD_TX_EN,
> +		  PKTSCHED_ACR_TX_EN | PKTSCHED_AUDI_TX_EN | PKTSCHED_AMD_TX_EN,
> +		  PKTSCHED_PKT_EN);
> +
> +	/* Enable AUDS */
> +	dw_hdmi_qp_mod(hdmi, PKTSCHED_AUDS_TX_EN, PKTSCHED_AUDS_TX_EN, PKTSCHED_PKT_EN);
> +	mutex_unlock(&hdmi->audio_mutex);
> +}
> +

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
