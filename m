Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A256D12D53
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Nov 2024 21:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hNCqxdPJc9t7vyAu+MWai604ZK+LyT5ptvCMo8302OE=; b=lCzb8gxhm/T06e
	iXq25fFrpgKQXXkdOeWTKb3cj20tTmFbE326tgZjzh1+4hvK/9WLvREngxRaYuOJfCXZcO1F0Uypk
	yZEkdJO2Tqme7FhfMyEiY5dhGr1fqpSdy7UWjMl7Zxp196tiUGzHxE2T0QKDzX3XT+O2fgLcwVdDH
	ixMrUzIpZDahm+XfEHdZehdRpVCDH0MdnsTTJTI1cGPh8G/yNuaiqJ5Gg+6vJGF5N5ObVKLnv4SG8
	YvZsSygrmoZhDCm4bL4IjGEmYIQKVEELL5CHjgMJFXYPY+6js2M5uHxP0nKWCC1S5tMjHmeW+lbBH
	mBARoZpGT51W4ZEQ1Y2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAFIe-0000000Fc7p-1IOE;
	Sun, 10 Nov 2024 21:16:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAFIa-0000000Fc6u-2SNL;
	Sun, 10 Nov 2024 21:16:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=+rZ6R6+emkG1vIh+xndKO9B1+qYVh3QHCutdQutXlKE=; b=NnUPrlCTnmzmH/8JFVsLNY/gVt
	Q+NZJrc6k+eaANoAusGXscEaxYD0IvNNWFYn46mTOkdwv9jPAoIVs9Db1NYV2k4KhUcrSpT5w4Mv7
	/QwB+FzrhW7awQ8yFqx0SaNH4QOZNjNqMeuDvqjhL/9lp0NbNLrIqn+HfFruoQOvq0Yxm4F4e7+8F
	sKRnQWeE50imeZcub+IfMd2f0sS9o1bJIWAaAWjlXRMVpsWwB+D6Io8pcS07uq9+0mmbJ6o8srZrr
	BqGnPE7YXZ/GywRajtSpzxgMUr3vfgjWe0WRI5laYIagGllkyELSBO1/WgLIZQTMCXmjoFEyRop20
	Db2Xlsig==;
Received: from i53875b28.versanet.de ([83.135.91.40] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tAFIY-0006tu-Sn; Sun, 10 Nov 2024 22:16:42 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix vdd_gpu voltage constraints on
 PinePhone Pro
Date: Sun, 10 Nov 2024 22:16:42 +0100
Message-ID: <865640012.0ifERbkFSE@diego>
In-Reply-To: <fb3700f2d67c7f062c66cb8eb0f59b17@manjaro.org>
References: <0718feb8e95344a0b615f61e6d909f6e105e3bf9.1731264205.git.dsimic@manjaro.org>
 <4386271.ejJDZkT8p0@diego> <fb3700f2d67c7f062c66cb8eb0f59b17@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241110_131644_673645_4B7C1883 
X-CRM114-Status: GOOD (  30.68  )
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

Am Sonntag, 10. November 2024, 21:47:15 CET schrieb Dragan Simic:
> Hello Heiko,
> =

> On 2024-11-10 21:08, Heiko St=FCbner wrote:
> > Am Sonntag, 10. November 2024, 19:44:31 CET schrieb Dragan Simic:
> >> The regulator-{min,max}-microvolt values for the vdd_gpu regulator in =

> >> the
> >> PinePhone Pro device dts file are too restrictive, which prevents the =

> >> highest
> >> GPU OPP from being used, slowing the GPU down unnecessarily.  Let's =

> >> fix that
> >> by making the regulator-{min,max}-microvolt values less strict, using =

> >> the
> >> voltage range that the Silergy SYR838 chip used for the vdd_gpu =

> >> regulator is
> >> actually capable of producing. [1][2]
> >> =

> >> This also eliminates the following error messages from the kernel log:
> >> =

> >>   core: _opp_supported_by_regulators: OPP minuV: 1100000 maxuV: =

> >> 1150000, not supported by regulator
> >>   panfrost ff9a0000.gpu: _opp_add: OPP not supported by regulators =

> >> (800000000)
> >> =

> >> These changes to the regulator-{min,max}-microvolt values make the =

> >> PinePhone
> >> Pro device dts consistent with the dts files for other Rockchip =

> >> RK3399-based
> >> boards and devices.  It's possible to be more strict here, by =

> >> specifying the
> >> regulator-{min,max}-microvolt values that don't go outside of what the =

> >> GPU
> >> actually may use, as the consumer of the vdd_gpu regulator, but those =

> >> changes
> >> are left for a later directory-wide regulator cleanup.
> > =

> > With the Pinephone Pro using some sort of special-rk3399, how much of
> > "the soc variant cannot use the highest gpu opp" is in there, and just =

> > the
> > original implementation is wrong?
> =

> Good question, I already asked it myself.  I'm unaware of any kind of
> GPU-OPP-related restrictions when it comes to the PinePhone-Pro-specific
> RK3399S.  Furthermore, "the word on the street" is that the RK3399S can
> work perfectly fine even at the couple of "full-fat" RK3399 CPU OPPs
> that are not defined for the RK3399S, and the only result would be the
> expected higher power consumption and a bit more heat generated.

In the past we already had people submit higher cpu OPPs with the
reasoning "the cpu runs fine with it", but which where outside of the
officially specified frequencies and were essentially overclocking the
CPU cores and thus possibly reducing its lifetime.

So "it runs fine" is a bit of thin argument ;-) . I guess for the gpu it
might not matter too much, compared to the cpu cores, but I still like
the safe sides - especially for the mainline sources.

I guess we'll wait for people to test the change and go from there ;-) .


> This just reaffirms that no known GPU OPP restrictions exist.  Even
> if they existed, enforcing them _primarily_ through the constraints of
> the associated voltage regulator would be the wrong approach.  Instead,
> the restrictions should be defined primarily through the per-SoC-variant
> GPU OPPs, which are, to my best knowledge, not known to be existing for
> the RK3399S SoC variant.

Yes, that is what I was getting at, if that is a limiting implementation
it is of course not done correctly, but I'd like to make sure.

Of course Pine's development model doesn't help at all in that regard.
There isn't even a "vendor" kernel source it seems. [0]


Heiko


[0] https://wiki.pine64.org/wiki/PinePhone_Pro_Development#Kernel
states "There's no canonical location for Pinephone Pro Linux kernel develo=
pment,"




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
