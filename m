Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F854C47258
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jan 2024 08:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:From:MIME-Version:Date:Message-ID:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TFVCyZNXJFDOANKxjMa0ZsZNc6uTJe2aRUguUDxn3ds=; b=qWFe6eT5CmWDbK
	KHDdXTJvHSYJmhuzVPHIAuPNsDKwke5VM/Go4KviudiAViyX73h/ssyOjAsT+97MmkScS5Ptnypbs
	KtD+A4dXA4wG7uPwFerQJVD8TGQrkYsIHC7CR9WDcOZxXwESfszej4Rffk++l0vRXWpEMEzTSO1U6
	zVp4eVWzSTJrL99hT0vmSKmQM2908W8VSeEFc3wcNUN2N3NsUMvSGTjia7c0/V50OvuhQFgTk3VSI
	9enM8gp6aETz+6kAzvk73Ex9B7BONIg2Rfb/N/0gHFpSB6wtiyf+BE1jTTES8OG0KSvGO+D7lI4Q8
	PxtPXGh0Or5GKJUHxGhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV5pJ-000000023ug-46vr;
	Wed, 31 Jan 2024 08:20:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV5pI-000000023to-3Pkc
	for linux-rockchip@bombadil.infradead.org;
	Wed, 31 Jan 2024 08:20:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Subject:To:From:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=rkiPQ+vOkP3pPhh8RuMV3hwh/H18RvxP+fhLOMlLZPM=; b=eSnJXdjCN4UOHTSrndjtJTGpXk
	hu5L+SG5YetPW3S2MIuHOTn4ZowMf+Uf+fI+KPXSlNiXA0Fndn3WUkxJIbIib5fqxTI22xrhY/kHB
	2SmjoLIhQur0C4N9E/Zd1A6iz9p3GfWtpbJqfHHeWNxO47bZ9KOkf+OUjhRk8tQDygakslxkdBxXj
	2I3mly7gcBpki3j/vYvCrdbIih0K4zDI+srIRM+qQ4+OKm/noJim1+0PVNHaNIJS6d2Qjb+GGv8KN
	BjC5DVUYzjNtHla1EAIUDN4gwZi1QBquh79IMbJYO4J7Fq7wD2BWJ/PX9iLcadjTxwDqVFE9xLup8
	xl2emgwQ==;
Received: from smtp.ivitera.com ([88.101.85.59])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV5pF-00000008oci-0ttQ
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Jan 2024 08:20:07 +0000
Received: from localhost (localhost [127.0.0.1])
	by smtp.ivitera.com (Postfix) with ESMTP id 8052F11BCE;
	Wed, 31 Jan 2024 09:20:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ivitera.com; s=mail;
	t=1706689201; bh=tO5NhoozagSwjbc+fk1Ghjoe/kzNdbky8cAkoNrTrmU=;
	h=Date:From:To:Subject:From;
	b=MmFoIQzxXuXw0enZvFs0p018C0l3JDxWHpSuc63W2oilMct3sQXb1Ei4vLOBYP2n7
	 0DO+oSmSB21MSuP13rmLzfcvgHrmeZcVbc28KRFUW+64ZI7nN73PWSGaO+LXiBl0q8
	 2vROVsyYP+NFjvONbVy8G8XSdj/ifs6XzqouvxNU=
Received: from smtp.ivitera.com ([127.0.0.1])
	by localhost (localhost [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kVSs4BDQjL8w; Wed, 31 Jan 2024 09:20:01 +0100 (CET)
Received: from [192.168.105.22] (dustin.pilsfree.net [81.201.58.138])
	(Authenticated sender: pavel)
	by smtp.ivitera.com (Postfix) with ESMTPSA id DDC56129B9;
	Wed, 31 Jan 2024 09:20:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ivitera.com; s=mail;
	t=1706689200; bh=tO5NhoozagSwjbc+fk1Ghjoe/kzNdbky8cAkoNrTrmU=;
	h=Date:From:To:Subject:From;
	b=h99FVYy9XdbeYUzdxu+PWzcq+75+kUyJZal6GxBgnYJWydSczSAuIh3qtufJ/ka0y
	 +TwDjqmdM19JCohEBru7xIBdxF6mOIfq4QAcVE7fZA2aIhiaGL/atteyEUbUSf5+AN
	 3a6NqGAqVNB1in1uunzmi5dzYrum40UIpKdL/UwA=
Message-ID: <7ab8fcf3-f526-8618-f324-8450d431496f@ivitera.com>
Date: Wed, 31 Jan 2024 09:19:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
From: Pavel Hofman <pavel.hofman@ivitera.com>
To: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 linux-rockchip@lists.infradead.org
Subject: ASoC: rockchip_i2s_tdm calibration clocking problem
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_082005_501884_FD8C2B96 
X-CRM114-Status: UNSURE (   9.61  )
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
