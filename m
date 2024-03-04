Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8622FC5478C
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Mar 2024 12:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UmW6EFurZ+S3sBYYzEbG8RreaDY+mvFFwMb+kSx7Dxg=; b=ZCajR3UrL5TW+Q
	ljVef2zVwdwcxSAeJJs9Ki5pTw6x9syUfLwdGzsyHj3but4C1Tpnsv/nupEhHezCpNsAS0b9rPAL2
	LMv5J71UcvWz9Vp6ADEZngnD08tSysACYqthm7akRCwFahpk/hzH7XioH9k5kkrAdUeerUGjNf4BJ
	hL7kH5Z70JuoxRFi3pGhESsEeRBh0YN+pUQ5BlLqcMtQUavILUnt0CJUMc8Cv5qR/m8s1u5ROldJO
	Kbh8gB77iAe5vmffT3RIHcvoH3HTp9B2rNr9w2vzjjO4WLLaZhFwKAZaqQVA3+pB8JkKezTNPbshe
	g8JGX/mEPs5+pEFSj/Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh7fT-0000000921O-34HX;
	Mon, 04 Mar 2024 12:43:43 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh7fP-0000000920k-0z3O
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Mar 2024 12:43:41 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 9D4871BF206;
	Mon,  4 Mar 2024 12:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1709556211;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=r8fiNaO/LNk/DNM1VzAkgWp6ITdQul2gPeq1Y3bECeA=;
	b=l+rYMq8i1ZrXDZ7j4GG6hUKWiUTz4c2OxZ0Zh7RL7eZt20IUrzua9sbb3jjWrOYm8H/f8J
	mxMqzOBB7VieWoXLAe1deacN3F2kQ95WeCmmIBniEaRCZAyoW7Fz33Vvkf1R0RNgQfsvVB
	PnD2374It6Qi2zUVEriuK5Ooh/RKYJ/JtCvvqBclA6K3QIuTNnY/FSmPsH4NLuYCT6hjvJ
	5IAnvIoKynI7xuLdn5zscM05sCKwebKTblF0gmIyR8WApbqnh4IfVHOkWh0ISmSAPrh2o9
	gQhzBVZwSMOi0b0bbJwEeTK3zq/LP6eWCIxacFpI2IlTxh0FCU5uWA6Su1OdNw==
Date: Mon, 4 Mar 2024 13:43:29 +0100
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Pavel Hofman <pavel.hofman@ivitera.com>
Cc: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 linux-rockchip@lists.infradead.org, Nicolas Frattaroli
 <frattaroli.nicolas@gmail.com>, Sugar Zhang <sugar.zhang@rock-chips.com>,
 linux-sound@vger.kernel.org
Subject: Re: ASoC: rockchip_i2s_tdm calibration clocking problem
Message-ID: <20240304134329.392c75bf@booty>
In-Reply-To: <c590ff6e-e57e-a7f7-e47d-2e14261a782c@ivitera.com>
References: <c590ff6e-e57e-a7f7-e47d-2e14261a782c@ivitera.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_044339_755108_520FA876 
X-CRM114-Status: GOOD (  21.89  )
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

Hello Pavel,

On Wed, 31 Jan 2024 09:25:41 +0100
Pavel Hofman <pavel.hofman@ivitera.com> wrote:

> Hi,
> 
> I am hitting a clock issue with rockchip_i2s_tdm.c + simple-audio-card 
> (+ RK3308).
> 
> At boot the mclk clk_i2s0_8ch_tx is (somehow) initialized to some 
> (unimportant?) value 50176000 Hz. Note that this frequency is not 
> multiple of either 48kHz or 44.1kHz.
> 
> Method asoc_simple_parse_clk() reads this value and sets it to 
> simple_dai->sysclk.
> 
> Subsequently at asoc_simple_dai_init this "random" initial value is 
> stored to i2s_tdm->mclk_tx_freq:
> 
>     17.839330]  rockchip_i2s_tdm_set_sysclk+0x50/0xbc 
> [snd_soc_rockchip_i2s_tdm]
> [   17.839367]  snd_soc_dai_set_sysclk+0x38/0xb8 [snd_soc_core]
> [   17.839596]  asoc_simple_init_dai+0x94/0xc0 [snd_soc_simple_card_utils]
> [   17.839640]  asoc_simple_dai_init+0x130/0x230 [snd_soc_simple_card_utils]
> [   17.839672]  snd_soc_link_init+0x28/0x90 [snd_soc_core]
> [   17.839843]  snd_soc_bind_card+0x60c/0xbb4 [snd_soc_core]
> 
> 
> When starting playback, called by rockchip_i2s_tdm_hw_params(), 
> rockchip_i2s_tdm_calibrate_mclk() correctly switches parent of 
> mclk_parent to correct root pll clock mclk_root0/1 for the given 
> samplerate and correctly configures mclk_parent frequency.
> 
> https://github.com/torvalds/linux/blob/master/sound/soc/rockchip/rockchip_i2s_tdm.c#L862-L864
> 
> But right after that, the next line of rockchip_i2s_tdm_hw_params() 
> calls rockchip_i2s_tdm_set_mclk()
> 
> https://github.com/torvalds/linux/blob/master/sound/soc/rockchip/rockchip_i2s_tdm.c#L866C9-L866C34
> 
> This method calls clk_set_rate(i2s_tdm->mclk_tx, i2s_tdm->mclk_tx_freq), 
> which resets the clock and its parental chain to the original incorrect 
> value stored in i2s_tdm->mclk_tx_freq from the dai initialization.
> 
> https://github.com/torvalds/linux/blob/master/sound/soc/rockchip/rockchip_i2s_tdm.c#L693
> 
> As a result, no matter what sample rate is being played, the i2s mclk 
> clock always ends up configured incorrectly.

Thanks for the detailed report. I've also run in the same issue while
working on the RK3308 internal audio codec and your analysis matches my
findings.

> DTS I2S sets all clocks, therefore the clk calibration in 
> rockchip_i2s_tdm.c should be (and is) used:
> 
> 	i2s_8ch_0: i2s@ff300000 {
> 		compatible = "rockchip,rk3308-i2s-tdm";
> 		reg = <0x0 0xff300000 0x0 0x1000>;
> 		interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
> 		clocks = <&cru SCLK_I2S0_8CH_TX>, <&cru SCLK_I2S0_8CH_RX>, <&cru 
> HCLK_I2S0_8CH>,  
> 			 <&cru SCLK_I2S0_8CH_TX_SRC>,
> 			 <&cru SCLK_I2S0_8CH_RX_SRC>,
> 			 <&cru PLL_VPLL0>,
> 			 <&cru PLL_VPLL1>;
> 		clock-names = "mclk_tx", "mclk_rx", "hclk",
> 			      "mclk_tx_src", "mclk_rx_src",
> 			      "mclk_root0", "mclk_root1";
> 		.........
> 
> 
> It seems to me that the calibration code should also rewrite the 
> initially incorrect i2s_tdm->mclk_tx_freq and i2s_tdm->mclk_rx_freq with 
> correct values corresponding to the momentary hw_params rate, or maybe 
> rockchip_i2s_tdm_set_mclk() should not be called if 
> rockchip_i2s_tdm_calibrate_mclk() is called a line above (i.e. putting 
> the call to rockchip_i2s_tdm_set_mclk() into "else" branch).

In my latest v3 series I have implemented a different solution, so
you way want to review and/or test it and give your feedback in that
thread:

https://lore.kernel.org/all/20240221-rk3308-audio-codec-v3-1-dfa34abfcef6@bootlin.com/

Best regards,
Luca

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
