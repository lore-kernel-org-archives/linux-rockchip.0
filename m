Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8D06CFB441
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 14:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h7RHlM3IKqRXv2BbLW85pl/QgZcumz6Aj02DKAS+274=; b=vkmvTPcYGnBP32BHBIlhYJsD8N
	/I3Br54KQbTaalvQHXfVS0u7xm1Os/X79mD4feOInXcCbsumjGNw7itq8wW2bkcH1pmLw3U7Mw+6x
	HjvNpARG3xfIz81fGaDZshn4hYDXNyQJXQFrEpX9qHxstYpT3sk5NfdVXaVNYlcv4dUdyV0YIQutJ
	Li6xWfj9i6eLF7eveXt4v1WdeJgEpxDSB0FJgq+U+ZwpkVUoh3xyNyIrgEdqvEuREZ3nl8sfTmWaK
	if+suSh4ZZPfZR3SOpxNExgIQQm+JCNaj/7mVPvLwOT+s02hxZ0kE8DXWNiBf9amJbg/QYG98CJpC
	8t0700/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxorc-00000002l3j-1anp;
	Mon, 07 Oct 2024 14:37:32 +0000
Received: from out-186.mta0.migadu.com ([2001:41d0:1004:224b::ba])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxoiZ-00000002ipl-3AJV
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 14:28:13 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1728311289;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=zsGKgHfqizmTBsBA0G5SHeGmEvGU4wB4XCYFeRqbgFY=;
	b=ykDfl/CQW53CP31cPAE9ksORAybUo4OcmpLeR9I7FI9spMbeuSysr6uH0mgHBwgHQ8O2pF
	F6FHbgo9plUDm+TitrB+HjHBSmbnPqhAhWDc1Xzm9JowJan28UvP79BrkPOBfEfRS9iDh+
	PA6Grv+cTywDmeBw83xmRj3lVxKshpYbDWBK74BucPrUPjYaG1Q7p3cdTOsuNLdCrjsfN0
	K9u9SJ2DFQBFMBHeSLdTDyG1ZawIB14amW5HbniqfZCKkVqJCMF7EiPWV/kXcfgUGRolW0
	aJArIvdrZKZaAuQETC4pWnI3pPjaLxrITLnqS7kAFMslytqEc3dSz5we6NPdzQ==
Date: Mon, 07 Oct 2024 16:28:07 +0200
Message-Id: <D4PN7WCK7XHH.1BMR5J23UJH58@cknow.org>
Cc: "Dragan Simic" <dsimic@manjaro.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: Fix reset-gpios prop on brcm
 BT nodes
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>
References: <20241007105657.6203-2-didi.debian@cknow.org>
 <20241007105657.6203-6-didi.debian@cknow.org> <12534438.O9o76ZdvQC@diego>
In-Reply-To: <12534438.O9o76ZdvQC@diego>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_072811_963266_2FA681C4 
X-CRM114-Status: GOOD (  17.86  )
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
Content-Type: multipart/mixed; boundary="===============3504562099449123627=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============3504562099449123627==
Content-Type: multipart/signed;
 boundary=8fee40a3652e3dfc8b43c5412c165b14d35256cdef3a53e3f0d083829ec2;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--8fee40a3652e3dfc8b43c5412c165b14d35256cdef3a53e3f0d083829ec2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hello :)

On Mon Oct 7, 2024 at 4:04 PM CEST, Heiko St=C3=BCbner wrote:
> Am Montag, 7. Oktober 2024, 12:28:19 CEST schrieb Diederik de Haas:
> > Except for some compatibles, the "brcm,bluetooth.yaml" binding doesn't
> > allow the 'reset-gpios' property, so replace the invalid ones with the
> > 'shutdown-gpios' property.
>
> this probably needs more explanation in the commit message, because
> by name I'd expect reset and shutdown being different functionalities.
>
> But for these cases, things should be good, simply because when looking
> at the bt_enable_h pinctrl, that pin really provides the shutdown
> functionality.

I guess I forgot to add the reference to page 12 of the
AzureWave-CM256SM datasheet (v1.9):

Pin 34 'BT_REG_ON': =20
Used by PMU to power up or power down the internal
regulators used by the Bluetooth section. Also, when
deasserted, this pin holds the Bluetooth section in reset. This
pin has an internal 200k ohm pull down resistor that is
enabled by default. It can be disabled through programming.

So my research was more extensive then I actually put in the commit
message ... will fix that in v2.

Cheers,
  Diederik

> > Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi  | 2 +-
> >  arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/a=
rm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> > index 7381bb751852..100a2774bbb5 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> > @@ -686,9 +686,9 @@ bluetooth {
> >  		clock-names =3D "lpo";
> >  		device-wakeup-gpios =3D <&gpio0 RK_PC2 GPIO_ACTIVE_HIGH>;
> >  		host-wakeup-gpios =3D <&gpio0 RK_PC3 GPIO_ACTIVE_HIGH>;
> > -		reset-gpios =3D <&gpio0 RK_PC4 GPIO_ACTIVE_LOW>;
> >  		pinctrl-0 =3D <&bt_enable_h>, <&bt_host_wake_l>, <&bt_wake_h>;
> >  		pinctrl-names =3D "default";
> > +		shutdown-gpios =3D <&gpio0 RK_PC4 GPIO_ACTIVE_LOW>;
> >  		vbat-supply =3D <&vcc_wl>;
> >  		vddio-supply =3D <&vcca_1v8_pmu>;
> >  	};
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi b/arch/=
arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
> > index d09e6542e236..3e0cbfff96d8 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
> > @@ -402,9 +402,9 @@ bluetooth {
> >  		clock-names =3D "lpo";
> >  		device-wakeup-gpios =3D <&gpio2 RK_PB2 GPIO_ACTIVE_HIGH>;
> >  		host-wakeup-gpios =3D <&gpio2 RK_PB1 GPIO_ACTIVE_HIGH>;
> > -		reset-gpios =3D <&gpio2 RK_PC0 GPIO_ACTIVE_LOW>;
> >  		pinctrl-names =3D "default";
> >  		pinctrl-0 =3D <&bt_host_wake_h &bt_reg_on_h &bt_wake_host_h>;
> > +		shutdown-gpios =3D <&gpio2 RK_PC0 GPIO_ACTIVE_LOW>;
> >  		vbat-supply =3D <&vcc_3v3>;
> >  		vddio-supply =3D <&vcc_1v8>;
> >  	};
> >=20


--8fee40a3652e3dfc8b43c5412c165b14d35256cdef3a53e3f0d083829ec2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZwPv+QAKCRDXblvOeH7b
bjpAAPoDRG8CqEprwWSNF9T4Nmif/RnR5L2vAeBIJR/7Ev1U8AD9FU2ONvofOvPX
qfDTpG14ILZTJRxkOMSPpttdMIjmMQ4=
=90So
-----END PGP SIGNATURE-----

--8fee40a3652e3dfc8b43c5412c165b14d35256cdef3a53e3f0d083829ec2--


--===============3504562099449123627==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3504562099449123627==--

