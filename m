Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3235FC27C53
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Jun 2024 20:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L6Y6sG50w7bWbnI4dOG3CHS5hOJmwLTdHYYryetSDbI=; b=tSOH/rE6zwqvXR
	R1cX95u+Oz6DCAH0YiIhPFC81Y7wKXsn2gy75fgCVPdKrp1OL8WCmfrFrGm3U4JhHuHC6lhLRbZ99
	yC8Y2rlFVo88VjPLJZhzzEpR8eQ7fGYEUHvEHkm5xqHFGt/GWssCAWDTI63HYODa2k8GMztgj9jTQ
	XcjZ4vYRhgMIjQrFCiTsAxLz37YFhdz+uZ442xHvki3M320F2XWcDLcs6oKXOqdZWpmCutwlApB5x
	4gyaEOvFYkr+KNsg74ILUsmVlZJH9IjdjIakvgDtmjT9qJCWlmXIMhp08iXlCmtvI2bpIFl0787pA
	2qwAIU/hFAsr01wioQmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sL7Jl-0000000CkI6-2nFw;
	Sat, 22 Jun 2024 20:26:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sL7Jh-0000000CkGr-0ut9;
	Sat, 22 Jun 2024 20:26:34 +0000
Received: from i53875a87.versanet.de ([83.135.90.135] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sL7JC-0007Ef-VY; Sat, 22 Jun 2024 22:26:03 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@kernel.org>,
 Dragan Simic <dsimic@manjaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
 Daniel Golle <daniel@makrotopia.org>, Aurelien Jarno <aurelien@aurel32.net>,
 Olivia Mackall <olivia@selenic.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Anand Moon <linux.amoon@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Martin Kaiser <martin@kaiser.cx>, Ard Biesheuvel <ardb@kernel.org>,
 linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] hwrng: add Rockchip SoC hwrng driver
Date: Sat, 22 Jun 2024 22:26:01 +0200
Message-ID: <3660160.WbyNdk4fJJ@diego>
In-Reply-To: <07fba45d99e9eabf9bcca71b86651074@manjaro.org>
References: <cover.1718921174.git.daniel@makrotopia.org>
 <ead26406-dd3b-491c-b6ab-11002a2db11a@kernel.org>
 <07fba45d99e9eabf9bcca71b86651074@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240622_132633_283763_B901F7D3 
X-CRM114-Status: GOOD (  28.97  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Samstag, 22. Juni 2024, 12:29:33 CEST schrieb Dragan Simic:
> Hello Uwe,
> =

> On 2024-06-22 00:16, Uwe Kleine-K=F6nig wrote:
> > On 6/21/24 20:13, Dragan Simic wrote:
> >> On 2024-06-21 11:57, Krzysztof Kozlowski wrote:
> >>> On 21/06/2024 03:25, Daniel Golle wrote:
> >>>> From: Aurelien Jarno <aurelien@aurel32.net>
> >> =

> >> [snip]
> >> =

> >>>> +    pm_runtime_set_autosuspend_delay(dev, =

> >>>> RK_RNG_AUTOSUSPEND_DELAY);
> >>>> +    pm_runtime_use_autosuspend(dev);
> >>>> +    pm_runtime_enable(dev);
> >>>> +
> >>>> +    ret =3D devm_hwrng_register(dev, &rk_rng->rng);
> >>>> +    if (ret)
> >>>> +        return dev_err_probe(&pdev->dev, ret, "Failed to register =

> >>>> Rockchip hwrng\n");
> >>>> +
> >>>> +    dev_info(&pdev->dev, "Registered Rockchip hwrng\n");
> >>> =

> >>> Drop, driver should be silent on success.
> >> =

> >> I respectfully disagree.  Many drivers print a single line upon
> >> successful probing, which I find very useful.  In this particular
> >> case, it's even more useful, because some people may be concerned
> >> about the use of hardware TRNGs, so we should actually make sure
> >> to announce it.
> > =

> > I agree to Krzysztof here. From the POV of a driver author, your own
> > driver is very important and while you write it, it really interests
> > *you* if the driver is successfully probed. However from a system
> > perspective these are annoying: There are easily >50 devices[1] on a
> > system, if all of these print a message in probe, you have little =

> > chance
> > to see the relevant messages. Even if every driver author thinks their
> > work is a special snow flake that is worth announcing, in practice =

> > users
> > only care about your driver if there is a problem. Additionally each
> > message takes time and so delays the boot process. Additionally each
> > message takes place in the printk ring buffer and so edges out earlier
> > messages that might be more important.
> =

> Well, I don't find those messages annoying, for the drivers I've had
> nothing to do with.  Also, in my experience, 99.9% of users don't care
> about the kernel messages at all, be it everything hunky-dory, or be
> it something really wrong somewhere.
> =

> > So +1 for dropping the dev_info() or at least using dev_debug() for it.

Just for 2ct ... I'm also in the don't print too much camp ;-) .
When parsing kernel logs to see where things fail, messages just
telling me about sucesses make things more difficult.

So really this message should be dropped or at least as Uwe suggests
made a dev_dbg.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
