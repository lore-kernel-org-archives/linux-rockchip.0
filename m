Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 549A4CCA462
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 01:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AzMR1YejaB8n48FDGVHQF3aV0F7pMuWFuP0Tw2O99GI=; b=FsLZ5fD3POb3Mu
	e0y+1V0CZdfX8F+Qi7Vxqv1acVY5IPEVelISVv3lf6pUeg+6RjvujSu+mrEz7fMopcWCYhvykjwgf
	+nWM7ZJoGg7QaOAPlK8ezhAveL8ffyiU1nXyH4hXmBbw+gwCB9KfPZjH7+gbA4fQBF8RYOO6IoeX3
	itqqoC+LGKjHWcHkwr6/h3uEwsGDSdNjNHeHJhhzWlvWU/g2VFRqf6OoMyKJYPQJu+CBUFZqtibXk
	/AoM5f7djrqp3w78N2UIinStlO6t2o7UAzEVnwQzWvgijXobVXLadvsm1ndsp0jltXfMj1bDFeCkQ
	SwAwBdQ5cBja2Eglxntg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHX8A-00000001itk-2SPz;
	Fri, 16 Oct 2026 01:53:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHX88-00000001itQ-3jRA
	for linux-rockchip@bombadil.infradead.org;
	Fri, 16 Oct 2026 01:53:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Cc:To:Subject:Message-ID:
	Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=QzWh/mXf6G5Fr5INTJvXRytqPL/zBujlCdMkS18GyKQ=; b=dcaIAt2kWxh4evVBeZs96hPy2p
	H08BPx9lwRtmh6jFKt+pQ2BLV8T9mKYjtuOfKF8NDbG2FRCbQTs8ObsvvoNL1Ttym+SMEI8u5Gm8/
	Y+8I+6kbprbV9DM1d8YJamJ/DSXNdmxI8jG3wp7EgNi8z3abfi6AICXWRx6ujlg52Wq3AfPGvcSNq
	5pIOqhzYg0C/q86ytMJo2Z12JlCnn1tbCwIKvZZgzwpgKfZtuoJtkfchwWy4gh1OJV7A9xJD2oicY
	98YIr4spuNxFe0JW5nasZdWuaiKxpE6T/EYYvV5rW3qTHAbz7c2FDaRa1Hn7pfHjc1rHL2tdJU5F/
	XJNUaffg==;
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHX85-00000000zX4-18H5
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Oct 2026 01:53:07 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-2e987a2ba0cso1272225ad.3
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Oct 2026 18:53:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792115582; cv=none;
        d=google.com; s=arc-20260327;
        b=rYOXDFobRJ3NT5sbasFh3DHUHznz3JVjQ6QOP1S/jIjyAjMRsmwQ1Wr3it7xS/plpd
         /v6YtYNIz71LjHucWAOLJYdr6v9u0Mi4b9AwsTV+ODMpCF6GKPHqWg4OnQNtKNQRUu49
         UNrNxtd0qrU2LrMAY6Kr6J5tGWci+VzKTE6Um29BO/HzA7+AHT0GDzZtPVHP5Ceg9hUZ
         LGYOCRQKaLA4tLF3BnsNvyUsPyyR/VXkpHIlUHNhuk2xbhbIW2+yEYCZH6YE8Zr2RbiF
         A5Y4riJNrROcY6BMyt8l0EHcLbBpogQurRRtgw3FrZFzSA7kt7a74QVGYVw4QP8cqw02
         kZpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QzWh/mXf6G5Fr5INTJvXRytqPL/zBujlCdMkS18GyKQ=;
        fh=vdeU6vFhnf4ga3m4WcH6bgiYs2Y0ghBWNkYSgOfrs2o=;
        b=GFpZQ2qZPpKzNa6pgnUH7AFTCFbTB7dG30DKVNxrce1W8B3YRTaokWKpRON+FIUcZy
         jw5S0h6pd+XUCD1ueYhSZUGhIZJjOGsLXrcLmhgunH26GL5WPwmmjuOcz6TXUnTeXBnv
         9QMbvqRuTYnDMe9+b4ufD8hx+s1bw2unAU1fbdgL8CcAAR/LyLLBoZFM/f74RBIf5Pq/
         sAF0AN6MlC/fp7QYUGsewOVfduYDNABZW5YHwpcjQqO9ka/daFYK14JxWhihj7WjYFyh
         +MEW4KlMN6c6AUajvwHLm4+q0QmoEk6Ku5sRj9JCnzNAR+71u7YYn6xgkz4p1bzducDF
         DFPw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792115582; x=1792720382; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QzWh/mXf6G5Fr5INTJvXRytqPL/zBujlCdMkS18GyKQ=;
        b=ofzI6zBHwzkEXU5nMciD9IRbPThHv9VYXu0GW9ph9Cbb99BUn6lKgop8ATnbHvwTKr
         YOlnHXfX81luCgsh/8rvE5nBN33sh6dWijMvO51YITzs+NK8NikYCgWmQULMUDDnHRty
         CSQgY4tBRLdhut5eSrZqmPo6jwCOdOnl3KYUsZs8boHDrvys6f0WAcnLMyE3reVv17Qb
         08u4GVZfY/ajAHkCSiOMlyggTC/BgUrH+1T2Nz9vV7RFL6lnUF2XrtVrq1Ca5DYFQg2A
         v4CQXIUATcII/YjQrtp0KV7+uj33z02Q6QgqDGK+jJpxMdKxyOR8eesKHWj5Dilco1TD
         YIFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792115582; x=1792720382;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=QzWh/mXf6G5Fr5INTJvXRytqPL/zBujlCdMkS18GyKQ=;
        b=TZpU9vrX5gv1dYGOW7O0HDj5KrkjL3QknmjBezux8qEAzUvRaugQGItadP3hUZJJhd
         ljTTenH09G0S6qS32dnl2x6QllvnzB1+08e0uHAOo3Cf7ThQD5NISFMDeI9cWQ3GHdF4
         0lb5nkKjWRiD+KY4zGZ4ErzTf5RgPKhLAcRF7Zj5ado2IPnGa5/pdoPU7X2FYpDKiUMx
         Mf+fjlgV5hDNlAGLAhpFEYdQDFVpRvM1QoOqBaECRBYrHj0VRRtiKnzM+KxPlOs4+pai
         7/W5I3U3JyOKj9T2koORf+wF1JUcyDi9LJxZ4FmGunbq8Mg4BhbCpukkKYrCLBSlQSWY
         TyPw==
X-Forwarded-Encrypted: i=1; AKwUvBwLscBrNNsPHG5mgBFBdmRah4wbiEcwmu+fRdf1QZPlE1Jbn6YWblBAlhSkFf8N4mbpynkvyy+6Q61H9B/4Fg==@lists.infradead.org
X-Gm-Message-State: AFq9FYIOellExkngi0ikkNKNsEHAAzOpPfyQ3d3ihXvXyT77Oxf/0aLb
	CR2RrWfmwyuif5mS3F+xWNugCpHYcW46ZiNzU/fkdhWr1snKpPcS6MNwfhDDQ/ynBT+Z/RXu+DH
	ICAFmH5Y0oFtmhlruITB8B9vW0wM7OCk=
X-Gm-Gg: AYBFou1DU1oMrbNeK5HxXwrV8fba4Xm7cWlgpIy4qZThRbKSTGrUu0HUwR4dB2j2smm
	HHU/1rm45wC5NWXiCqD5ao4KqUJJ4yNrLW5mD9javmH+6G2j7c4WCc49TiQI1m+YAuQtLuncj4g
	xhfzhN7jb6oWRf1zneZqVnwUkheje/r7DfxMOWOn43MQyfIS8j4/z0WCH0U+tw4LA/YDZXIryAX
	BvLugtBGG9TNsU/mLcopsxOu7CvhbcqXkubbonVhL36BdNlRCbT43g5XzXQg1Zc4vvvUKgB8k6f
	LEh/1AsHoMKEf/tLnXO+hzxgqNzQPjN8S62n7V9AximADVLPSN0UvfzWHS/DSSPK4tnTnaV4EGE
	k6WyF64mUHOvo5NjOjQjZu2zXlNnYcKtmOJXxFqa3narbshFwln4ukcsOkxFTTGhOYys=
X-Received: by 2002:a17:902:f641:b0:2e9:5714:608e with SMTP id
 d9443c01a7336-2e957148bb7mr48721225ad.49.1792115581670; Thu, 15 Oct 2026
 18:53:01 -0700 (PDT)
MIME-Version: 1.0
References: <20261015014324.5569-1-phucduc.bui@gmail.com> <ad722297-5ca5-42c5-a07e-59fa958387c1@sirena.org.uk>
In-Reply-To: <ad722297-5ca5-42c5-a07e-59fa958387c1@sirena.org.uk>
From: Bui Duc Phuc <phucduc.bui@gmail.com>
Date: Fri, 16 Oct 2026 08:52:48 +0700
X-Gm-Features: AclHuK85_RuY5Eq4148HpcAJND7CX_R3cPSTmudMqJuFIrc_MXHUz5ZN3dyw0W4
Message-ID: <CAABR9nGU0qW6iMadffrXw86a=ty=FVhw_Ypoa4rQtwOCbepVWg@mail.gmail.com>
Subject: Re: [PATCH v2 00/25] ASoC: Fix constraint return value handling
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_025305_868852_83532901 
X-CRM114-Status: UNSURE (   9.31  )
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
Cc: imx@lists.linux.dev, Alexandre Belloni <alexandre.belloni@bootlin.com>, Heiko Stuebner <heiko@sntech.de>, Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, Xiubo Li <Xiubo.Lee@gmail.com>, Venkata Prasad Potturu <venkataprasad.potturu@amd.com>, Frank Li <Frank.Li@nxp.com>, Cezary Rojewski <cezary.rojewski@intel.com>, Zain Aboobacker <zainaboobacker33@gmail.com>, Nicolas Ferre <nicolas.ferre@microchip.com>, Bjorn Helgaas <bhelgaas@google.com>, Pengpeng Hou <pengpeng@iscas.ac.cn>, Bo Shen <voice.shen@atmel.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, Neo Chang <YLCHANG2@nuvoton.com>, Fabio Estevam <festevam@gmail.com>, Shengjiu Wang <shengjiu.wang@gmail.com>, Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>, Geert Uytterhoeven <geert+renesas@glider.be>, Chris Bainbridge <chris.bainbridge@gmail.com>, Bard Liao <yung-chuan.liao@linux.intel.com>, Takashi Iwai <tiwai@suse.com>, Magnus Damm <magnus.damm@gmail.com>, Vinod Koul <vkoul@kernel.org>, Kees Cook <kees@kernel.org>, Vijendar Mukunda <Vijendar.Mukunda@amd.com>, povik+lin@cutebit.org, linux-rockchip@lists.infradead.org, Charles Keepax <ckeepax@opensource.cirrus.com>, Sascha Hauer <s.hauer@pengutronix.de>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-sound@vger.kernel.org, Nicolin Chen <nicoleotsuka@gmail.com>, Richard Fitzgerald <rf@opensource.cirrus.com>, Sang-Heon Jeon <ekffu200098@gmail.com>, wangdicheng <wangdicheng@kylinos.cn>, Syed Saba Kareem <syed.sabakareem@amd.com>, Biju Das <biju.das.jz@bp.renesas.com>, Jaroslav Kysela <perex@perex.cz>, Peter Ujfalusi <peter.ujfalusi@linux.intel.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Kai Vehmanen <kai.vehmanen@linux.intel.com>, patches@opensource.cirrus.com, Linus Walleij <linusw@kernel.org>, linuxppc-dev@lists.ozlabs.org, Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Md Shofiqul Islam <shofiqtest@gmail.com>, asahi@lists.linux.dev, Pengutronix Kernel Team <kernel@pengutronix.de>, Andrei Simion <andrei.simion@microchip.com>, u.kleine-koenig@baylibre.com, David Rhodes <david.rhodes@cirrus.com>, Hemanth Selam <hemanth.selam@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Mark,

> > Changes in v2:
> >  - Add Reviewed-by tags from Vijendar Mukunda and Chancel Liu.
> >  - Remove redundant integer constraints already applied by
> >    snd_dmaengine_pcm_open().
>
> v1 was applied, please send incremental changes for the differences.

Thank you for applying v1.
I'll prepare and send the incremental changes soon.

Best regards,
Phuc

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
