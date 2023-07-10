Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA46FEB64DA
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 15:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tvbQVDqsve3w0Xm2O6AnwLmY3K662aXvXONW+yDnXJk=; b=zf4K2Hwr+kSIFz
	AUz1VWgkEnG1xB3epwzbx7Cph0uHne90LMckcrY1wyOzdWoCmTuWAxbftQyL3YKJx2wRi/OEENw79
	utJuqfPrUzxQH0gaNfLj/sAEkYqRUrUfHGjie1J5XxUBV8mkhoE4Z57wmrA1N4qrcH7rrf1F4fYOK
	XYA0pHqMJycurdeWy3NvQTT0HrqydNtVcvk6xfwrQ54zeQYlkofBm57uSN61TgTP6s9MPVnQiIKTu
	Aob0JaxLDFTjhZZL3V9isRNDULBgJ0JsCzQtAxP8FNzTkx2dKLDGmZP6NyL9/H9Zw8Zigpiq3b8oY
	mqXN1bu2gAVk9edYwWgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIt05-00C2GC-0G;
	Mon, 10 Jul 2023 15:40:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIt02-00C2F1-1Z;
	Mon, 10 Jul 2023 15:40:31 +0000
Received: from i53875a50.versanet.de ([83.135.90.80] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qIszV-0001o1-8T; Mon, 10 Jul 2023 17:39:57 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Mark Kettenis <mark.kettenis@xs4all.nl>, robh+dt@kernel.org,
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: d3adme4t@gmail.com, macromorgan@hotmail.com, jbx6244@gmail.com,
 f.kardame@manjaro.org, amadeus@jmu.edu.cn, linux.amoon@gmail.com,
 aurelien@aurel32.net, anarsoul@gmail.com, wiagn233@outlook.com,
 frattaroli.nicolas@gmail.com, strit@manjaro.org, luiz.von.dentz@intel.com,
 zonyitoo@gmail.com, wens@csie.org, jensenhuang@friendlyarm.com,
 lasstp5011@gmail.com, frank-w@public-files.de, pgwipeout@gmail.com,
 leo@nabam.net, andyshrk@163.com, michael.riesch@wolfvision.net,
 jonas@kwiboo.se, festevam@denx.de, tobetter@gmail.com,
 jagan@amarulasolutions.com, cnsztl@gmail.com,
 cristian.ciocaltea@collabora.com, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH] arm64: dts: rockchip: Drop invalid regulator-init-microvolt
 property
Date: Mon, 10 Jul 2023 17:39:55 +0200
Message-ID: <4519023.cEBGB3zze1@phil>
In-Reply-To: <87wmz7q1fr.fsf@bloch.sibelius.xs4all.nl>
References: <20230707162217.675390-1-cristian.ciocaltea@collabora.com>
 <168899855919.1747213.9998138836668928892.b4-ty@sntech.de>
 <87wmz7q1fr.fsf@bloch.sibelius.xs4all.nl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_084030_528217_27CCC758 
X-CRM114-Status: GOOD (  20.94  )
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

Am Montag, 10. Juli 2023, 16:35:36 CEST schrieb Mark Kettenis:
> > From: Heiko Stuebner <heiko@sntech.de>
> > Date: Mon, 10 Jul 2023 16:16:16 +0200
> > 
> > On Fri, 7 Jul 2023 19:22:17 +0300, Cristian Ciocaltea wrote:
> > > The 'regulator-init-microvolt' property is not currently supported by
> > > any driver, it was simply carried on from downstream kernels.
> > > 
> > > The problem is also indicated by the following dtbs_check warning:
> > > 
> > >   rk3588-rock-5b.dtb: pmic@0: regulators:dcdc-reg4: Unevaluated properties are not allowed ('regulator-init-microvolt' was unexpected)
> > > 
> > > [...]
> > 
> > Applied, thanks!
> > 
> > [1/1] arm64: dts: rockchip: Drop invalid regulator-init-microvolt property
> >       commit: 4d08b19629495b29601991d09d07865694c25199
> 
> This property *is used* by the drivers in U-Boot.  Dropping this from
> the Linux DTBs will likely result in broken boards the next time the
> U-Boot DTBs are synched again from Linux.  At least that is what
> happened before...
> 
> I think the right solution is to add this property to the DT binding
> instead.

I do have this vague memory of this coming up in the past, though don't
remember what the resolution was then? Though it definitly doesn't look
like the property was added to the binding in the meantime.

Also I think that setting up initial regulator state would be (and
seemingly is) for firmware to handle, so that property should instead
be in the -uboot.dtsi.

That DT isn't a configuration-space also is a decade long mantra.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
