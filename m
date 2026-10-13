Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82F69CA9ED0
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2026 04:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ux7E0m6jbTy2wBUT+1IOBgMviGN6j9M4sCUXS7258Ck=; b=fA3sZv+X4F9KJD
	u+B2/PHfHPQ9fQMf64gCEWhvSGKtBWq0NSQZW0YN2A9FbrpXBJIwS3SpM+zOW2WhACFgbRrvOBf3s
	kGGeLCwXg+A4Z5GyAh+QvcQQPYNWHvlxI6vWj/Kg04xTRleXxYViyoy3PdsZOr4Fs9WozxuLiRYrg
	NOhc7NULc+WPyCrcU7IIpCQqdGaYarQQbikYNy2zYT5mO5iLm2uqoi2+XOLdFwRMrTL37SY6N2Yb3
	5U8zaSCLaJNDAf17rqrcopUoDtRtHAL8qbJe8BFlP4ZwwHjymCpl2Zrx2LKS2NLI4Oq0dlSzFUxQU
	IcG47RCEra1CdwReEZ9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGTyN-0000000BxTk-3P1n;
	Tue, 13 Oct 2026 04:18:43 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGTyL-0000000BxT2-2MFO
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Oct 2026 04:18:42 +0000
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-868b3248b2cso1873083b3a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Oct 2026 21:18:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791865120; cv=none;
        d=google.com; s=arc-20260327;
        b=drNDJFj5e7Lc1rTBCei/eCcy/ibvUCAsqEWhnuAwT66Gl9tFutvMfcuiSJSWi1A4w9
         GCfZVNvdLYvmifaK481y7+q6g80TJuMiTDg6xui8TAuiKKAGQ2twQYzUorrLEoJZ4Dj5
         fR3bZiIrB7bh3x+nk/USDS/9088/qmXzNp/a7AWxezToRRDu1JvRtBwGVjbSFomt7qtV
         l5P2xS3pCrwOR4RUk3DN/Ovm2hMmM7LKYYs4D1vbfFC0CjqnBkF2dD2ztICxmNo5OLmu
         AumZh53uJ3ijpsdD/iw4ScoyJvW2Sr6z1zNS7W28pRn6ezyZ7MNeMTpzdJhdLEiZ7Eq6
         yGLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RXTMOQ3s/A/fpHZbZ7Z1yCnaHYebzC4eV4sd40V0Aoc=;
        fh=zLjeycPIO5ZPUkkLgIeNvz/rGT/MKaFR63aSk6ugihs=;
        b=fpTtuGWwE/tlKmieKC+JZYdENl/zrp/LXOkogjie08AEGsEGSj2LcVi/DnleRYV9F/
         Cg5SV+cEEOvA1RYscbgsIgek/KjT5vM9OONbySBBOHat6P8IeL/LMYt8GEGwWBS9uxCF
         OEGaFEzHWloO8KTFYwMSo6SZzuCSUqoTecTSw7gsW8ew9+4E+y14x+ZGsYxJDOiQETZ/
         AnHzPWMnCEOaC70nO869WG++I/4MB7P5bW4zoEs3bPFOiLCYjrcM/Azelm5BPumNJ/Ge
         RycWVZ2oUAIpWQxasQuRgbvv44kjYWjML7ZMnAT/8mfmItYztuZcm5+OZl3SvknCdNgu
         t03w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791865120; x=1792469920; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RXTMOQ3s/A/fpHZbZ7Z1yCnaHYebzC4eV4sd40V0Aoc=;
        b=ra5vEN6W/N3zI4OVqL7Kxdyhq/I9qHPlzJH1mIVfG2R2G3ay5V1hHFWWRwm1pgV/2J
         D6pyRUH6yI20twgbK5wBd+vFJMvv9MtMnEIEgTvRrmN9jXm+ma+spKxXlWiAxqf2wGd/
         1nff1Oh9DQIoJgzzsgvApXBdh9NLJtnh0WWR6jiQ3zX735tVq461qwuquPkirncnm9SV
         zsACcdLlA1NOE/UDUbgfXT/tNZQBbwm0Sq9jTm/xhdA+n5qxepSITzVmNEMLDwEQEAUo
         jgvV4fGX+jTWghkeTwfyCdtPhf5gEiOxxOMl6H48x0x+XMyK8iYCe7y202cfOq0bf3Pv
         fjeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791865120; x=1792469920;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=RXTMOQ3s/A/fpHZbZ7Z1yCnaHYebzC4eV4sd40V0Aoc=;
        b=Rn79tOvHDMe5/1/9VEf6TgtBAD/jiy4e2gASObYANPSyJE1LwGEcd6kuPE1o6JlOYL
         Uj63zlgzI1L8QUVDA7HRZy6e4N4wbUSziNGkoh0NLFgPJKFN/AHvpIHeumcyg4brLu3Y
         LiyF6FQ+yNX98//cedwiDSXHWMd44tooTAYCJ3oqOsZp68jx7KWdlERR36vervbLkUci
         9apQw/lV79VIWo20ajkE+MTVcOiVWVQkV/5l9nEJMl0eUd4pznhuzS5ODaab2nzA26J9
         I0jnTVO2YHHThANG40I/RPVJlCxWCCoRSnXn3KWQbt9FrkdCjKLL8StfnowmM3y+z18z
         FV7A==
X-Forwarded-Encrypted: i=1; AKwUvBxoTqc41iu8r00e64H1QZKIwNW4FwnViMVfPxns3TXNV/XIZ1VJyFqVcsTYo/K5PxASRV4X8CPghZ8M0wFqDA==@lists.infradead.org
X-Gm-Message-State: AFq9FYK4Sc8qpn2dNXKnpix5JmzWeH4VAxt/zWt1XhdFyRL9xMZoRiDh
	Niaq6zvlvHiwPmAz0/J9ExX9elud8SqHbr55af7Nz4BPsQPjDJyehMQMHhoxHX8j8NDqEFSUirO
	qeptAWvdwgDNlwwDeMRJgQ2t5WrbcJTE=
X-Gm-Gg: AYBFou3gg9iE4UsJi7wL7i90xiMdlnY/yJBlYexlyUuH4XET1ax21Ks5bMCsUrLDv8k
	w4r5G2Wo1bRdudx7ove6dclhxuuwm2AWjSIw6fVjkhLeG7FAXgf0YB998h0g8cX2ZZTVWDmaInz
	HX+GKcGCMK7nP6e19U+ra3UI/ZYpZs9O1FoxownXPDjnS0U0LpjnC9QZNsZP5axMgoSSXcvEULC
	xvzxMLuallXEiEw0FjVYzx9c7szENzxLwXvi0DdsAWlKuu13TMj/ecPBaa6bql74bZdWy1DBTq5
	35a8XzuWG13Y8M0lHn6UujxEzTZF5yeN3Vw6mQ9MaS6OiHHiN2FQoTiHLaFxa+iRpQfVYk+W3d8
	hzx1sW6Gqt6CuEhzrMi4aNqZAmVhw+Hs4nHj9QZqDRvyeefM8KYDykLOIriYAVRsJaT0=
X-Received: by 2002:a05:6a21:4eab:b0:3e0:de06:126b with SMTP id
 adf61e73a8af0-3e16beff287mr10686193637.66.1791865120247; Mon, 12 Oct 2026
 21:18:40 -0700 (PDT)
MIME-Version: 1.0
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
 <20261008103831.542533-22-phucduc.bui@gmail.com> <87o6cyxyau.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87o6cyxyau.wl-kuninori.morimoto.gx@renesas.com>
From: Bui Duc Phuc <phucduc.bui@gmail.com>
Date: Tue, 13 Oct 2026 11:18:28 +0700
X-Gm-Features: AclHuK8E-95w9dmy_Nn8Ii2RGxOq8D0J-l4YT38o4WK2kAtoUqqhMqA48tZbgYk
Message-ID: <CAABR9nHvCfabGfBu85bm1r=hP3b0ZiCsgZfShhOv3gNUfjjhGg@mail.gmail.com>
Subject: Re: [PATCH 21/24] ASoC: renesas: msiof: Fix msiof_close() being
 skipped on rollback
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_211841_607732_ABC00DE4 
X-CRM114-Status: GOOD (  12.91  )
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
Cc: imx@lists.linux.dev, Alexandre Belloni <alexandre.belloni@bootlin.com>, Heiko Stuebner <heiko@sntech.de>, Bard Liao <yung-chuan.liao@linux.intel.com>, Xiubo Li <Xiubo.Lee@gmail.com>, Venkata Prasad Potturu <venkataprasad.potturu@amd.com>, Frank Li <Frank.Li@nxp.com>, Cezary Rojewski <cezary.rojewski@intel.com>, Zain Aboobacker <zainaboobacker33@gmail.com>, Nicolas Ferre <nicolas.ferre@microchip.com>, Bjorn Helgaas <bhelgaas@google.com>, Pengpeng Hou <pengpeng@iscas.ac.cn>, Bo Shen <voice.shen@atmel.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, Neo Chang <YLCHANG2@nuvoton.com>, Fabio Estevam <festevam@gmail.com>, Ajit Kumar Pandey <AjitKumar.Pandey@amd.com>, Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>, Geert Uytterhoeven <geert+renesas@glider.be>, Chris Bainbridge <chris.bainbridge@gmail.com>, Shengjiu Wang <shengjiu.wang@gmail.com>, Takashi Iwai <tiwai@suse.com>, Magnus Damm <magnus.damm@gmail.com>, Vinod Koul <vkoul@kernel.org>, Kees Cook <kees@kernel.org>, Vijendar Mukunda <Vijendar.Mukunda@amd.com>, povik+lin@cutebit.org, linux-rockchip@lists.infradead.org, Charles Keepax <ckeepax@opensource.cirrus.com>, Ravulapati Vishnu vardhan rao <Vishnuvardhanrao.Ravulapati@amd.com>, Sascha Hauer <s.hauer@pengutronix.de>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-sound@vger.kernel.org, Nicolin Chen <nicoleotsuka@gmail.com>, Richard Fitzgerald <rf@opensource.cirrus.com>, Mark Brown <broonie@kernel.org>, wangdicheng <wangdicheng@kylinos.cn>, Syed Saba Kareem <syed.sabakareem@amd.com>, Biju Das <biju.das.jz@bp.renesas.com>, Jaroslav Kysela <perex@perex.cz>, Peter Ujfalusi <peter.ujfalusi@linux.intel.com>, Sang-Heon Jeon <ekffu200098@gmail.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Kai Vehmanen <kai.vehmanen@linux.intel.com>, patches@opensource.cirrus.com, Linus Walleij <linusw@kernel.org>, linuxppc-dev@lists.ozlabs.org, Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Md Shofiqul Islam <shofiqtest@gmail.com>, asahi@lists.linux.dev, Pengutronix Kernel Team <kernel@pengutronix.de>, Andrei Simion <andrei.simion@microchip.com>, u.kleine-koenig@baylibre.com, David Rhodes <david.rhodes@cirrus.com>, Hemanth Selam <hemanth.selam@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Morimoto-san,

Thank you for your review.

>
> If so,

Although I don't have MSIOF hardware, I tested this on FSI hardware.

I added a .close() callback to fsi_soc_component and forced fsi_dai_startup()
to fail to trigger rollback in __soc_pcm_open().

When fsi_pcm_open() returned 1 from snd_pcm_hw_constraint_integer(),
 the .close() callback was skipped during rollback.
When it returned 0, the callback was called as expected.

>we would like to have such comment to indicate such background,
> because it is not intuitive for people.
> Otherwise, someone (maybe me :) will return to the original code.
>

I'll add a comment to explain why the return value must be normalized to 0
in the affected drivers.

For MSIOF, I noticed that snd_dmaengine_pcm_open() already calls
snd_pcm_hw_constraint_integer() for SNDRV_PCM_HW_PARAM_PERIODS,
so the call in msiof_open() seems redundant.

Since the first call succeeds, the second call should return 0.
Would removing the redundant call be acceptable?

Best regards,
Phuc

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
