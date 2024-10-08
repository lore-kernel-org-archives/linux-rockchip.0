Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7194CEFC53
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 20:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3XgAlaCY7uatwbyCJHUiQMqRXwhlNEyURCEof+AV4Y=; b=YEMmqTo4M+2FQZ
	UeUVT5EgiCFmOJ1cpaaitE6U2PyJtmddP3+TegW3r92rfDXKTm+JVB8g85ltWtUSG05AYWPmRrVc8
	KQTyQs0M3WBN3Ukp2u/Pk7Jt7Ms0UseO7YuTRUKawWGKkyD4k+vucqqFMQuVqJrsIZMsSa8c+W3ll
	chQu3uypUrxIEGTLdVoXoHPLbWiT01gFpjKA/3Ht9QRIIowEGuk0PmKPlZPdtnkZ8oFJh1ysttC1z
	5hDX3Y7qJ5//YUtBYU3Y/FSoExSz10vlNdZK+EWffyBjrMCq2ybv5plQG8qVqqQk1c3JZjFN92MVd
	lcbcrr5BRtTWvd1lUgMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syGh9-000000072Ew-3PKV;
	Tue, 08 Oct 2024 20:20:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syGh8-000000072ES-00sV;
	Tue, 08 Oct 2024 20:20:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=WBogwjdRaNv2MRfiO9IzluSvCD5ItLH+5gKaouSEMxc=; b=LHk/Fg9SIBIebIoMz0WYH0Jt8B
	K1rCEwE/ukwb/gh0owV4c3uv+evv4Gabys7WUQt34wpYM89eXn36Wb94p2hrAnXHMvJtp0byIYBae
	em7z5A+s37rwNbPqJZPOBJ9ClVmz7v/1o0HXhl5NLOFJkDdocbX4K3wmRugM0lg4FJMCvvfRISK26
	G4z4986oPKJ+EPZb2/gqKctgjwjc0s2BkfRwA3vh9DnhFMeinGgU5NM4TLJKJcOubnqT7bZO4pXVv
	soAsxC/pAIndk/evoSAspAp5fMjff1BbBZ4mgTOrIxjAu2CdCAicRDE+VH3LXGnZpSqSm0TV0hhUF
	5ztJzn5g==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGh4-0007bB-CQ; Tue, 08 Oct 2024 22:20:30 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
 Diederik de Haas <didi.debian@cknow.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Andy Yan <andyshrk@163.com>, Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH 5/8] arm64: dts: rockchip: Fix bluetooth properties on rk3566 box
 demo
Date: Tue, 08 Oct 2024 22:20:29 +0200
Message-ID: <9353258.CDJkKcVGEf@diego>
In-Reply-To: <D4PTPHH4ELA3.34KQLVNGTP15E@cknow.org>
References: <20240930210112.1993625-1-heiko@sntech.de> <4607042.LvFx2qVVIh@diego>
 <D4PTPHH4ELA3.34KQLVNGTP15E@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_132034_092324_3757A155 
X-CRM114-Status: GOOD (  29.86  )
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

Am Montag, 7. Oktober 2024, 21:33:11 CEST schrieb Diederik de Haas:
> Hi Heiko,
> =

> On Mon Oct 7, 2024 at 6:04 PM CEST, Heiko St=FCbner wrote:
> > Am Montag, 7. Oktober 2024, 17:27:12 CEST schrieb Diederik de Haas:
> > > On Mon Sep 30, 2024 at 11:01 PM CEST, Heiko Stuebner wrote:
> > > > The expected clock-name is different (ext_clock -> extclk) and the =
wakeup
> > > =

> > > According to "brcm,bluetooth.yaml", 'extclk' is deprecated in favor of
> > > 'txco', so it seems better to use that?
> > > Same would be true for Rock960 boards (patch 6 of this series).
> >
> > thanks for that catch. I mainly stumbled upon the "_" underscore, found=
 the
> > clockname without but didn't take into account that there was a depreca=
ted
> > flag set in the binding :-)
> =

> Doing research for another improvement, I stumbled upon this commit:
> =

> ebceec271e55 ("arm64: dts: rockchip: Fix Wifi/Bluetooth on ROCK Pi 4 boar=
ds")
> =

> with the following diff:
> =

> ```
>  	sdio_pwrseq: sdio-pwrseq {
>  		compatible =3D "mmc-pwrseq-simple";
>  		clocks =3D <&rk808 1>;
> -		clock-names =3D "ext_clock";
> +		clock-names =3D "lpo";
>  		pinctrl-names =3D "default";
>  		pinctrl-0 =3D <&wifi_enable_h>;
>  		reset-gpios =3D <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
> ```
> =


The brcm,bluetooth binding is pretty clear, it's
txco - for an "external reference clock, not a crystal"
lpo - for a low power 32.768 kHz clock.

The rk808 and also the pmucru are both "not crystals", so I'll just go
with the "txco".

The hci_bcm driver also handles txco and extclk the same, so there won't
be a behaviour change with existing code.


Heiko

> But do read the full git commit message.
> =

> The corresponding bluetooth node had 'lpo' as new value for
> 'clock-names' though ... from "ext_clock", but it also changed
> its compatible, so it's not the same. For details, see commit
> f471b1b2db08 ("arm64: dts: rockchip: Fix Bluetooth on ROCK Pi 4 boards")
> =

> So it's possible the change needs to be more extensive.
> And a Tested-by tag from someone with the board is probably a good idea.
> =

> Regards,
>   Diederik
> =

> > > > gpio properties are named differently when changing from vendor-tre=
e to
> > > > mainline. So fix those to match the binding.
> > > >
> > > > Fixes: 2e0537b16b25 ("arm64: dts: rockchip: Add dts for rockchip rk=
3566 box demo board")
> > > > Cc: Andy Yan <andyshrk@163.com>
> > > > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> > > > ---
> > > >  arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts | 6 +++---
> > > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arc=
h/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > > > index 0c18406e4c59..dd6fe964d618 100644
> > > > --- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > > > +++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > > > @@ -449,9 +449,9 @@ &uart1 {
> > > >  	bluetooth {
> > > >  		compatible =3D "brcm,bcm43438-bt";
> > > >  		clocks =3D <&pmucru CLK_RTC_32K>;
> > > > -		clock-names =3D "ext_clock";
> > > > -		device-wake-gpios =3D <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> > > > -		host-wake-gpios =3D <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> > > > +		clock-names =3D "extclk";
> > > > +		device-wakeup-gpios =3D <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> > > > +		host-wakeup-gpios =3D <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> > > >  		shutdown-gpios =3D <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
> > > >  		pinctrl-names =3D "default";
> > > >  		pinctrl-0 =3D <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
> > > =

> > > =

> =

> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
