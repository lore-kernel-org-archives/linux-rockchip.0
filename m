Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7230CFB440
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 19:37:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wEyaREJIAKAtqaKjqqXhgix6P0exW+1L6vHSx8fnh54=; b=GpWm6kysdU+esKLGZv4DYpXPgh
	YFrRW79KQWzbupPtx0ZZKfo3B0GRmj1ovDuYysOfUI1L+C8h9VhHLxO7ppWPrjuq+hUgh7hl1osdp
	INYP2pYbWsDO1TX5WQbtymRt6GQdMkIdoQXH/1V/JNLi9ivr6pLqKHcBzXeRdK+Qgu1ZWoYiheDtP
	MYpyxRBTBXQPUMsVWxQgY/sZ0cCEN2mNRARSLVHj7zQ4Bq1HBHETGDYTO3SKFHsQav+S908SXyXD9
	k4zK4wrmidUbSkFmfsZ+WPhUDIScrwP82uEe9fCiYceDrlAUPuUNNsb1AdEqZz3rCX3/Gxr2a6vQB
	C9zmZlBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxtY3-00000003dOc-2ejS;
	Mon, 07 Oct 2024 19:37:39 +0000
Received: from out-185.mta0.migadu.com ([91.218.175.185])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxtTx-00000003cet-3q9N
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 19:33:30 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1728329602;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=aBH1aQ4nc/IQjwDY3/G/OgIR+eVLXifVz4iynLmjUxc=;
	b=UwEilvkzZczoN7wwW8/SaxwFulUisjVSiWmlP4v2ZiSgMZ4QO3uboV85Xt9k5k48G10h0N
	71w0SV5krgeLsjKUbvRdT1iN8QdkDsTRoEF2lpcNsRFjX8lMJ4kLJi8La+EFCT/V/Trj9G
	f2IeuYrSlgHNRTSrOUJFcRdvBY32oA6xwmaPyLQUXOlvGaAP94bEPzTIzg75VTgPLsmRXU
	UTLSC6hfoJlcULnblJGJPWl+7jQyXiBu2jp+vpxqNEogFXApO5jA6MrP/R1Yz3yTEBywW2
	P/n4IKOAZ4JvCxCuzjPN8FJQm0vNZIsywM5FpMWa7iN0JV87ZarJfPg0H2Od6w==
Date: Mon, 07 Oct 2024 21:33:11 +0200
Message-Id: <D4PTPHH4ELA3.34KQLVNGTP15E@cknow.org>
Cc: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 "Andy Yan" <andyshrk@163.com>, "Diederik de Haas" <didi.debian@cknow.org>
Subject: Re: [PATCH 5/8] arm64: dts: rockchip: Fix bluetooth properties on
 rk3566 box demo
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 <linux-rockchip@lists.infradead.org>
References: <20240930210112.1993625-1-heiko@sntech.de>
 <20240930210112.1993625-6-heiko@sntech.de>
 <D4POH599C91R.OQUBX190GASQ@cknow.org> <4607042.LvFx2qVVIh@diego>
In-Reply-To: <4607042.LvFx2qVVIh@diego>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_123326_712404_89A25EA0 
X-CRM114-Status: GOOD (  22.55  )
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
Content-Type: multipart/mixed; boundary="===============6204634286591595412=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============6204634286591595412==
Content-Type: multipart/signed;
 boundary=f45485c3e81673a977855857d4940c80f860ee3c09a314d29ce1aa4d9a4b;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--f45485c3e81673a977855857d4940c80f860ee3c09a314d29ce1aa4d9a4b
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Heiko,

On Mon Oct 7, 2024 at 6:04 PM CEST, Heiko St=C3=BCbner wrote:
> Am Montag, 7. Oktober 2024, 17:27:12 CEST schrieb Diederik de Haas:
> > On Mon Sep 30, 2024 at 11:01 PM CEST, Heiko Stuebner wrote:
> > > The expected clock-name is different (ext_clock -> extclk) and the wa=
keup
> >=20
> > According to "brcm,bluetooth.yaml", 'extclk' is deprecated in favor of
> > 'txco', so it seems better to use that?
> > Same would be true for Rock960 boards (patch 6 of this series).
>
> thanks for that catch. I mainly stumbled upon the "_" underscore, found t=
he
> clockname without but didn't take into account that there was a deprecate=
d
> flag set in the binding :-)

Doing research for another improvement, I stumbled upon this commit:

ebceec271e55 ("arm64: dts: rockchip: Fix Wifi/Bluetooth on ROCK Pi 4 boards=
")

with the following diff:

```
 	sdio_pwrseq: sdio-pwrseq {
 		compatible =3D "mmc-pwrseq-simple";
 		clocks =3D <&rk808 1>;
-		clock-names =3D "ext_clock";
+		clock-names =3D "lpo";
 		pinctrl-names =3D "default";
 		pinctrl-0 =3D <&wifi_enable_h>;
 		reset-gpios =3D <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
```

But do read the full git commit message.

The corresponding bluetooth node had 'lpo' as new value for
'clock-names' though ... from "ext_clock", but it also changed
its compatible, so it's not the same. For details, see commit
f471b1b2db08 ("arm64: dts: rockchip: Fix Bluetooth on ROCK Pi 4 boards")

So it's possible the change needs to be more extensive.
And a Tested-by tag from someone with the board is probably a good idea.

Regards,
  Diederik

> > > gpio properties are named differently when changing from vendor-tree =
to
> > > mainline. So fix those to match the binding.
> > >
> > > Fixes: 2e0537b16b25 ("arm64: dts: rockchip: Add dts for rockchip rk35=
66 box demo board")
> > > Cc: Andy Yan <andyshrk@163.com>
> > > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts | 6 +++---
> > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arch/=
arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > > index 0c18406e4c59..dd6fe964d618 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > > @@ -449,9 +449,9 @@ &uart1 {
> > >  	bluetooth {
> > >  		compatible =3D "brcm,bcm43438-bt";
> > >  		clocks =3D <&pmucru CLK_RTC_32K>;
> > > -		clock-names =3D "ext_clock";
> > > -		device-wake-gpios =3D <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> > > -		host-wake-gpios =3D <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> > > +		clock-names =3D "extclk";
> > > +		device-wakeup-gpios =3D <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> > > +		host-wakeup-gpios =3D <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> > >  		shutdown-gpios =3D <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
> > >  		pinctrl-names =3D "default";
> > >  		pinctrl-0 =3D <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
> >=20
> >=20


--f45485c3e81673a977855857d4940c80f860ee3c09a314d29ce1aa4d9a4b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZwQ3egAKCRDXblvOeH7b
bgTcAP930ZcE2Y9ydg+9eyp21Y276gBCSMnNd/9fwfhatRhDAwEA2iP1ybJzHWpH
plaMY5VPnFwIszk+SWr7IPpaELdnnwE=
=8FlG
-----END PGP SIGNATURE-----

--f45485c3e81673a977855857d4940c80f860ee3c09a314d29ce1aa4d9a4b--


--===============6204634286591595412==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6204634286591595412==--

