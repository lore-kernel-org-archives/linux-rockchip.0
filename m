Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B21A2C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 21:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vap/RObWJ9zJ7YtVsr0uydwAx2qEg9YPsGBsUK8+6WM=; b=D/rYn0iSKyOq/4
	AecTUl9wG58rIiNj2pa60dGMLI9fdWK3UBWg59lQkQFnpdZruSPqtFCls7S+bDmtRcpWC/nUD0a3w
	JLmGGs5F4ceJ84RZovqD3EoQeoCCR6VNYq3Q9kC083HfvppeRAfoLcyVVjqTit2HMMY/crUZSEd3c
	QaqDkQ59TB0pRHwLWfcSn68dMfry01tejlhfG0o9C12sdXT6m/kDGW9qpRu+M/y9LkHjZOrWvoAXE
	+if/K6wwlGmUWPVV8IxSjsBREP9MJlhFb5IP4K87EgeVx8l53TFfAzUb80AucgVQo9alSkef2nDng
	9knV6yzFXUishFr6weHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2JC7-0098jE-5A; Fri, 17 Jun 2022 21:07:55 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2Irk-0092AE-3N
	for linux-rockchip@lists.infradead.org; Fri, 17 Jun 2022 20:46:53 +0000
Received: by mail-pg1-x52d.google.com with SMTP id f65so4967200pgc.7
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Jun 2022 13:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=GXaclX1FL0h8CGb7nidVOvl5KYslHnP1qP5vHuFEg/o=;
        b=lSFDDXp8fJxd3k1/NPPifUGgBLPdaE22CTJKPLAyp43SGjKFomXAGiePTZ42BlIrJh
         odqD9O7PRMXQHJrgctB/Y5S4MWjuJgaJD8WmZ8sebu3eFFWTXjdDxTbzEMVwKQUMkU4q
         U6exfnONG79nydNKJedyEQ72Xcs+9MEgrbF4s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=GXaclX1FL0h8CGb7nidVOvl5KYslHnP1qP5vHuFEg/o=;
        b=fzv5TPoxKai7Yo00bgSPBXOc6eTLWWZXPWgYt/jUB/fI91VdE55u2HCpYn6i6RyBsq
         udmLzie4f1VlpsROqxbd4rSSNZ68Itbn1fFsafMyUVcOO7R2EDptrPV6JZ/HFXW9DxIl
         b9Zc5H51GvTghcHKGRE92aRxgfQhl98fViFZEUTByZu5i+gYvpCjhPiRfA9LICBJz1rU
         3vaa68R4JW19PlAs/i4CgH7XB/lRTucL9Qi53/fTRO0q+rLy1UU8Ol5hxhBoD0HCe0NY
         MIC3UKhsYi2tV0bZwPJriZdGh7MV4mtMVqCRyanxrzM+VLLcSqQgYlpwUKTzIOFvD8F5
         Qhkw==
X-Gm-Message-State: AJIora+UGQiTgsysmqGY+8OPjJ5m0DWpmUYWqDWyQ2TdSX5jzyHZrlVv
	V7HEqROs85++yztJ7Oc2YMtanw==
X-Google-Smtp-Source: AGRyM1tK3U/ZG9n4Mvxa/4Mm4J4wxTavnLkXJYks8NkYt9StAA0o/gzzGm6jYf7ZHj2JUirJCeCBHg==
X-Received: by 2002:a05:6a00:b8c:b0:51c:2d3d:4595 with SMTP id g12-20020a056a000b8c00b0051c2d3d4595mr11829256pfj.80.1655498809321;
        Fri, 17 Jun 2022 13:46:49 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:6844:cedc:a28c:44b2])
        by smtp.gmail.com with ESMTPSA id p7-20020a17090a428700b001e2f383110bsm5904549pjg.11.2022.06.17.13.46.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 13:46:48 -0700 (PDT)
Date: Fri, 17 Jun 2022 13:46:46 -0700
From: Brian Norris <briannorris@chromium.org>
To: Judy Hsiao <judyhsiao@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, Chen-Yu Tsai <wenst@chromium.org>,
	alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/3] ASoC: rockchip: i2s: switch BCLK to GPIO
Message-ID: <YqzoNqd3Mpv3r2tS@google.com>
References: <20220616155836.3401420-1-judyhsiao@chromium.org>
 <20220617044251.4029697-1-judyhsiao@chromium.org>
 <20220617044251.4029697-2-judyhsiao@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220617044251.4029697-2-judyhsiao@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_134652_208032_AEB5CE5C 
X-CRM114-Status: GOOD (  27.29  )
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

Hi,

On Fri, Jun 17, 2022 at 04:42:49AM +0000, Judy Hsiao wrote:
> We discovered that the state of BCLK on, LRCLK off and SD_MODE on
> may cause the speaker melting issue. Removing LRCLK while BCLK
> is present can cause unexpected output behavior including a large
> DC output voltage as described in the Max98357a datasheet.
> 
> In order to:
>   1. prevent BCLK from turning on by other component.
>   2. keep BCLK and LRCLK being present at the same time
> 
> This patch switches BCLK to GPIO func before LRCLK output, and
> configures BCLK func back during LRCLK is output.
> 
> Without this fix, BCLK is turned on 11 ms earlier than LRCK by the
> da7219.
> With this fix, BCLK is turned on only 0.4 ms earlier than LRCK by
> the rockchip codec.
> 
> Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
> ---
>  sound/soc/rockchip/rockchip_i2s.c | 167 ++++++++++++++++++++++--------
>  1 file changed, 121 insertions(+), 46 deletions(-)
> 
> diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
> index 47a3971a9ce1..5e3cb06377a1 100644
> --- a/sound/soc/rockchip/rockchip_i2s.c
> +++ b/sound/soc/rockchip/rockchip_i2s.c

> @@ -92,39 +122,46 @@ static inline struct rk_i2s_dev *to_info(struct snd_soc_dai *dai)
>  	return snd_soc_dai_get_drvdata(dai);
>  }
>  
> -static void rockchip_snd_txctrl(struct rk_i2s_dev *i2s, int on)
> +static int rockchip_snd_txctrl(struct rk_i2s_dev *i2s, int on)
>  {
>  	unsigned int val = 0;
>  	int retry = 10;
> -
> +	int ret = 0;
> +
>  	spin_lock(&i2s->lock);
>  	if (on) {
> -		regmap_update_bits(i2s->regmap, I2S_DMACR,
> -				   I2S_DMACR_TDE_ENABLE, I2S_DMACR_TDE_ENABLE);
> -
> -		regmap_update_bits(i2s->regmap, I2S_XFER,
> -				   I2S_XFER_TXS_START | I2S_XFER_RXS_START,
> -				   I2S_XFER_TXS_START | I2S_XFER_RXS_START);
> -
> +		ret = regmap_update_bits(i2s->regmap, I2S_DMACR,
> +			I2S_DMACR_TDE_ENABLE, I2S_DMACR_TDE_ENABLE);
> +		if (ret < 0)
> +			goto end;
> +		ret = regmap_update_bits(i2s->regmap, I2S_XFER,
> +			I2S_XFER_TXS_START | I2S_XFER_RXS_START,
> +			I2S_XFER_TXS_START | I2S_XFER_RXS_START);

This still isn't how I'd expect the indentation to look, but I think I
will stop complaining about whitespace. Maybe you can either use
'clang-format' (sparingly), or else see what Mark thinks.

> +		if (ret < 0)
> +			goto end;
>  		i2s->tx_start = true;
>  	} else {
>  		i2s->tx_start = false;
>  
...

>  static void rockchip_snd_rxctrl(struct rk_i2s_dev *i2s, int on)

I didn't think I needed to call this out, because you already got build
bots complaining about this, but...
...did you even compile-test this? You should be making this function
return 'int', not 'void', because you're adding return values below.

>  {
>  	unsigned int val = 0;
>  	int retry = 10;
> +	int ret = 0;
>  
...
> +end:
>  	spin_unlock(&i2s->lock);
> +	if (ret < 0)
> +		dev_err(i2s->dev, "lrclk update failed\n");
> +
> +	return ret;

^^ here.

>  }
>  
>  static int rockchip_i2s_set_fmt(struct snd_soc_dai *cpu_dai,

Aside from those, I think this looks OK to the best of my
(not-very-familiar with sounds/soc/) ability:

Reviewed-by: Brian Norris <briannorris@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
