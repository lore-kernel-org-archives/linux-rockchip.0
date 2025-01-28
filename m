Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8690C0218D
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jan 2025 13:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zCxgmOAbDlqBCIdxHyq35K7RMFG1N17kzg4KOPnbJHY=; b=0zi8WZ1l9qo72e
	Am1okfDijyhPLl67pyOjMp26YX0kkUWHb9P+meO8bx80MKQjdE/p4B+5bShVoGE0RrRLfWnPV7iEX
	nFu6cQJr8DSZ2VGDhxgEugYFrQkBvlFECMxfkcRkGCkuoQpjm8UrdOU3E5/1ycERRHYgXUBoJV0ow
	MrnQPjGEYfMt2PhhM8Bx+XXleeqCOMcHW8Wyw3Bna85KdxPVt72SEnLnWToiNP3a7egh5NduRZMsh
	2XDqQ8c80/xCp+u4tcXzCXNssUNZ1Ey7MGYDfHj0/wuOXaHZR2sqz192UXNbf/UvmerzqI46vBgA0
	9Da5fdV/WTdhtBtNR60w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tclmH-00000004yci-2v3J;
	Tue, 28 Jan 2025 13:37:17 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tclmF-00000004yc2-0ASY
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Jan 2025 13:37:16 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-54024ecc33dso5646743e87.0
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Jan 2025 05:37:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738071433; x=1738676233; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zS5nSBGls353eF7nm6hUAd/AF7wru9U9pAkqvaCDEtk=;
        b=BLOEIB/hQc0tSNbMZuQ+HvOqgCngpwx1M1+hfH/izuF6uM1Zm9VXpVMRJIZxLuaVuG
         pTmMQ93VVYxzKCafpGRvfGl3eju4VTYQbQbubxWACeo5E4JXOvFVyQIrnTxmS+Twn0gM
         3ykmBJf3svWHwJLwa1AV2VGckf2W1KinJkieoRhMHk4HttpugMkRFQO1CHvCOcqOWhfR
         zUEugWkZzR1Pw7OEEl4MDvbFPGI6D3apoevWwXcVxy3FclQDlDnEpABtnGdi7AsSm4ce
         FOv7VTsMykgPMpvl939PamAokPZRKwlmnLlUXUnBOkIy4aoEqwsnYidWkhEvrtQ0CNUN
         3yzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738071433; x=1738676233;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zS5nSBGls353eF7nm6hUAd/AF7wru9U9pAkqvaCDEtk=;
        b=KenoCs/HKfstpdB8QZAnNxUF/5BPN/V/gcU7HURCy7HJGtkQA7yghzL0AcJUIlCjO+
         SZWOAuO6wt9coAKyRSsc8C8JlBv86vwp6hBzEhRsYS4iX/4t/djgthm+roh+9Ws0LNCc
         Bm9+8UCmbh1lKYdFmwu6CZ93bJZLodgwIft3vs6mjdYJZxU/1oSORJbXhR5yys3yIQ31
         7RMuj3topKkUJN2ZJuRL7HPtcj1IkSvFIREy7coKuuYhMl5PauZOcAoA0hWmt0RrUJ2u
         GSfdxf5X9S4EG6VWDSvcrnu5r25g75A+GBUDbvIAtSfNv3XpVCmhIJnVoIukAo39omFl
         qXkg==
X-Forwarded-Encrypted: i=1; AJvYcCWm86McvH/Ygm8uzgTYu6rbrXpfulPe+X4rjfUrVwWU149mUdb5SHCOMspByYETfq9vYzI41NqlvOaymvrudg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxlBK2wpyBgJrF7RKUOMQS5fhkUv6SkAOM67J1guUfSq2KpQELX
	qyOwpZyUb6KgZPKGD6htIXX+YM68lhPw+k4txyWD0p/05j7jxC7IKlqOET9N8RN+j17pteRlZnz
	D7jo=
X-Gm-Gg: ASbGnctDgLkMiqLwZM6zpLmzGCRsbBX9O82kqaoYkeF+UBYKZTseh0FgxXIYwp9mW+V
	m4M4FQPaCJjrebna1Sx5DphF9sRJC0dgjBc78mhJKXZBWihp5Fd+FSeASK9zBaY/UDJWe+6wqZj
	uWKWGwEjYRa6VnlIrcE94vfhrERQHxvQx/o6ZK6FLV5v+/2wstjaj7M6wvOP6RcIOcPHbbRTItU
	Lsad9mfjeI56Cw7/k2fmeRZ9xfeTiJmgpe7nDRVfD45UWWkyb6hkaPzD923jnntSeH8F1Fn4rnR
	Vu7b9fm4ANltMS2KRayi/uK/EsqU2cnusufK13gYqhetbehx0GxKAz/76PW7DeNTvSTOlcM=
X-Google-Smtp-Source: AGHT+IHRQpvnMCwRGuG3jC7iKv4H2kfKHC2VD5D+BEBIB2Y39FraAj7yntP5uzpjjhvWy5YiAruoVg==
X-Received: by 2002:ac2:485c:0:b0:540:1cb9:850b with SMTP id 2adb3069b0e04-5439c2483bemr14815595e87.31.1738071432753;
        Tue, 28 Jan 2025 05:37:12 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543c837a139sm1659076e87.202.2025.01.28.05.37.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jan 2025 05:37:11 -0800 (PST)
Date: Tue, 28 Jan 2025 15:37:08 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH v2 1/2] drm/bridge: synopsys: Add audio support for
 dw-hdmi-qp
Message-ID: <aniwulekagpuxcppo6qa2vfkov4xwby75oop4louywjhlksydu@rzd7px6qk67g>
References: <20250123222850.223255-1-detlev.casanova@collabora.com>
 <20250123222850.223255-2-detlev.casanova@collabora.com>
 <mpj5o2kdadkwsutjdtmze6riycdan3w7mohgqdzxiwfpvlh7zx@eocnqikqwrwt>
 <4954567.GXAFRqVoOG@earth>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4954567.GXAFRqVoOG@earth>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250128_053715_092672_4C0686B1 
X-CRM114-Status: GOOD (  48.03  )
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

On Mon, Jan 27, 2025 at 03:34:21PM -0500, Detlev Casanova wrote:
> On Friday, 24 January 2025 00:01:38 EST Dmitry Baryshkov wrote:
> > On Thu, Jan 23, 2025 at 05:28:06PM -0500, Detlev Casanova wrote:
> > > From: Sugar Zhang <sugar.zhang@rock-chips.com>
> > > 
> > > Register the dw-hdmi-qp bridge driver as an HDMI audio codec.
> > > 
> > > The register values computation functions (for n) are based on the
> > > downstream driver, as well as the register writing functions.
> > > 
> > > The driver uses the generic HDMI Codec framework in order to implement
> > > the HDMI audio support.
> > > 
> > > Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> > > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> > > ---
> > > 
> > >  drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 424 +++++++++++++++++++
> > >  1 file changed, 424 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
> > > b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c index
> > > b281cabfe992e..f79d38de4c6c4 100644
> > > --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
> > > +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
> > > @@ -36,6 +36,66 @@
> > > 
> > >  #define SCRAMB_POLL_DELAY_MS	3000
> > > 
> > > +/*
> > > + * Unless otherwise noted, entries in this table are 100% optimization.
> > > + * Values can be obtained from hdmi_compute_n() but that function is
> > > + * slow so we pre-compute values we expect to see.
> > > + *
> > > + * All 32k and 48k values are expected to be the same (due to the way
> > > + * the math works) for any rate that's an exact kHz.
> > > + */
> > > +static const struct dw_hdmi_audio_tmds_n {
> > > +	unsigned long tmds;
> > > +	unsigned int n_32k;
> > > +	unsigned int n_44k1;
> > > +	unsigned int n_48k;
> > > +} common_tmds_n_table[] = {
> > > +	{ .tmds = 25175000, .n_32k = 4096, .n_44k1 = 12854, .n_48k = 6144, 
> },
> > > +	{ .tmds = 25200000, .n_32k = 4096, .n_44k1 = 5656, .n_48k = 6144, },
> > 
> > These values do not seem to match the tables in HDMI, Appendix D. Is
> > there any reason for that?
> 
> From what I see, this seems to be because CTS is never set in the driver (same 
> behavior as downstream driver, which overrides CTS).
> So for values where CTS != TMDS/1000 in the recommendations table, N is 
> different here to make up for it.
> 
> Do you think I should Improve the behavior to set CTS when needed ?

I think that it's up to you (as a patch author). But the reason for
deviation should be documented (ideally with something better than "done
so by the downstream").

> 
> This also made me realize that in this patch set, a CTS value is used but 
> never set to anything different to 0, which needs to be changed anyway.
> 
> > > +	{ .tmds = 27000000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
> > > +	{ .tmds = 28320000, .n_32k = 4096, .n_44k1 = 5586, .n_48k = 6144, },
> > > +	{ .tmds = 30240000, .n_32k = 4096, .n_44k1 = 5642, .n_48k = 6144, },
> > > +	{ .tmds = 31500000, .n_32k = 4096, .n_44k1 = 5600, .n_48k = 6144, },
> > > +	{ .tmds = 32000000, .n_32k = 4096, .n_44k1 = 5733, .n_48k = 6144, },
> > > +	{ .tmds = 33750000, .n_32k = 4096, .n_44k1 = 6272, .n_48k = 6144, },
> > > +	{ .tmds = 36000000, .n_32k = 4096, .n_44k1 = 5684, .n_48k = 6144, },
> > > +	{ .tmds = 40000000, .n_32k = 4096, .n_44k1 = 5733, .n_48k = 6144, },
> > > +	{ .tmds = 49500000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
> > > +	{ .tmds = 50000000, .n_32k = 4096, .n_44k1 = 5292, .n_48k = 6144, },
> > > +	{ .tmds = 54000000, .n_32k = 4096, .n_44k1 = 5684, .n_48k = 6144, },
> > > +	{ .tmds = 65000000, .n_32k = 4096, .n_44k1 = 7056, .n_48k = 6144, },
> > > +	{ .tmds = 68250000, .n_32k = 4096, .n_44k1 = 5376, .n_48k = 6144, },
> > > +	{ .tmds = 71000000, .n_32k = 4096, .n_44k1 = 7056, .n_48k = 6144, },
> > > +	{ .tmds = 72000000, .n_32k = 4096, .n_44k1 = 5635, .n_48k = 6144, },
> > > +	{ .tmds = 73250000, .n_32k = 4096, .n_44k1 = 14112, .n_48k = 6144, 
> },
> > > +	{ .tmds = 74250000, .n_32k = 4096, .n_44k1 = 6272, .n_48k = 6144, },
> > > +	{ .tmds = 75000000, .n_32k = 4096, .n_44k1 = 5880, .n_48k = 6144, },
> > > +	{ .tmds = 78750000, .n_32k = 4096, .n_44k1 = 5600, .n_48k = 6144, },
> > > +	{ .tmds = 78800000, .n_32k = 4096, .n_44k1 = 5292, .n_48k = 6144, },
> > > +	{ .tmds = 79500000, .n_32k = 4096, .n_44k1 = 4704, .n_48k = 6144, },
> > > +	{ .tmds = 83500000, .n_32k = 4096, .n_44k1 = 7056, .n_48k = 6144, },
> > > +	{ .tmds = 85500000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
> > > +	{ .tmds = 88750000, .n_32k = 4096, .n_44k1 = 14112, .n_48k = 6144, 
> },
> > > +	{ .tmds = 97750000, .n_32k = 4096, .n_44k1 = 14112, .n_48k = 6144, 
> },
> > > +	{ .tmds = 101000000, .n_32k = 4096, .n_44k1 = 7056, .n_48k = 6144, 
> },
> > > +	{ .tmds = 106500000, .n_32k = 4096, .n_44k1 = 4704, .n_48k = 6144, 
> },
> > > +	{ .tmds = 108000000, .n_32k = 4096, .n_44k1 = 5684, .n_48k = 6144, 
> },
> > > +	{ .tmds = 115500000, .n_32k = 4096, .n_44k1 = 5712, .n_48k = 6144, 
> },
> > > +	{ .tmds = 119000000, .n_32k = 4096, .n_44k1 = 5544, .n_48k = 6144, 
> },
> > > +	{ .tmds = 135000000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, 
> },
> > > +	{ .tmds = 146250000, .n_32k = 4096, .n_44k1 = 6272, .n_48k = 6144, 
> },
> > > +	{ .tmds = 148500000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, 
> },
> > > +	{ .tmds = 154000000, .n_32k = 4096, .n_44k1 = 5544, .n_48k = 6144, 
> },
> > > +	{ .tmds = 162000000, .n_32k = 4096, .n_44k1 = 5684, .n_48k = 6144, 
> },
> > > +
> > > +	/* For 297 MHz+ HDMI spec have some other rule for setting N */
> > > +	{ .tmds = 297000000, .n_32k = 3073, .n_44k1 = 4704, .n_48k = 5120, 
> },
> > > +	{ .tmds = 594000000, .n_32k = 3073, .n_44k1 = 9408, .n_48k = 10240, 
> },
> > > +
> > > +	/* End of table */
> > > +	{ .tmds = 0,         .n_32k = 0,    .n_44k1 = 0,    .n_48k = 0, },
> > > +};
> > > +
> > > 
> > >  struct dw_hdmi_qp_i2c {
> > >  
> > >  	struct i2c_adapter	adap;
> > > 
> > > @@ -83,6 +143,326 @@ static void dw_hdmi_qp_mod(struct dw_hdmi_qp *hdmi,
> > > unsigned int data,> 
> > >  	regmap_update_bits(hdmi->regm, reg, mask, data);
> > >  
> > >  }
> > > 
> > > +static struct dw_hdmi_qp *dw_hdmi_qp_from_bridge(struct drm_bridge
> > > *bridge) +{
> > > +	struct dw_hdmi_qp *hdmi = container_of(bridge, struct dw_hdmi_qp,
> > > bridge); +
> > > +	return hdmi;
> > 
> > Just `return container_of(bridge, struct dw_hdmi_qp, bridge);`
> > 
> > > +}
> > > +
> > 
> > [...]
> > 
> > > +
> > > +static int dw_hdmi_qp_audio_enable(struct drm_connector *connector,
> > > +			    struct drm_bridge *bridge)
> > > +{
> > > +	struct dw_hdmi_qp *hdmi = dw_hdmi_qp_from_bridge(bridge);
> > > +
> > > +	if (connector->status == connector_status_connected)
> > > +		dw_hdmi_qp_mod(hdmi, 0, 
> AVP_DATAPATH_PACKET_AUDIO_SWDISABLE,
> > > GLOBAL_SWDISABLE); +
> > > +	return 0;
> > > +}
> > > +
> > > +static int dw_hdmi_qp_audio_prepare(struct drm_connector *connector,
> > > +			     struct drm_bridge *bridge,
> > > +			     struct hdmi_codec_daifmt *fmt,
> > > +			     struct hdmi_codec_params *hparms)
> > > +{
> > > +	struct dw_hdmi_qp *hdmi = dw_hdmi_qp_from_bridge(bridge);
> > > +	struct drm_connector_state *conn_state =
> > > +		drm_atomic_helper_connector_duplicate_state(connector);
> > > +	bool ref2stream = false;
> > > +	unsigned long long tmds_char_rate = conn_state->hdmi.tmds_char_rate;
> > > +
> > > +	drm_atomic_helper_connector_destroy_state(connector, conn_state);
> > 
> > This looks suspicious. I'd suggest storing tmds_char_rate to struct
> > dw_hdmi_qp in .atomic_commit instead of playing with the state.
> 
> It is destroyed because it was duplicated above. I could store the value in 
> .atomic_enable (is that what you meant ?) indeed.

Yes, please. It's better than playing with the state.

> 
> > > +
> > > +	if (connector->status != connector_status_connected) {
> > > +		dev_dbg(hdmi->dev, "connector status is not connected\n");
> > > +		return 0;
> > > +	}
> > > +
> > > +	if (fmt->bit_clk_provider | fmt->frame_clk_provider) {
> > > +		dev_err(hdmi->dev, "unsupported clock settings\n");
> > > +		return -EINVAL;
> > > +	}
> > > +
> > > +	if (fmt->bit_fmt == SNDRV_PCM_FORMAT_IEC958_SUBFRAME_LE)
> > > +		ref2stream = true;
> > > +
> > > +	dw_hdmi_qp_set_audio_interface(hdmi, fmt, hparms);
> > > +	dw_hdmi_qp_set_sample_rate(hdmi, tmds_char_rate, hparms-
> >sample_rate);
> > > +	dw_hdmi_qp_set_channel_status(hdmi, hparms->iec.status, ref2stream);
> > > +	drm_atomic_helper_connector_hdmi_update_audio_infoframe(connector,
> > > &hparms->cea); +
> > > +	return 0;
> > > +}
> > > +
> > > +static void dw_hdmi_qp_audio_disable(struct drm_connector *connector,
> > > +			      struct drm_bridge *bridge)
> > > +{
> > > +	struct dw_hdmi_qp *hdmi = container_of(bridge, struct dw_hdmi_qp,
> > > bridge); +
> > > +	if (connector->status != connector_status_connected) {
> > > +		dev_dbg(hdmi->dev, "connector status is not connected\n");
> > > +		return;
> > > +	}
> > 
> > Will audio stream be disabled on disconnect?
> 
> No, indeed, I need to review the disconnect sequence, as the HDMI audio 
> registers cannot be accessed when the VOP has been disabled.

:-)

Please note that we are sending the 'disconnected' even only when the
monitor actually gets disconnected, but you might need to perform
housekeeping in .atomic_disable().

> 
> > And anyway the InfoFrame should be cleared by a call to
> > drm_atomic_helper_connector_hdmi_clear_audio_infoframe().
> > 
> > > +
> > > +	/*
> > > +	 * Keep ACR, AUDI, AUDS packet always on to make SINK device
> > > +	 * active for better compatibility and user experience.
> > > +	 *
> > > +	 * This also fix POP sound on some SINK devices which wakeup
> > > +	 * from suspend to active.
> > > +	 */
> > > +	dw_hdmi_qp_mod(hdmi, I2S_BPCUV_RCV_DIS, I2S_BPCUV_RCV_MSK,
> > > +		  AUDIO_INTERFACE_CONFIG0);
> > > +	dw_hdmi_qp_mod(hdmi, AUDPKT_PBIT_FORCE_EN | AUDPKT_CHSTATUS_OVR_EN,
> > > +		  AUDPKT_PBIT_FORCE_EN_MASK | AUDPKT_CHSTATUS_OVR_EN_MASK,
> > > +		  AUDPKT_CONTROL0);
> > > +
> > > +	dw_hdmi_qp_mod(hdmi, AVP_DATAPATH_PACKET_AUDIO_SWDISABLE,
> > > +		  AVP_DATAPATH_PACKET_AUDIO_SWDISABLE, GLOBAL_SWDISABLE);
> > > +}
> > > +
> > > 
> > >  static int dw_hdmi_qp_i2c_read(struct dw_hdmi_qp *hdmi,
> > >  
> > >  			       unsigned char *buf, unsigned int length)
> > >  
> > >  {
> > > 
> > > @@ -361,6 +741,40 @@ static int dw_hdmi_qp_config_drm_infoframe(struct
> > > dw_hdmi_qp *hdmi,> 
> > >  	return 0;
> > >  
> > >  }
> > > 
> > > +static int dw_hdmi_qp_config_audio_infoframe(struct dw_hdmi_qp *hdmi,
> > > +					     const u8 *buffer, size_t 
> len)
> > > +{
> > > +	/*
> > > +	 * AUDI_CONTENTS0: { RSV, HB2, HB1, RSV }
> > > +	 * AUDI_CONTENTS1: { PB3, PB2, PB1, PB0 }
> > > +	 * AUDI_CONTENTS2: { PB7, PB6, PB5, PB4 }
> > > +	 *
> > > +	 * PB0: CheckSum
> > > +	 * PB1: | CT3    | CT2  | CT1  | CT0  | F13  | CC2 | CC1 | CC0 |
> > > +	 * PB2: | F27    | F26  | F25  | SF2  | SF1  | SF0 | SS1 | SS0 |
> > > +	 * PB3: | F37    | F36  | F35  | F34  | F33  | F32 | F31 | F30 |
> > > +	 * PB4: | CA7    | CA6  | CA5  | CA4  | CA3  | CA2 | CA1 | CA0 |
> > > +	 * PB5: | DM_INH | LSV3 | LSV2 | LSV1 | LSV0 | F52 | F51 | F50 |
> > > +	 * PB6~PB10: Reserved
> > > +	 *
> > > +	 * AUDI_CONTENTS0 default value defined by HDMI specification,
> > > +	 * and shall only be changed for debug purposes.
> > > +	 * So, we only configure payload byte from PB0~PB7(2 word total).
> > > +	 */
> > > +	regmap_bulk_write(hdmi->regm, PKT_AUDI_CONTENTS1, &buffer[3], 2);
> > 
> > Please also update PKT_AUDI_CONTENTS0, in case it gets damaged somehow.
> 
> These are simply the values in the first 4 bytes of buffer then ?
> 
> > > +
> > > +	/* Enable ACR, AUDI, AMD */
> > > +	dw_hdmi_qp_mod(hdmi,
> > > +		  PKTSCHED_ACR_TX_EN | PKTSCHED_AUDI_TX_EN | 
> PKTSCHED_AMD_TX_EN,
> > > +		  PKTSCHED_ACR_TX_EN | PKTSCHED_AUDI_TX_EN | 
> PKTSCHED_AMD_TX_EN,
> > > +		  PKTSCHED_PKT_EN);
> > > +
> > > +	/* Enable AUDS */
> > > +	dw_hdmi_qp_mod(hdmi, PKTSCHED_AUDS_TX_EN, PKTSCHED_AUDS_TX_EN,
> > > PKTSCHED_PKT_EN); +
> > > +	return 0;
> > > +}
> > > +
> > > 
> > >  static void dw_hdmi_qp_bridge_atomic_enable(struct drm_bridge *bridge,
> > >  
> > >  					    struct drm_bridge_state 
> *old_state)
> > >  
> > >  {
> > > 
> > > @@ -477,6 +891,9 @@ static int dw_hdmi_qp_bridge_write_infoframe(struct
> > > drm_bridge *bridge,> 
> > >  	case HDMI_INFOFRAME_TYPE_DRM:
> > >  		return dw_hdmi_qp_config_drm_infoframe(hdmi, buffer, len);
> > > 
> > > +	case HDMI_INFOFRAME_TYPE_AUDIO:
> > > +		return dw_hdmi_qp_config_audio_infoframe(hdmi, buffer, len);
> > > +
> > > 
> > >  	default:
> > >  		dev_dbg(hdmi->dev, "Unsupported infoframe type %x\n", 
> type);
> > >  		return 0;
> > > 
> > > @@ -494,6 +911,9 @@ static const struct drm_bridge_funcs
> > > dw_hdmi_qp_bridge_funcs = {> 
> > >  	.hdmi_tmds_char_rate_valid = 
> dw_hdmi_qp_bridge_tmds_char_rate_valid,
> > >  	.hdmi_clear_infoframe = dw_hdmi_qp_bridge_clear_infoframe,
> > >  	.hdmi_write_infoframe = dw_hdmi_qp_bridge_write_infoframe,
> > > 
> > > +	.hdmi_audio_startup = dw_hdmi_qp_audio_enable,
> > > +	.hdmi_audio_shutdown = dw_hdmi_qp_audio_disable,
> > > +	.hdmi_audio_prepare = dw_hdmi_qp_audio_prepare,
> > > 
> > >  };
> > >  
> > >  static irqreturn_t dw_hdmi_qp_main_hardirq(int irq, void *dev_id)
> > > 
> > > @@ -603,6 +1023,10 @@ struct dw_hdmi_qp *dw_hdmi_qp_bind(struct
> > > platform_device *pdev,> 
> > >  	if (IS_ERR(hdmi->bridge.ddc))
> > >  	
> > >  		return ERR_CAST(hdmi->bridge.ddc);
> > > 
> > > +	hdmi->bridge.hdmi_audio_max_i2s_playback_channels = 8;
> > > +	hdmi->bridge.hdmi_audio_dev = dev;
> > > +	hdmi->bridge.hdmi_audio_dai_port = 1;
> > > +
> > > 
> > >  	ret = devm_drm_bridge_add(dev, &hdmi->bridge);
> > >  	if (ret)
> > >  	
> > >  		return ERR_PTR(ret);
> 
> Regards,
> 
> Detlev.
> 
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
