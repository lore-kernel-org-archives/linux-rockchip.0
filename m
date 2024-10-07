Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB3ECCFB43F
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 14:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a/NbkUDZCnYsYcLxtVxPMbuCHHu9KDRgsrV3HPnHX7w=; b=yOAwHHlxhP5EEXsV+v27VFAkA5
	9q7l0DmLlMbc4BNs8SW42vGPRCvqXJQPFvLDhfyqNRi0W12E+h1rzqQx2YXNtWuFn6P1EFBMTHd1s
	3/4wPYhv7dfGo8Zl+jjk77QvIYPX2g02hkeqMBQN/YaUE3/vt6KRfNJU4W4hz8F/JUDfXN1oX4obf
	tsQH4pHwhyq0e9NWCCfRLTvuiw/wCbRJTD0kgFdljm22VGOL38mq5sOarvpk01jWPnMk+r+g6ChYV
	E9OD+cIjJoHBApyhzixnVwh+DgK/tOC78NTMraoznhz7iEHX3S6bsHfGMKHYRIfNA0R5WzkzMG1zq
	SipDJUNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxomG-00000002jvV-1e0F;
	Mon, 07 Oct 2024 14:32:00 +0000
Received: from out-186.mta0.migadu.com ([2001:41d0:1004:224b::ba])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxodK-00000002hLM-22XV
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 14:22:48 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1728310963;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=APN3Rf1CHc5QKBHwClsLIHA5EOjpyOHZWT2nCBIU7ZI=;
	b=dvdygJV4R8u3j7v2JrQ3vQApLXeDKapTyGuAv+buKi9WSph4x6JkFTQ1nJo9N6+oRwCI4n
	ait7Y4J96tHR8j63wl8+kx5TcN9OzQnL0i+Uv67Vyb2X2+6mx2VDn/o1ges9nilHiA7F/o
	i9OF0nQCHF8aBy+QH3Bnsjhxcy3Bw6kDOFsFvOciVFwAXWmIitilXsn7+pZwK+ObsgtcMp
	A5Pqs/LRVcZucKCWffwPssZ6Q8pIZRk48I1CbiYpP2gaFz7TNvzS0350KS+qLHpQywmyhf
	R0ZEZS2uJUzFqV1yr+omsLgfKvo5UoOTfx1gQGW4xEIZ+nxSxWRGtKW5SKJB0w==
Date: Mon, 07 Oct 2024 16:22:32 +0200
Message-Id: <D4PN3MEAFIFU.1BAJ732GCUCTR@cknow.org>
Cc: "Dragan Simic" <dsimic@manjaro.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Fix wakeup prop names on brcm
 BT nodes
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>
References: <20241007105657.6203-2-didi.debian@cknow.org>
 <20241007105657.6203-5-didi.debian@cknow.org> <6096052.lOV4Wx5bFT@diego>
In-Reply-To: <6096052.lOV4Wx5bFT@diego>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_072247_248260_F3762066 
X-CRM114-Status: GOOD (  13.96  )
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
Content-Type: multipart/mixed; boundary="===============5372070701105567207=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============5372070701105567207==
Content-Type: multipart/signed;
 boundary=51cba31023c492486e1820f7b7082cd7fad1f9f03d93a5c097c580e3c009;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--51cba31023c492486e1820f7b7082cd7fad1f9f03d93a5c097c580e3c009
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi,

On Mon Oct 7, 2024 at 4:06 PM CEST, Heiko St=C3=BCbner wrote:
> Am Montag, 7. Oktober 2024, 12:28:18 CEST schrieb Diederik de Haas:
> > The "brcm,bluetooth.yaml" binding has 'device-wakeup-gpios' and
> > 'host-wakeup-gpios' property names.
> > Fix the ones where '*-wake-gpios' was used.
> >=20
> > Note that the "realtek,bluetooth.yaml" binding does use the
> > '*-wake-gpios' property names.
> >=20
> > Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
>
> parts of the commit conflict with a previous one from me ;-) [0]
>
>
> [0] https://lore.kernel.org/linux-arm-kernel/20240930210112.1993625-7-hei=
ko@sntech.de/T/#m59bdb72d6c22f85fe79716761fedaea2a2e1c73e

Haha, I actually did base my changes on one of your patch submissions
("rk3328 cru dt-binding conversion"), but that's the 'wrong' one ;-)

Will drop the rk3566-box-demo.dts one in v2.

Cheers,
  Diederik

> > ---
> >  arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts  | 4 ++--
> >  arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi | 4 ++--
> >  2 files changed, 4 insertions(+), 4 deletions(-)
> >=20
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arch/ar=
m64/boot/dts/rockchip/rk3566-box-demo.dts
> > index 0c18406e4c59..16fd98698db3 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > @@ -450,8 +450,8 @@ bluetooth {
> >  		compatible =3D "brcm,bcm43438-bt";
> >  		clocks =3D <&pmucru CLK_RTC_32K>;
> >  		clock-names =3D "ext_clock";
> > -		device-wake-gpios =3D <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> > -		host-wake-gpios =3D <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> > +		device-wakeup-gpios =3D <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> > +		host-wakeup-gpios =3D <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> >  		shutdown-gpios =3D <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
> >  		pinctrl-names =3D "default";
> >  		pinctrl-0 =3D <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/a=
rm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> > index de4c082dce07..7381bb751852 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> > @@ -684,8 +684,8 @@ bluetooth {
> >  		compatible =3D "brcm,bcm43438-bt";
> >  		clocks =3D <&rk817 1>;
> >  		clock-names =3D "lpo";
> > -		device-wake-gpios =3D <&gpio0 RK_PC2 GPIO_ACTIVE_HIGH>;
> > -		host-wake-gpios =3D <&gpio0 RK_PC3 GPIO_ACTIVE_HIGH>;
> > +		device-wakeup-gpios =3D <&gpio0 RK_PC2 GPIO_ACTIVE_HIGH>;
> > +		host-wakeup-gpios =3D <&gpio0 RK_PC3 GPIO_ACTIVE_HIGH>;
> >  		reset-gpios =3D <&gpio0 RK_PC4 GPIO_ACTIVE_LOW>;
> >  		pinctrl-0 =3D <&bt_enable_h>, <&bt_host_wake_l>, <&bt_wake_h>;
> >  		pinctrl-names =3D "default";
> >=20


--51cba31023c492486e1820f7b7082cd7fad1f9f03d93a5c097c580e3c009
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZwPurAAKCRDXblvOeH7b
bixPAQCfSDhz9tB5IlL/XoL37u8HLNi6YjiJx+tRTf4u0PzktwD/W+7lNx2K9Jr2
LYR4hUu5xwelo4J1/sYXCF9EbsR8JQY=
=Nmgp
-----END PGP SIGNATURE-----

--51cba31023c492486e1820f7b7082cd7fad1f9f03d93a5c097c580e3c009--


--===============5372070701105567207==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5372070701105567207==--

