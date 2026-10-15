Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E0CDCC6B2D
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 01:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=khzcbZKQ1X2Iph2e2VHfoXSyTcxsmc7ZcsBSpSczSe8=; b=EPz/0JbmohYf+g
	UptkDBw8+xjewzJMcv4XTKiGKDnuMQIEq23gWD0MCzsNOV9A+OujG+Nj/8lrY6tXENt++awNekvfH
	4PDdwpyQ1UdV7cJ6GjK1n6B6+qYy1ANJUqAzeqluoummUNyzZoleQq8lqGDi7/bCW8LDwzrAVLzMl
	QLI1BNYQ1Xq8lvVgQ+HxmX++gWirv2gC2Y2oxL0wOkxLkYAH/TXMZ8eNGUErVhcD74YVPz08w3SPi
	3Fs1eJIF1EWKFCAVsj1HrU2dp2ZjBQvsdOxhp/x4ljCbcIpM2PyhJc3q6HGIfBhVlNFupgzCxhOHT
	Rur99Y4iUwCiIMrSO9sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHARe-0000000GaXE-45cz;
	Thu, 15 Oct 2026 01:39:46 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHARc-0000000GaWL-0vjR
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Oct 2026 01:39:45 +0000
Received: by mail-pg1-x52e.google.com with SMTP id 41be03b00d2f7-cd633ef819bso293056a12.2
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 18:39:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792028383; cv=none;
        d=google.com; s=arc-20260327;
        b=Md3XsQirta+Pmd5Xzd/eMY75lH7m+WUyX+jZTwh8gd5oKmrxdntSCJdv2sc76KIxvy
         lyeQ0Eod25cEnWDgpNTJp2X0bpC8UrnDFk35gLqcXJwgLZzI6z6ljI2EQF8U7D2SWGyL
         WIUe81N5ZwrbCNsd4LZEI5t7d1tNhKPFJtjlVkMwfHguYM7/DmRYZr5JfDu+4qAJ9t2U
         wzx+jJ8ma855m8VGVKBYM1vmwaFgmbAMPGvS8K6loIYxC2Cnz7LzsKQTMXQ+JEfAREo2
         kYZiAHFlrszLyVkaBAfiXXGZHwmMP1jBS6doujXnfI7a20GahAOy5D8uq95IrQzXhAk3
         xBhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7UAKkSVFiLjeCKqwwiBA8/TCsyeb/yPhvR9ZVVpCVjM=;
        fh=CD1UgfQl9tfe0U70Jnv1X2dVP9W65oyqECOnlQvZdqA=;
        b=s7zy9bCT0jD10Ve3zlsyt48I8IXxRBTZHvWIxGbF88pwy12Nmb6Dk9Rb96t3nuhout
         qxMJ1BGaD2pysRFg4SaX5fgzypXhMdnTWIyVXTxjb5xQTFVqKaYFS/IdXuv1qZ8HCqOc
         ql5LMCEFj/MBOIJD6eNkyj72v658lDRWqet6MlScTQWOBdJaVzXb0Chd+vBXyciKMhM9
         UlS7siMhUa1vkbJsnKnb12AE2enZIkS6CyR1CzXJWkO+oscVCHU/WcQC2Bbkztcwr36D
         hQwP0WMkyldyFgL8ZdmNJR3p3JvuVtbhaBBBc0wgddkkL49ujNV8SAJ3iiH5Wn9uy9vF
         s4bQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792028383; x=1792633183; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=7UAKkSVFiLjeCKqwwiBA8/TCsyeb/yPhvR9ZVVpCVjM=;
        b=HMm9xyT7ZvLHd8OA8c53ds1gEH/66EWr5ZfpEfqgDcp2cfm0A7l9IQ7OxFMZQhRcEO
         srHXhfLaA3fNRS0vwficq7UejnhjOOadRfB5RdDnLA4ikHw2u2Y80gdSatcMQmUoAACI
         NEJ1ocbLXXktnkweMqSpzVOHJsKk2nKr2bCoFvD5FA99hvf9H6OUHMMphMLrphzBQzgG
         hnCB2QqChV1k6vgHPVs/m6mzW3kkEsqKCEJMYCWzS+/2GSEq8xxk+xXAlxQBPmoQ6quU
         lp9ojPTDbLt8q6TkfUEgSwH842+sw0CDIofxqT8Ji9v9c0NZMx7UrWBqxaRmXAuMpWAr
         DDpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792028383; x=1792633183;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=7UAKkSVFiLjeCKqwwiBA8/TCsyeb/yPhvR9ZVVpCVjM=;
        b=zV3Gp4SOxWOX9DG3qTpm12Lkq0MOnPw7EoK0q7rOUJmGTc1bXRbnTKGiAyFm8Sk6Pc
         77ykdl0qywgTUqL1or63gRmRHECn81S5qxXVGLwq0u42GQjhcW2uBHGrABK1//nTp/6I
         CfLUDxGFMOtYljAp82GdSFTvm2xCuIeijPmyX1NDB7E/bEMU5wxzXp2xXtVTCifhSXAl
         pUeANpyNKaFESEWHMTZdCS3ciNtryVXHOFCl/LyatXuLvBIczjIiBLPhWuWKvyk6UpYf
         8DFXSWXt78x9dIjCk22VB7lyOcrbsb2o7XUATIbL1rgKAp9QtCCQYE6xteq3k5YYalaJ
         BnLg==
X-Forwarded-Encrypted: i=1; AKwUvBwaYSnn68VjHPgEPWVPNUj63p942o4lX5sQL4xac4pCLjl+R/Sd+42iYWej3WHm45boLYy4dE21eqM3lPRXJw==@lists.infradead.org
X-Gm-Message-State: AFq9FYJTErWuuK5wVFNfiIQrA4qujNS+O0JNhVfhvECT7npUkDaLKPk8
	6JaqA579yUj9LQ2Ar8bfLvXkjIF4jHU4jjEaoMQe1TMhEsCUHHoAqg40S8aZ7Hkr5DITIiHfqaz
	eWKBIAWp9ZFaQxj00mDdCFpsQEbSbhys=
X-Gm-Gg: AYBFou0VMJAOJ2lICT3GF9VXcesy7pNfFmWsAG6XObBGPZv1eq2uxBHAucDQBw7bHJC
	qSIMayR84dNl82kDsp+Y32tjATH8kx0aAylg/+UrrXtsqyzsluxu98wt8Bsnseu9o72gkF1DE4T
	2F1u2hRwjVppCK6lc0K0XDWjpyVoRDIloVIV/Vf4yYOfkhqdjKxGKbsjE4awZxsxCcmQ8wrTguM
	Oo2/hdFRYliwAeoq0gI23Th9uBMR4njR0qU3j82uJ4IOyt0R/73Soux5YGwsoOSM3lxiTfJe+uD
	O84pTzlH6Filnb9O3lfYxeIZ1DobbD9aZ4ZP/P5NMftfPAPex4HnNGYUUVTS9Gd+T6yWhp7yOKM
	W75RlwnPFR5YJoGl5rjSWJdCj5FFV01bg4T6n7EK/9ZmOErdPqXivPuu4OxaJqycR+Jg=
X-Received: by 2002:a17:90b:4acc:b0:3a0:e1f7:9b04 with SMTP id
 98e67ed59e1d1-3ab3a60ac9amr16312045a91.12.1792028382966; Wed, 14 Oct 2026
 18:39:42 -0700 (PDT)
MIME-Version: 1.0
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
 <20261008103831.542533-22-phucduc.bui@gmail.com> <87o6cyxyau.wl-kuninori.morimoto.gx@renesas.com>
 <CAABR9nHvCfabGfBu85bm1r=hP3b0ZiCsgZfShhOv3gNUfjjhGg@mail.gmail.com>
 <87se2aw3ot.wl-kuninori.morimoto.gx@renesas.com> <CAABR9nG-YJZEdj6pVD-gbGU6J2EfRMQYsKd7u0UTgfrWOyAPXA@mail.gmail.com>
 <87qzhtyxw6.wl-kuninori.morimoto.gx@renesas.com> <3a6759c7-84bc-46ff-93f1-965c7e8dd4d0@tuxon.dev>
In-Reply-To: <3a6759c7-84bc-46ff-93f1-965c7e8dd4d0@tuxon.dev>
From: Bui Duc Phuc <phucduc.bui@gmail.com>
Date: Thu, 15 Oct 2026 08:39:29 +0700
X-Gm-Features: AclHuK8C1u90VDPCucQhY3afyuLfcxP0SCIJrlA3M2hLxVwcjMsqinLCGr2nhSI
Message-ID: <CAABR9nFA5p=5hnMoxFHLtmGEj4kvfrN6M6UFPnm9hRQv_CAP6Q@mail.gmail.com>
Subject: Re: [PATCH 21/24] ASoC: renesas: msiof: Fix msiof_close() being
 skipped on rollback
To: claudiu beznea <claudiu.beznea@tuxon.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_183944_257713_4EF3DD09 
X-CRM114-Status: GOOD (  13.17  )
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
Cc: imx@lists.linux.dev, Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, Xiubo Li <Xiubo.Lee@gmail.com>, Venkata Prasad Potturu <venkataprasad.potturu@amd.com>, Frank Li <Frank.Li@nxp.com>, Cezary Rojewski <cezary.rojewski@intel.com>, Zain Aboobacker <zainaboobacker33@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>, Pengpeng Hou <pengpeng@iscas.ac.cn>, Bo Shen <voice.shen@atmel.com>, Neo Chang <YLCHANG2@nuvoton.com>, Fabio Estevam <festevam@gmail.com>, Ajit Kumar Pandey <AjitKumar.Pandey@amd.com>, Heiko Stuebner <heiko@sntech.de>, Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>, Geert Uytterhoeven <geert+renesas@glider.be>, Chris Bainbridge <chris.bainbridge@gmail.com>, Shengjiu Wang <shengjiu.wang@gmail.com>, wangdicheng <wangdicheng@kylinos.cn>, Magnus Damm <magnus.damm@gmail.com>, Vinod Koul <vkoul@kernel.org>, Kees Cook <kees@kernel.org>, Vijendar Mukunda <Vijendar.Mukunda@amd.com>, povik+lin@cutebit.org, linux-rockchip@lists.infradead.org, Charles Keepax <ckeepax@opensource.cirrus.com>, Ravulapati Vishnu vardhan rao <Vishnuvardhanrao.Ravulapati@amd.com>, Sascha Hauer <s.hauer@pengutronix.de>, Nicolas Ferre <nicolas.ferre@microchip.com>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-sound@vger.kernel.org, Nicolin Chen <nicoleotsuka@gmail.com>, Richard Fitzgerald <rf@opensource.cirrus.com>, Mark Brown <broonie@kernel.org>, u.kleine-koenig@baylibre.com, Syed Saba Kareem <syed.sabakareem@amd.com>, Biju Das <biju.das.jz@bp.renesas.com>, Jaroslav Kysela <perex@perex.cz>, Peter Ujfalusi <peter.ujfalusi@linux.intel.com>, Sang-Heon Jeon <ekffu200098@gmail.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Kai Vehmanen <kai.vehmanen@linux.intel.com>, patches@opensource.cirrus.com, Linus Walleij <linusw@kernel.org>, linuxppc-dev@lists.ozlabs.org, Takashi Iwai <tiwai@suse.com>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Md Shofiqul Islam <shofiqtest@gmail.com>, Bard Liao <yung-chuan.liao@linux.intel.com>, asahi@lists.linux.dev, Pengutronix Kernel Team <kernel@pengutronix.de>, Andrei Simion <andrei.simion@microchip.com>, David Rhodes <david.rhodes@cirrus.com>, Hemanth Selam <hemanth.selam@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Claudiu, Morimoto-san,

> >
> >> For rz-ssi: in DMA mode, the driver registers the generic dmaengine
> >> PCM component, whose .open callback already applies the integer
> >> PERIODS constraint via snd_dmaengine_pcm_open().
> >>
> >> Could we drop rz_ssi_pcm_open_dma() instead, and keep the return
> >> value fix only for rz_ssi_pcm_open_pio()?
> >
> > It seems fine, but I don't know detail of rz-ssi.
> > Claudiu, what do you think ?
>
> That should work. I'll test v2 once it's out.
>

Thanks for your help and feedback. I'll send v2 now.

Best regards,
Phuc

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
