Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 628C7C25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 08:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Awf+fa+cGjd+whswtNyEuIbBWMlDTpj0b6sbF7Q2Tw=; b=B7JgBAAXPNhTB0
	S0V4MOrL5flXGnMmCQz+T2l5M5lhKTAyvPXDhpC//6wejz+O7M/u0X55x8ThRCTOJNpZTDiM02+Mg
	9dkidqXWdcZKETX4LOI0ZWxx8Ufl0FRoIOLS+c7egkBQpTRdZD1zm2j+lrgdikj+I8NuLt8pnLtZZ
	o6bxIVcheEXnTIBQCaLmFAfFuK1Yn7L5Ok0o86SA+y27b0tM5z4r4E/vrI+q3s1be9aqms/lrpqKm
	76vfh/DAaTkvP5ouz7ip37ViqPsWk7RFXGjGzLdrfehS7g1TLJr8wGOUmhbJ6UXXWPgnTvKAn954R
	oyGbjoPHYtN+1rIhMh6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sElm9-000000057jL-3pw4;
	Wed, 05 Jun 2024 08:13:41 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sElm6-000000057i6-0A3D;
	Wed, 05 Jun 2024 08:13:40 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 2689FC0016;
	Wed,  5 Jun 2024 08:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1717575211;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uFaCgtWjGrzAsn767vWcD/AZ37FCocgz3r5B8D9v36Y=;
	b=nmiZY0IqJVyla3CZ2JgyuRmDZxbMw05xiNi+wYbGHMXaSAxpvSS2hy11HSxLlsCebnWt9Q
	wQ1E7ft/nhylODVFhRqZb7R0ejyZyD6hqTzxkMaBI1+2jqvhDgIhEUlLrYwcm/iqSQUzmC
	vrOsXHJqG6wyrRViVInLwpLbOYWEmIUYXPwajZemi2uxxC0QLySLTGSO81+f0i5M4Cm+Ig
	Y96vPo5Ie5Z5cNV6aJn1B2Qe0DBh+XrGHBjjJHnrXUx71m8MgtZEp02pl5xciah1LVA+DM
	1m1QkQfdAgtKjHXPpBBZ5TXj7Ierz60mXKokPUxFlU26rfmP7n7UNo7x7AKukQ==
Date: Wed, 5 Jun 2024 10:13:23 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Alibek Omarov <a1ba.omarov@gmail.com>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Jaroslav Kysela
 <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Heiko Stuebner
 <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ASoC: rockchip: i2s-tdm: Fix trcm mode by setting clock
 on right mclk
Message-ID: <20240605101323.60d7abbc@booty>
In-Reply-To: <20240604184752.697313-1-a1ba.omarov@gmail.com>
References: <20240604184752.697313-1-a1ba.omarov@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_011338_389816_E28233B8 
X-CRM114-Status: GOOD (  20.71  )
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

Hello Alibek,

On Tue,  4 Jun 2024 21:47:52 +0300
Alibek Omarov <a1ba.omarov@gmail.com> wrote:

> When TRCM mode is enabled, I2S RX and TX clocks are synchronized through
> selected clock source. Without this fix BCLK and LRCK might get parented
> to an uninitialized MCLK and the DAI will receive data at wrong pace.
> 
> However, unlike in original i2s-tdm driver, there is no need to manually
> synchronize mclk_rx and mclk_tx, as only one gets used anyway.
> 
> Tested on a board with RK3568 SoC and Silergy SY24145S codec with enabled and
> disabled TRCM mode.
> 
> Fixes: 9e2ab4b18ebd ("ASoC: rockchip: i2s-tdm: Fix inaccurate sampling rates")
> Signed-off-by: Alibek Omarov <a1ba.omarov@gmail.com>
> ---
>  sound/soc/rockchip/rockchip_i2s_tdm.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.c b/sound/soc/rockchip/rockchip_i2s_tdm.c
> index 9fa020ef7eab..ee517d7b5b7b 100644
> --- a/sound/soc/rockchip/rockchip_i2s_tdm.c
> +++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
> @@ -655,8 +655,17 @@ static int rockchip_i2s_tdm_hw_params(struct snd_pcm_substream *substream,
>  	int err;
>  
>  	if (i2s_tdm->is_master_mode) {
> -		struct clk *mclk = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) ?
> -			i2s_tdm->mclk_tx : i2s_tdm->mclk_rx;
> +		struct clk *mclk;
> +
> +		if (i2s_tdm->clk_trcm == TRCM_TX) {
> +			mclk = i2s_tdm->mclk_tx;
> +		} else if (i2s_tdm->clk_trcm == TRCM_RX) {
> +			mclk = i2s_tdm->mclk_rx;
> +		} else if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
> +			mclk = i2s_tdm->mclk_tx;
> +		} else {
> +			mclk = i2s_tdm->mclk_rx;
> +		}

I cannot test right now, but it definitely looks correct.

Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
