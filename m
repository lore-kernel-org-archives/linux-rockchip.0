Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9390FC0218D
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jan 2025 22:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xoI51Us0NATklegWhR8Rji8XqT5Y6mX8l3K2lYH01SI=; b=e0CLwgH9i7Gtta
	GKBJzOvHvNktLO36kX2qNs4UVg/8kTW8YG7BZrhElI5GaQW40IR2VoDDVt6zK/hstLRh5NMgodjCP
	9ORFSN65/OBiCCE7x6vt94lOZOXo68ygswtLBJVqSSrim3hfkEDHPyVocc0zqr5sHAA/mbJjJOUV/
	WrA4IbJ+N3qn2A6mlCuNl5DoQNOYa2xC0+77YWCCkPRuFfvYHO7yYF2ArVb/ApWdLefdw2iwuzdO0
	pYovvdmZxkFuEf3NIC0ibOTKFKh78WPatqtgMoGeht3jPnAcmDY7WVlcKVjjaWJ/Yt2F6yap3G+9w
	s2UbTXGHADQlpTLAX+Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdcbI-00000009gm7-1UnL;
	Thu, 30 Jan 2025 22:01:28 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdcbG-00000009glB-1t1m
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jan 2025 22:01:27 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-54020b0dcd2so2552452e87.1
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jan 2025 14:01:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738274484; x=1738879284; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cBlNXsRHjI4Icc/cJrwUE5dS89XMGKvK0YRLR8DFXAg=;
        b=n9nUuAsEFzZGkPmLn9H4i0zBR7YjCfmudQidtnaJAe3PNJP9DhuhRvEqW8XuzFcx28
         La0eb7pdXxLObuKDahK6MggE6WNMoa0GZPNdlw54UxXAs5Y/dG2p40OdKcsoe2hfP8au
         n5yKcbqgWNeCkFey+27npuXFo/5Su2vuZvGGqPUPs/FZ/Q/HN/2uvbABKFgVHtaxrgGK
         PcjCRtU0K1ZnKdODQXxVUUrxIhCqusZGoGSbsURlf06FIoCSnYkFpkgSWFWLD50R89Yk
         XJlW6WyO7BCIkvjfGXaXvA5YW/DQAkDzHLJNvRxnAwYLus2S0iTej6JgDFq5NKlwEFq7
         Vw0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738274484; x=1738879284;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cBlNXsRHjI4Icc/cJrwUE5dS89XMGKvK0YRLR8DFXAg=;
        b=Z6WpNwMPfnoQSM+6XxoxoSfTrX4089BxhMdYVMJQN2RV9KGdyV2MYYjbryejrzkHUq
         ITyg1WUa8bO0Fnb3oxnLsCsk1cmZPrJXxE2PXyhGLfGPQTaGFN1P/nyMU+F2WtTPqXXG
         G/VL3Ih+nVhhOTicXqattdVpUp62TvfkDfW+qIWyloh8vda8fJrvrykSGZOOjjrwb1vO
         R+c/9C/5GbhgKghWF/zgaTOauzrwGIKyJSBclWMuC7e5IuIlsNgj7t30JARNAf7w0VpK
         VGlzopSOhtEKBQ8P+SumOsTVVjilPnSZWNDQleML/M+HiiMb4gUaXm0rHsWElrcKgE37
         J4jA==
X-Forwarded-Encrypted: i=1; AJvYcCVnahY1KpY0rH8l27iF1F9WoB+uGaV6TPtdW+omUSsj5ArrwjXa9TquPX1YhIxsjoF5SQKU1DG1FgfczZVDtg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxFMccZEE1DBkS/s7v+2diTnVe2UTIQ40nnQ0+kJeC3bw2R980D
	/uj60LJBVmcWHUR3vOPnyTDzyaBWNTcnp/dW4Lq9hSEagYM89BL715pBB1fcKPM=
X-Gm-Gg: ASbGncsBSbFaTY9x8lDVf+hD+2Ae3HU0mXrmUFBGmpuY1IIKPc8xyL2HznG0wezotcS
	wK3wYw3OlPcyXV5xeFUoai5jgB9WvFxVvge9gu9aL1gPsbW5w4Ze8+mTjLmo9nVZxwndSA4zyFQ
	Ddj9oReb5iKrbuS4Q+r2xT3D3PPQ2Sn0LHILU4L6ZFrXsEdE/afOpcRIGXgcpOS07DIkKGOmtaN
	x4WDfJtO1QaLhxcrSlkWuX0CTH16iVem+vAtB4Vqgj0WdieyqzbCmM0fmlUoFz9thLLl0DpkBiX
	TrWiK++LtYLaTpzycBBvJ0+1OkbF+4XqJ7CVSjEPz0djGdqY1oXRvxo3/W9//JNdchBj9Qg=
X-Google-Smtp-Source: AGHT+IH4P4gNbyEayjwfxNHgKoxFSQta9sI/Y3L5cdMV5aw8SzodtwlXrZDsCpO0rA5Hkb9HY+WXJQ==
X-Received: by 2002:ac2:53a1:0:b0:540:2fbb:22fe with SMTP id 2adb3069b0e04-543ea3fbcaamr1423019e87.26.1738274483663;
        Thu, 30 Jan 2025 14:01:23 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543ebe10625sm264424e87.78.2025.01.30.14.01.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jan 2025 14:01:22 -0800 (PST)
Date: Fri, 31 Jan 2025 00:01:20 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH v3 1/2] drm/bridge: synopsys: Add audio support for
 dw-hdmi-qp
Message-ID: <5j5kgecsmehbcslq6aickhnv4qpzxptzp62p4s3qamegmdnohc@oq6hmgf23jbq>
References: <20250130165126.2292107-1-detlev.casanova@collabora.com>
 <20250130165126.2292107-2-detlev.casanova@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250130165126.2292107-2-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250130_140126_496832_9907539F 
X-CRM114-Status: GOOD (  28.50  )
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
Cc: Algea Cao <algea.cao@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, dri-devel@lists.freedesktop.org, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Dragan Simic <dsimic@manjaro.org>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, Sugar Zhang <sugar.zhang@rock-chips.com>, linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org, Neil Armstrong <neil.armstrong@linaro.org>, Jianfeng Liu <liujianfeng1994@gmail.com>, linux-kernel@vger.kernel.org, Alexey Charkov <alchark@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Jan 30, 2025 at 11:45:17AM -0500, Detlev Casanova wrote:
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
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 497 +++++++++++++++++++
>  1 file changed, 497 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
> index b281cabfe992e..7937504c2dcef 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
> @@ -36,6 +36,88 @@
>  
>  #define SCRAMB_POLL_DELAY_MS	3000
>  
> +/*
> + * Unless otherwise noted, entries in this table are 100% optimization.
> + * Values can be obtained from hdmi_compute_n() but that function is
> + * slow so we pre-compute values we expect to see.
> + *
> + * The values for TMDS 25175, 25200, 27000, 54000, 74250 and 148500 kHz are
> + * the recommended N values specified in the Audio chapter of the HDMI
> + * specification.
> + */
> +static const struct dw_hdmi_audio_tmds_n {
> +	unsigned long tmds;
> +	unsigned int n_32k;
> +	unsigned int n_44k1;
> +	unsigned int n_48k;
> +} common_tmds_n_table[] = {
> +	{ .tmds = 25175000,  .n_32k = 4576,  .n_44k1 = 7007,  .n_48k = 6864, },
> +	{ .tmds = 25200000,  .n_32k = 4096,  .n_44k1 = 6272,  .n_48k = 6144, },
> +	{ .tmds = 27000000,  .n_32k = 4096,  .n_44k1 = 6272,  .n_48k = 6144, },
> +	{ .tmds = 28320000,  .n_32k = 4096,  .n_44k1 = 5586,  .n_48k = 6144, },
> +	{ .tmds = 30240000,  .n_32k = 4096,  .n_44k1 = 5642,  .n_48k = 6144, },
> +	{ .tmds = 31500000,  .n_32k = 4096,  .n_44k1 = 5600,  .n_48k = 6144, },
> +	{ .tmds = 32000000,  .n_32k = 4096,  .n_44k1 = 5733,  .n_48k = 6144, },
> +	{ .tmds = 33750000,  .n_32k = 4096,  .n_44k1 = 6272,  .n_48k = 6144, },
> +	{ .tmds = 36000000,  .n_32k = 4096,  .n_44k1 = 5684,  .n_48k = 6144, },
> +	{ .tmds = 40000000,  .n_32k = 4096,  .n_44k1 = 5733,  .n_48k = 6144, },
> +	{ .tmds = 49500000,  .n_32k = 4096,  .n_44k1 = 5488,  .n_48k = 6144, },
> +	{ .tmds = 50000000,  .n_32k = 4096,  .n_44k1 = 5292,  .n_48k = 6144, },
> +	{ .tmds = 54000000,  .n_32k = 4096,  .n_44k1 = 6272,  .n_48k = 6144, },
> +	{ .tmds = 65000000,  .n_32k = 4096,  .n_44k1 = 7056,  .n_48k = 6144, },
> +	{ .tmds = 68250000,  .n_32k = 4096,  .n_44k1 = 5376,  .n_48k = 6144, },
> +	{ .tmds = 71000000,  .n_32k = 4096,  .n_44k1 = 7056,  .n_48k = 6144, },
> +	{ .tmds = 72000000,  .n_32k = 4096,  .n_44k1 = 5635,  .n_48k = 6144, },
> +	{ .tmds = 73250000,  .n_32k = 11648, .n_44k1 = 14112, .n_48k = 6144, },
> +	{ .tmds = 74250000,  .n_32k = 4096,  .n_44k1 = 6272,  .n_48k = 6144, },
> +	{ .tmds = 75000000,  .n_32k = 4096,  .n_44k1 = 5880,  .n_48k = 6144, },
> +	{ .tmds = 78750000,  .n_32k = 4096,  .n_44k1 = 5600,  .n_48k = 6144, },
> +	{ .tmds = 78800000,  .n_32k = 4096,  .n_44k1 = 5292,  .n_48k = 6144, },
> +	{ .tmds = 79500000,  .n_32k = 4096,  .n_44k1 = 4704,  .n_48k = 6144, },
> +	{ .tmds = 83500000,  .n_32k = 4096,  .n_44k1 = 7056,  .n_48k = 6144, },
> +	{ .tmds = 85500000,  .n_32k = 4096,  .n_44k1 = 5488,  .n_48k = 6144, },
> +	{ .tmds = 88750000,  .n_32k = 4096,  .n_44k1 = 14112, .n_48k = 6144, },
> +	{ .tmds = 97750000,  .n_32k = 4096,  .n_44k1 = 14112, .n_48k = 6144, },
> +	{ .tmds = 101000000, .n_32k = 4096,  .n_44k1 = 7056,  .n_48k = 6144, },
> +	{ .tmds = 106500000, .n_32k = 4096,  .n_44k1 = 4704,  .n_48k = 6144, },
> +	{ .tmds = 108000000, .n_32k = 4096,  .n_44k1 = 5684,  .n_48k = 6144, },
> +	{ .tmds = 115500000, .n_32k = 4096,  .n_44k1 = 5712,  .n_48k = 6144, },
> +	{ .tmds = 119000000, .n_32k = 4096,  .n_44k1 = 5544,  .n_48k = 6144, },
> +	{ .tmds = 135000000, .n_32k = 4096,  .n_44k1 = 5488,  .n_48k = 6144, },
> +	{ .tmds = 146250000, .n_32k = 11648, .n_44k1 = 6272,  .n_48k = 6144, },
> +	{ .tmds = 148500000, .n_32k = 4096,  .n_44k1 = 6272,  .n_48k = 6144, },
> +	{ .tmds = 154000000, .n_32k = 4096,  .n_44k1 = 5544,  .n_48k = 6144, },
> +	{ .tmds = 162000000, .n_32k = 4096,  .n_44k1 = 5684,  .n_48k = 6144, },
> +
> +	/* For 297 MHz+ HDMI spec have some other rule for setting N */
> +	{ .tmds = 297000000, .n_32k = 3073,  .n_44k1 = 4704,  .n_48k = 5120, },
> +	{ .tmds = 594000000, .n_32k = 3073,  .n_44k1 = 9408,  .n_48k = 10240,},
> +
> +	/* End of table */
> +	{ .tmds = 0,         .n_32k = 0,     .n_44k1 = 0,     .n_48k = 0,    },
> +};
> +
> +/*
> + * These are the CTS values as recommended in the Audio chapter of the HDMI
> + * specification.
> + */
> +static const struct dw_hdmi_audio_tmds_cts {
> +	unsigned long tmds;
> +	unsigned int cts_32k;
> +	unsigned int cts_44k1;
> +	unsigned int cts_48k;
> +} common_tmds_cts_table[] = {
> +	{ .tmds = 25175000,  .cts_32k = 28125,  .cts_44k1 = 31250,  .cts_48k = 28125,  },
> +	{ .tmds = 25200000,  .cts_32k = 25200,  .cts_44k1 = 28000,  .cts_48k = 25200,  },
> +	{ .tmds = 27000000,  .cts_32k = 27000,  .cts_44k1 = 30000,  .cts_48k = 27000,  },
> +	{ .tmds = 54000000,  .cts_32k = 54000,  .cts_44k1 = 60000,  .cts_48k = 54000,  },
> +	{ .tmds = 74250000,  .cts_32k = 74250,  .cts_44k1 = 82500,  .cts_48k = 74250,  },
> +	{ .tmds = 148500000, .cts_32k = 148500, .cts_44k1 = 165000, .cts_48k = 148500, },
> +
> +	/* End of table */
> +	{ .tmds = 0,         .cts_32k = 0,      .cts_44k1 = 0,      .cts_48k = 0,      },
> +};
> +
>  struct dw_hdmi_qp_i2c {
>  	struct i2c_adapter	adap;
>  
> @@ -60,6 +142,8 @@ struct dw_hdmi_qp {
>  	} phy;
>  
>  	struct regmap *regm;
> +
> +	unsigned long tmds_char_rate;
>  };
>  
>  static void dw_hdmi_qp_write(struct dw_hdmi_qp *hdmi, unsigned int val,
> @@ -83,6 +167,354 @@ static void dw_hdmi_qp_mod(struct dw_hdmi_qp *hdmi, unsigned int data,
>  	regmap_update_bits(hdmi->regm, reg, mask, data);
>  }
>  
> +static struct dw_hdmi_qp *dw_hdmi_qp_from_bridge(struct drm_bridge *bridge)
> +{
> +	return container_of(bridge, struct dw_hdmi_qp, bridge);
> +}
> +
> +static void hdmi_set_cts_n(struct dw_hdmi_qp *hdmi, unsigned int cts,
> +			   unsigned int n)

I'm sorry, I should have pointed out in the previous review cycle. Could
you please rename those functions so that their name start with
dw_hdmi_qp_*.

Other than that:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


> +{
> +	/* Set N */
> +	dw_hdmi_qp_mod(hdmi, n, AUDPKT_ACR_N_VALUE, AUDPKT_ACR_CONTROL0);
> +
> +	/* Set CTS */
> +	if (cts)
> +		dw_hdmi_qp_mod(hdmi, AUDPKT_ACR_CTS_OVR_EN, AUDPKT_ACR_CTS_OVR_EN_MSK,
> +			  AUDPKT_ACR_CONTROL1);
> +	else
> +		dw_hdmi_qp_mod(hdmi, 0, AUDPKT_ACR_CTS_OVR_EN_MSK,
> +			  AUDPKT_ACR_CONTROL1);
> +
> +	dw_hdmi_qp_mod(hdmi, AUDPKT_ACR_CTS_OVR_VAL(cts), AUDPKT_ACR_CTS_OVR_VAL_MSK,
> +		  AUDPKT_ACR_CONTROL1);
> +}
> +

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
