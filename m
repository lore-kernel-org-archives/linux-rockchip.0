Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B82F1CC6B1D
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2026 15:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aC3ZzjqJWSU6yX2C0QCuW5WUu9FLRyCiQK5Zbx3DwJw=; b=3P/gkzFDzssiUH4xBB0RGX3N1W
	5FGP6GY35Sie1xvSfEuvh35h+1mfXIyDrLvxfsL2fM9GLLbFMuK5WbooAZoagbMdez9YydA0AHCgv
	KkCPRDVfrg+6lp1x9cOM6FvUSoqyvBadwJfkhip+8NtMnUJ/YV61NEJAxI1pukOdQPNqIuNZI7404
	NADrO+nZ7+CRSTFVuIIC/fgNwTzPwvhErJA5p1QgaOnWdizngYk/EFM9K+E/GDH0EMgOaOo24Om/z
	KMPQVNXOhyvalcUcESaHLsAIAWwTZh3RTX6C2tXzPZabnQ9jnBNm7AQyAHnIbl6MgLUSN5HL1FxUV
	VXYj3KiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH0oM-0000000FpqE-25OI;
	Wed, 14 Oct 2026 15:22:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH0oJ-0000000Fppa-2mbd
	for linux-rockchip@bombadil.infradead.org;
	Wed, 14 Oct 2026 15:22:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Js2yXAKJLVFgb+YsCYrtsAgVcbxI+5CvJwak5knEqR8=; b=PrjUXtRx4Zw+ybOmM1/yBDit58
	Z+Huu22f4W1y6Tjo5F9MrGjflDKB6Ek2DzNFMT4kUBb3No5fTeSoTNX5rWDPL7OKLf46Qsjoc4ylx
	E6/xBkGN/Q+p/jVzoYX/0A3jGdc83ejiBGjWaEuE/wi26L+sO8DyctTKnvi/MZUxQ/Z5pkIiZOuna
	KgN+KHu79JGqLyXtfC33Ei7rTyalMjSw7Hn3aS2DrDLdpZuBsbzfBgQcMwHJ7/jlSAVl9JhMKhbqD
	qWkPONfbGZ/VRgxsd54cdjeonovINizTGoYPMCZcQY5NPQLf1Q3SEdLtd0wPWv1+X1+PJQ+nq9EBC
	aUcxq7/A==;
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xH0oG-0000000Gw1Z-3Wnq
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Oct 2026 15:22:30 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4a021c809e3so41219685e9.0
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 08:22:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1791991347; x=1792596147; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Js2yXAKJLVFgb+YsCYrtsAgVcbxI+5CvJwak5knEqR8=;
        b=pbjo8jXyCgr/tP7iMoE92Zk6zwJFXNDc25dGEHIO001ZUI5RE7tJLo/YJit0WYM5Wd
         IY7TwtAd+t8rPe7S56szdSXMlo7TZBIgRcK8SftTZWPjmlyGUb1sWlSW8DjKEcwA3bqf
         gFmJM9CnHb29gsLwldG073bmcGe795kqeu+Q3Xf0dhXgEnZJp81pwipJN/RT2i46xAGd
         uctI1por0unnzXz+tJSLZLUHGPz+MaU4/tgRAzO8lBCBxtVNhi+iY0/nKL71iCGRfJV9
         SUx3Asd0E48Y+oQjsDhBD117cZTJbs/vZ6FSfoPh8D3NeLby+shfN7yEYLMotRyyKwe9
         NogQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791991347; x=1792596147;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Js2yXAKJLVFgb+YsCYrtsAgVcbxI+5CvJwak5knEqR8=;
        b=dg7R7KbhULuvtm2VUqb/ryWOMWXIWlUj+9qS1tM/Fe2agMQjX1stDA8zvtnpl5Rgxt
         KE4Zhl3w5QjGlabtyY0u+3/yQJZ/BmxkX50P/BIxrum/JKsVumwxv6eFdm6EDR9Z9BA1
         xtx876mq47MmWZaUlHBOhgZDp6bREZmiSxTGhW446vjOQc6YSBq8/xAoIQ+qfck4GuHv
         J4SMIFNF05cVJ3orTQ9DlH3OSrouLU7BP/4iMTyzq6WiL+4vrixZjBzjxo95srzcIKjZ
         zvD6a2NPTIm956rCSSsuILvxnr/pBK4wu4cbix//uhLMSWhX342DXr08oBMPIfe4F+gz
         bdaw==
X-Forwarded-Encrypted: i=1; AKwUvBzkCC9De/Uq7ocabPZA+FtCsK5S4QY/HRUypduSAa6++pfwTYOy23roUuQwSluizMaSOuxjjytDTwvIMVTUzQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYJv42a+lF/a6iwtYPiKBEPLSCBXEQlJ3XitXaGWzxQlBbeiwX9J
	xiFb+pJ6MqPVM4kB9LmohRwznoP4oD4gr0nvbIQNW6lZWIpC1pUG/o4ARaNzcYO8U9M=
X-Gm-Gg: AYBFou2G5wny+48MZOf2m9K63uUntnTYi4qGemVzs24o+55rXQynKKVXL+9l1ewkZi8
	V48GaU2vLtOsePjbkg+qJQBa6zR2PhwZEbrRL6yVZWHx5x7+xZWDB0gGwOFAvIjs9zWvM3s0ycI
	KS8fSjwDuCBsWlfZhQTjObU6lLinLR6wggYc+ir6bwnpDQ/ML+AURyk5hnimHiycfZZMYr0wYsy
	k203ooFLYfqW3UuFyEkA4hKCPhzPlq5qessMnr4rMiltVuQ9p1CBepBlPTghUdWvBbJDtxQksLs
	/WHxyUJKh2UyBQTSs9VX09RIwMwsaRYEMp4tREX5pIRXvM4D6VOPWzTpqOyOLEtKApY1pRkSTNx
	o5mzvaQvRo7+Ke+iZIgj8sAJsboDMHGHoo9EhHQ1JtLBZkupzO1fe6kM5Qx0WyCQ4SecxSByNId
	+46KKRuNjw2V5mOLyYWnjT5CHnPnAcdIfA2uomUDk0eA3jr+U7f8rzQQEcC05jvklKppS/s761H
	onRpsM=
X-Received: by 2002:a05:600c:3507:b0:4a1:afcd:3919 with SMTP id 5b1f17b1804b1-4a1afcd393emr93408495e9.7.1791991346614;
        Wed, 14 Oct 2026 08:22:26 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.221])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1bd67502asm974715e9.3.2026.10.14.08.22.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2026 08:22:25 -0700 (PDT)
Message-ID: <3a6759c7-84bc-46ff-93f1-965c7e8dd4d0@tuxon.dev>
Date: Wed, 14 Oct 2026 18:22:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 21/24] ASoC: renesas: msiof: Fix msiof_close() being
 skipped on rollback
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Bui Duc Phuc <phucduc.bui@gmail.com>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
 <20261008103831.542533-22-phucduc.bui@gmail.com>
 <87o6cyxyau.wl-kuninori.morimoto.gx@renesas.com>
 <CAABR9nHvCfabGfBu85bm1r=hP3b0ZiCsgZfShhOv3gNUfjjhGg@mail.gmail.com>
 <87se2aw3ot.wl-kuninori.morimoto.gx@renesas.com>
 <CAABR9nG-YJZEdj6pVD-gbGU6J2EfRMQYsKd7u0UTgfrWOyAPXA@mail.gmail.com>
 <87qzhtyxw6.wl-kuninori.morimoto.gx@renesas.com>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <87qzhtyxw6.wl-kuninori.morimoto.gx@renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_162228_992517_E96F0843 
X-CRM114-Status: GOOD (  10.52  )
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
Cc: imx@lists.linux.dev, Alexandre Belloni <alexandre.belloni@bootlin.com>, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, Xiubo Li <Xiubo.Lee@gmail.com>, Venkata Prasad Potturu <venkataprasad.potturu@amd.com>, Frank Li <Frank.Li@nxp.com>, Cezary Rojewski <cezary.rojewski@intel.com>, Zain Aboobacker <zainaboobacker33@gmail.com>, Nicolas Ferre <nicolas.ferre@microchip.com>, Bjorn Helgaas <bhelgaas@google.com>, Pengpeng Hou <pengpeng@iscas.ac.cn>, Bo Shen <voice.shen@atmel.com>, Neo Chang <YLCHANG2@nuvoton.com>, Fabio Estevam <festevam@gmail.com>, Ajit Kumar Pandey <AjitKumar.Pandey@amd.com>, Shengjiu Wang <shengjiu.wang@gmail.com>, Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>, Chris Bainbridge <chris.bainbridge@gmail.com>, Bard Liao <yung-chuan.liao@linux.intel.com>, Takashi Iwai <tiwai@suse.com>, Magnus Damm <magnus.damm@gmail.com>, Vinod Koul <vkoul@kernel.org>, Kees Cook <kees@kernel.org>, Vijendar Mukunda <Vijendar.Mukunda@amd.com>, povik+lin@cutebit.org, linux-rockchip@lists.infradead.org, Charles Keepax <ckeepax@opensource.cirrus.com>, Ravulapati Vishnu vardhan rao <Vishnuvardhanrao.Ravulapati@amd.com>, Sascha Hauer <s.hauer@pengutronix.de>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-sound@vger.kernel.org, Nicolin Chen <nicoleotsuka@gmail.com>, Richard Fitzgerald <rf@opensource.cirrus.com>, Mark Brown <broonie@kernel.org>, wangdicheng <wangdicheng@kylinos.cn>, Syed Saba Kareem <syed.sabakareem@amd.com>, Biju Das <biju.das.jz@bp.renesas.com>, Jaroslav Kysela <perex@perex.cz>, Peter Ujfalusi <peter.ujfalusi@linux.intel.com>, Sang-Heon Jeon <ekffu200098@gmail.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Kai Vehmanen <kai.vehmanen@linux.intel.com>, patches@opensource.cirrus.com, Linus Walleij <linusw@kernel.org>, linuxppc-dev@lists.ozlabs.org, Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Md Shofiqul Islam <shofiqtest@gmail.com>, asahi@lists.linux.dev, Pengutronix Kernel Team <kernel@pengutronix.de>, Andrei Simion <andrei.simion@microchip.com>, u.kleine-koenig@baylibre.com, David Rhodes <david.rhodes@cirrus.com>, Hemanth Selam <hemanth.selam@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi, Morimoto-san, Bui,

On 10/14/26 02:38, Kuninori Morimoto wrote:
> 
> Hi Bui, Claudiu
> 
>> For rz-ssi: in DMA mode, the driver registers the generic dmaengine
>> PCM component, whose .open callback already applies the integer
>> PERIODS constraint via snd_dmaengine_pcm_open().
>>
>> Could we drop rz_ssi_pcm_open_dma() instead, and keep the return
>> value fix only for rz_ssi_pcm_open_pio()?
> 
> It seems fine, but I don't know detail of rz-ssi.
> Claudiu, what do you think ?

That should work. I'll test v2 once it's out.

Thank you,
Claudiu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
