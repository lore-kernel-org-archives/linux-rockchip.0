Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B92BC48285
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jan 2024 08:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:From:MIME-Version:Date:Message-ID:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TFVCyZNXJFDOANKxjMa0ZsZNc6uTJe2aRUguUDxn3ds=; b=EzRUedJnFmQbKq
	sxXBlpZ9Ai9lXl/poZYbc9RFV7B3177oLOuYbgs3gkd398KSIL4/JqP1AqyI/mcFcYFnVxxoTnf2/
	54a+djVvVtlTCR5J+0wr76UGFqWyiPHbMjTML48uhCWsKT6l13BFfILbQu/0gpRU07XF53T6HzXpj
	M3Er0Rlii5BjMz5/7Z3X44ekttmQKm8+gjBpo2ZPCNTMv4xT155AJgyrULZQj0QgayTzcJ0hLzYW9
	WRfTeekMjhEukHcH/AILhky+1cIQ8/TOcJ7nxAXgquUKb633JCZX4siM7SX2rh1U7RMvwHA3a3bH9
	9eZ7Ts8imHundhD3uI/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV5ul-000000025u1-3v9v;
	Wed, 31 Jan 2024 08:25:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV5uk-000000025tC-3GHk
	for linux-rockchip@bombadil.infradead.org;
	Wed, 31 Jan 2024 08:25:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:To:Subject:From:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=rkiPQ+vOkP3pPhh8RuMV3hwh/H18RvxP+fhLOMlLZPM=; b=CdA1Nh8oVMoFZPK7HhLKC/9QSd
	3pmqG7xTH2GDopm/h/jRl7kc5q6OiK/HTa65HiILSyY5AOtz19n2T4mAKGxDpS1noq7qIxcxM93o7
	gQ19fe05lFCFFXauUMbOVwQfiCK3Q8jvYkPyg9H0Fyb4y4rM2oH6fC6WepaF5ISxa2FWjsFiPq8mw
	zWEz1106/H3vj9NziBNJd8xokLqPt4sljBBYwflNyGUANqu9EDA3ziyN563DHRToNi8Z+bOwTVKx7
	g+1N4L8KwspkVxV3Y+s2GJi4PDzyJUKAQBSiz1PRHI7vkjTVrfTxmunBE3RSndmDx5m1f7e+YK0O8
	Kjz22q6g==;
Received: from smtp.ivitera.com ([88.101.85.59])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV5uh-00000008oyS-16Is
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Jan 2024 08:25:45 +0000
Received: from localhost (localhost [127.0.0.1])
	by smtp.ivitera.com (Postfix) with ESMTP id EF9CD12B61;
	Wed, 31 Jan 2024 09:25:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ivitera.com; s=mail;
	t=1706689541; bh=tO5NhoozagSwjbc+fk1Ghjoe/kzNdbky8cAkoNrTrmU=;
	h=Date:From:Subject:To:From;
	b=jY2FI1gyYFKufrIm7PXyrU/kbWHq2tRJYv6nNtjERTTapmaJ1XTmMVyJqfT2+MPP2
	 Cvh/kuLNKDZlQLiDbRrP6W8zA8LTrzNiZlvc2WFiVU2eOrpnjDyKytKQ2ormtPNaA0
	 BQOKMvh2X07lwN5+AUicdnqf+nY2w0hf86a1tb9E=
Received: from smtp.ivitera.com ([127.0.0.1])
	by localhost (localhost [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DMoe5ph4yUJn; Wed, 31 Jan 2024 09:25:41 +0100 (CET)
Received: from [192.168.105.22] (dustin.pilsfree.net [81.201.58.138])
	(Authenticated sender: pavel)
	by smtp.ivitera.com (Postfix) with ESMTPSA id 7840D12B5F;
	Wed, 31 Jan 2024 09:25:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ivitera.com; s=mail;
	t=1706689541; bh=tO5NhoozagSwjbc+fk1Ghjoe/kzNdbky8cAkoNrTrmU=;
	h=Date:From:Subject:To:From;
	b=jY2FI1gyYFKufrIm7PXyrU/kbWHq2tRJYv6nNtjERTTapmaJ1XTmMVyJqfT2+MPP2
	 Cvh/kuLNKDZlQLiDbRrP6W8zA8LTrzNiZlvc2WFiVU2eOrpnjDyKytKQ2ormtPNaA0
	 BQOKMvh2X07lwN5+AUicdnqf+nY2w0hf86a1tb9E=
Message-ID: <c590ff6e-e57e-a7f7-e47d-2e14261a782c@ivitera.com>
Date: Wed, 31 Jan 2024 09:25:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
From: Pavel Hofman <pavel.hofman@ivitera.com>
Subject: ASoC: rockchip_i2s_tdm calibration clocking problem
To: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 linux-rockchip@lists.infradead.org,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_082543_551258_37DAF2A9 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

I am hitting a clock issue with rockchip_i2s_tdm.c + simple-audio-card 
(+ RK3308).

At boot the mclk clk_i2s0_8ch_tx is (somehow) initialized to some 
(unimportant?) value 50176000 Hz. Note that this frequency is not 
multiple of either 48kHz or 44.1kHz.

Method asoc_simple_parse_clk() reads this value and sets it to 
simple_dai->sysclk.

Subsequently at asoc_simple_dai_init this "random" initial value is 
stored to i2s_tdm->mclk_tx_freq:

    17.839330]  rockchip_i2s_tdm_set_sysclk+0x50/0xbc 
[snd_soc_rockchip_i2s_tdm]
[   17.839367]  snd_soc_dai_set_sysclk+0x38/0xb8 [snd_soc_core]
[   17.839596]  asoc_simple_init_dai+0x94/0xc0 [snd_soc_simple_card_utils]
[   17.839640]  asoc_simple_dai_init+0x130/0x230 [snd_soc_simple_card_utils]
[   17.839672]  snd_soc_link_init+0x28/0x90 [snd_soc_core]
[   17.839843]  snd_soc_bind_card+0x60c/0xbb4 [snd_soc_core]


When starting playback, called by rockchip_i2s_tdm_hw_params(), 
rockchip_i2s_tdm_calibrate_mclk() correctly switches parent of 
mclk_parent to correct root pll clock mclk_root0/1 for the given 
samplerate and correctly configures mclk_parent frequency.

https://github.com/torvalds/linux/blob/master/sound/soc/rockchip/rockchip_i2s_tdm.c#L862-L864

But right after that, the next line of rockchip_i2s_tdm_hw_params() 
calls rockchip_i2s_tdm_set_mclk()

https://github.com/torvalds/linux/blob/master/sound/soc/rockchip/rockchip_i2s_tdm.c#L866C9-L866C34

This method calls clk_set_rate(i2s_tdm->mclk_tx, i2s_tdm->mclk_tx_freq), 
which resets the clock and its parental chain to the original incorrect 
value stored in i2s_tdm->mclk_tx_freq from the dai initialization.

https://github.com/torvalds/linux/blob/master/sound/soc/rockchip/rockchip_i2s_tdm.c#L693

As a result, no matter what sample rate is being played, the i2s mclk 
clock always ends up configured incorrectly.


DTS I2S sets all clocks, therefore the clk calibration in 
rockchip_i2s_tdm.c should be (and is) used:

	i2s_8ch_0: i2s@ff300000 {
		compatible = "rockchip,rk3308-i2s-tdm";
		reg = <0x0 0xff300000 0x0 0x1000>;
		interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
		clocks = <&cru SCLK_I2S0_8CH_TX>, <&cru SCLK_I2S0_8CH_RX>, <&cru 
HCLK_I2S0_8CH>,
			 <&cru SCLK_I2S0_8CH_TX_SRC>,
			 <&cru SCLK_I2S0_8CH_RX_SRC>,
			 <&cru PLL_VPLL0>,
			 <&cru PLL_VPLL1>;
		clock-names = "mclk_tx", "mclk_rx", "hclk",
			      "mclk_tx_src", "mclk_rx_src",
			      "mclk_root0", "mclk_root1";
		.........


It seems to me that the calibration code should also rewrite the 
initially incorrect i2s_tdm->mclk_tx_freq and i2s_tdm->mclk_rx_freq with 
correct values corresponding to the momentary hw_params rate, or maybe 
rockchip_i2s_tdm_set_mclk() should not be called if 
rockchip_i2s_tdm_calibrate_mclk() is called a line above (i.e. putting 
the call to rockchip_i2s_tdm_set_mclk() into "else" branch).

Thank you very much for help.

With regards,

Pavel.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
