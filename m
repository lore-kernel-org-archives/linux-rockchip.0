Return-Path: <SRS0=s7m+=NO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81A37C4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 11:47:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 383E76124B
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 11:47:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 383E76124B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5djfC1B/E/vWIOpIwI+48Yvu/nFCIly8tiHiT2PZe80=; b=bOqBFX5EgUzowU
	JxiIXlMdQ9XVCDdpa7d6Fl/qBxNrdU+BOAIHl0XUwy3+M8ZrkGEZtwzWZfQH8ARngvG4Vtb5cqfhA
	p+loFFf+tKkreKRUzajhRgujXZ4zciYA4OKXFtQJnXScPRl+eAbjGnII0yurkRR+1NRf22VdWtRuv
	cXy4pWwVS3JpDx9Tb19MhHtTz2TTq3JHeyXNNCAaGRvzgt58/ZdMQ3egcr0g9h+n5/w45KpV7058b
	u2X+6fRwqSZq22ds0cVNn/cIlZKL8cW2tNVvABhc+X8TWIMXjG1ZOEENrBx3lA7qFYdAbpvmlUW2a
	eoe5faO6LDDB47kDAWpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mI8Qa-00GdAV-8C; Mon, 23 Aug 2021 11:47:44 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mI8QY-00Gd9x-4c
 for linux-rockchip@lists.infradead.org; Mon, 23 Aug 2021 11:47:43 +0000
Received: by mail-ej1-x632.google.com with SMTP id ia27so14200799ejc.10
 for <linux-rockchip@lists.infradead.org>; Mon, 23 Aug 2021 04:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ezqz/YZ4v8agvdP2PNXV+lxyv+cSGxnn3vahduKVN5I=;
 b=ma5wPmkW+UOi21JMekl171tsI69re5OcW3KT0PqfQX8VI1chCRdA1a4PevkFQiOEov
 km6dvOezAaD0VIx64Qn/zfzCONvOWdn2WCkxWRT418HmV2yrrlGuo2E3Wdk91etXrafY
 mULXlswPb3tej3kLGdsahRbj5pBckifBiOa+86nHlEfvKOUln1A+JNEGlnW0N1FOL92B
 t6Stz97hGL3OQc8rtU0aeZVP305/D1WyUwQodDu3Xy/pFVDVXM5feA5ZevqUUGId/Fdk
 vI6gSl22db0PbWLwrKSViOG7yKfutx3Vzu2CET5aBOKUc0yTI8pG/1qplhTJE8y1k//z
 jbYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ezqz/YZ4v8agvdP2PNXV+lxyv+cSGxnn3vahduKVN5I=;
 b=p0s6F9Di2kZi0d2hhV+aQSHGdQm9Sa3Xr1n+XEheR94XDwSZx227kCglpClim30S/P
 HQAZz3Y6nxZH2Dp74jJBNFcYVEwu7l2cJ46AL9P5Ff0857fe1ENS+Fp6xGb+K5m6XP+F
 4i5XGWqTRo+c9YEicls8OjYJzN2YXkKOaQYE76hLpo1wZOn0dNJXIQw7uMFxQc/v0QLX
 SI8kZJ/p1ap6g7cOmpNyw2J0cp5x597SSAqyZdqtKJPZDLjhgjMvgrxIKcQocACbQWEo
 aZQzWT13PstRe22WXOEVTDXyymMF0KEMjlNfjR3Vod36rm9dk5I4S5rqr0H4UxLovO8C
 FNyg==
X-Gm-Message-State: AOAM530EWhRqc6vg65OYZUQXi3TDuuGB/CprZ7M5xghrf2gX2CghMipn
 CrWBN/qfBq6lxjVkYg29gDo=
X-Google-Smtp-Source: ABdhPJx+r7o0HYhdpeTJUZ2wMD3P2agjqveaY94HicMnPc+KFZZP53o3fcYc0CwMCu4H/H/WE7gxXw==
X-Received: by 2002:a17:906:3fd7:: with SMTP id
 k23mr35128685ejj.176.1629719259693; 
 Mon, 23 Aug 2021 04:47:39 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id cb4sm7192143ejb.72.2021.08.23.04.47.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Aug 2021 04:47:39 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: broonie@kernel.org, heiko@sntech.de, linux-rockchip@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Xing Zheng <zhengxing@rock-chips.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: Re: [PATCH 14/15] ASoC: rockchip: i2s: Add support for 'rockchip,
 clk-trcm' property
Date: Mon, 23 Aug 2021 13:47:28 +0200
Message-ID: <5017702.Vq9jUBFu5T@archbook>
In-Reply-To: <1629716076-21465-5-git-send-email-sugar.zhang@rock-chips.com>
References: <1629715710-21137-1-git-send-email-sugar.zhang@rock-chips.com>
 <1629716076-21465-5-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_044742_242802_3B7095B5 
X-CRM114-Status: GOOD (  27.94  )
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

On Montag, 23. August 2021 12:54:35 CEST Sugar Zhang wrote:
> From: Xing Zheng <zhengxing@rock-chips.com>
> 
> If there is only one lrck (tx or rx) by hardware, we need to
> use 'rockchip,clk-trcm' to specify which lrck can be used.
> 
> Change-Id: I3bf8d87a6bc8c45e183040012d87d8be21a4c133
> Signed-off-by: Xing Zheng <zhengxing@rock-chips.com>
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
>  sound/soc/rockchip/rockchip_i2s.c | 22 +++++++++++++---------
>  1 file changed, 13 insertions(+), 9 deletions(-)
> 
> diff --git a/sound/soc/rockchip/rockchip_i2s.c
> b/sound/soc/rockchip/rockchip_i2s.c index 6ccb62e..b9d9c88 100644
> --- a/sound/soc/rockchip/rockchip_i2s.c
> +++ b/sound/soc/rockchip/rockchip_i2s.c
> @@ -54,6 +54,7 @@ struct rk_i2s_dev {
>  	bool is_master_mode;
>  	const struct rk_i2s_pins *pins;
>  	unsigned int bclk_ratio;
> +	unsigned int clk_trcm;
>  };
> 
>  /* tx/rx ctrl lock */
> @@ -321,7 +322,6 @@ static int rockchip_i2s_hw_params(struct
> snd_pcm_substream *substream, struct snd_soc_dai *dai)
>  {
>  	struct rk_i2s_dev *i2s = to_info(dai);
> -	struct snd_soc_pcm_runtime *rtd = asoc_substream_to_rtd(substream);
>  	unsigned int val = 0;
>  	unsigned int mclk_rate, bclk_rate, div_bclk, div_lrck;
> 
> @@ -421,13 +421,6 @@ static int rockchip_i2s_hw_params(struct
> snd_pcm_substream *substream, regmap_update_bits(i2s->regmap, I2S_DMACR,
> I2S_DMACR_RDL_MASK,
>  			   I2S_DMACR_RDL(16));
> 
> -	val = I2S_CKR_TRCM_TXRX;
> -	if (dai->driver->symmetric_rate && rtd->dai_link->symmetric_rate)
> -		val = I2S_CKR_TRCM_TXONLY;
> -
> -	regmap_update_bits(i2s->regmap, I2S_CKR,
> -			   I2S_CKR_TRCM_MASK,
> -			   val);
>  	return 0;
>  }
> 
> @@ -531,7 +524,6 @@ static struct snd_soc_dai_driver rockchip_i2s_dai = {
>  			    SNDRV_PCM_FMTBIT_S32_LE),
>  	},
>  	.ops = &rockchip_i2s_dai_ops,
> -	.symmetric_rate = 1,
>  };
> 
>  static const struct snd_soc_component_driver rockchip_i2s_component = {
> @@ -750,6 +742,18 @@ static int rockchip_i2s_probe(struct platform_device
> *pdev) else if (of_property_read_bool(node, "rockchip,capture-only"))
>  		soc_dai->playback.channels_min = 0;
> 
> +	i2s->clk_trcm = I2S_CKR_TRCM_TXRX;
> +	if (!of_property_read_u32(node, "rockchip,clk-trcm", &val)) {
> +		if (val >= 0 && val <= 2) {
> +			i2s->clk_trcm = val << I2S_CKR_TRCM_SHIFT;
> +			if (i2s->clk_trcm)
> +				soc_dai->symmetric_rate = 1;
> +		}
> +	}
> +
> +	regmap_update_bits(i2s->regmap, I2S_CKR,
> +			   I2S_CKR_TRCM_MASK, i2s->clk_trcm);
> +
>  	ret = devm_snd_soc_register_component(&pdev->dev,
>  					      &rockchip_i2s_component,
>  					      soc_dai, 1);

Hello,

I recommend doing the same thing with clk-trcm that I'm going to do in v3 of 
my i2s-tdm driver, as per Robin Murphy's suggestion:

Have tx-only and rx-only be two boolean properties. I named them
rockchip,trcm-sync-tx-only and rockchip,trcm-sync-rx-only.

I also recommend only shifting the value when writing it to registers, and
storing it in its unshifted state for debug reasons.

My probe function looks like this:

	i2s_tdm->clk_trcm = TRCM_TXRX;
	if (of_property_read_bool(node, "rockchip,trcm-sync-tx-only"))
		i2s_tdm->clk_trcm = TRCM_TX;
	if (of_property_read_bool(node, "rockchip,trcm-sync-rx-only")) {
		if (i2s_tdm->clk_trcm) {
			dev_err(i2s_tdm->dev, "invalid trcm-sync 
configuration\n");
			return -EINVAL;
		}
		i2s_tdm->clk_trcm = TRCM_RX;
	}
	if (i2s_tdm->clk_trcm != TRCM_TXRX)
		i2s_tdm_dai.symmetric_rate = 1;

When writing clk_trcm to a register, I then just do:

	regmap_update_bits(i2s_tdm->regmap, I2S_CKR, I2S_CKR_TRCM_MASK,
			   i2s_tdm->clk_trcm << I2S_CKR_TRCM_SHIFT);

This way if I need to add an error message or debug print somewhere, then 
clk_trcm is still either 0, 1 or 2.

In general, we should look into supporting both i2s and i2s-tdm controllers in 
the same driver if possible. This way we don't need to duplicate work like 
this. Do you think this is feasible to do? When I looked at the register maps 
I saw that the bits I2S/TDM uses were reserved in the I2S version of the 
controller, so I think it should work.

Regards,
Nicolas Frattaroli



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
