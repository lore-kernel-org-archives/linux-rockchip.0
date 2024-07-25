Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1878C3DA5D
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jul 2024 14:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GySceL+0hOFYzGKfbAgb6fjSVwbytC+9OPDoiZmDVOQ=; b=CGZrnN2IX9JDoTuNv3NpnPYpYK
	0DxAUAE7B9tPSxrZ1JjV6CKIOwuZJv94bRzd6UQeFFj0nyemWxQHStqfDwMPuZreoLAjZrXUN1wcz
	jJa+hxPlZ57Fhpy4PVVDcUuJ11Gd8/uzVD3YLWopSh8SaCyWbMF7B7WJqDqeDCrX3/HdEu7mivhot
	Hh8GFk099KwHxE4nDKuQFoz7KA2AJXmdarAgfBSw0L9QkY426kQasqrd4rict9upx0K4igvuEXyzj
	ZDmYy2XuuW8p4KT3rz9MT7qCqnmrTTt6LKQY8tghRt0Z9X9OuNkP8wNqFmfrP7wOvsiCbDPAjCl/u
	GmU/wjHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWzBe-00000001CpX-47M9;
	Thu, 25 Jul 2024 14:11:18 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWzB4-00000001Cfe-1kSy;
	Thu, 25 Jul 2024 14:10:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1721916637;
	bh=8uoGNOyVe7gByYAZYQGatpKAMRp65mnINJWGyhyzYkE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tZ8Hk5azORZsm7EkL77nQDamAz+kIuA+HikQ8LVXxcEl3CKBNJiJDDR5hwZGktsn0
	 xv9k9sq+4SSpnLUvQ7Xcb06XNVRDTwRSIRAw+twRbyyqJEZmv998TOXoRrPu05oYlB
	 DdWe9Sp7BBjY7XbuJXA7NmY60Ec9vGlgqYtOADkfxymSvC77YNBjQgaOnlbht8LAc9
	 tSA9zdV9HXWI1FsOIpxR2yGqQN8o3PE12Pa82mR99gM2TtmMsfMPkLPSpYDuhA9hx/
	 xbfjY9iHpach7HhwIopfd9hyuwZ+cmwkp5k1IQslvju/JMBh4/LH9+/vKmPUaO6HoC
	 sd7n+ztE3BdTQ==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 527FA3782191;
	Thu, 25 Jul 2024 14:10:37 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id E549B106097F; Thu, 25 Jul 2024 16:10:36 +0200 (CEST)
Date: Thu, 25 Jul 2024 16:10:36 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Johan Jonker <jbx6244@yandex.com>
Cc: Shreeya Patel <shreeya.patel@collabora.com>, heiko@sntech.de, 
	mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de, 
	jose.abreu@synopsys.com, nelson.costa@synopsys.com, shawn.wen@rock-chips.com, 
	nicolas.dufresne@collabora.com, hverkuil@xs4all.nl, hverkuil-cisco@xs4all.nl, 
	kernel@collabora.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Dmitry Osipenko <dmitry.osipenko@collabora.com>
Subject: Re: [PATCH v4 2/4] dt-bindings: media: Document bindings for HDMI RX
 Controller
Message-ID: <3ro7jpo4xvjuhbyc62p5iglbo7ecau6dxack6crhbwdnzmqi3b@heaczv3umoy7>
References: <20240719124032.26852-1-shreeya.patel@collabora.com>
 <20240719124032.26852-3-shreeya.patel@collabora.com>
 <c926b73e-9ee7-4c4f-9c06-761929425468@yandex.com>
 <3328a8-669e6400-1-609f7800@94177214>
 <ae3f574a-256f-4ced-a371-a26255024750@yandex.com>
 <6nzakkvpfodztxh6jnxlhknd7x7ni6agwpguxyqd6gcncedp53@vsk5mnaayfqs>
 <80090f6e-7bc8-422a-bb2a-0c0a4abf32f0@yandex.com>
MIME-Version: 1.0
In-Reply-To: <80090f6e-7bc8-422a-bb2a-0c0a4abf32f0@yandex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240725_071042_752565_A49C53F8 
X-CRM114-Status: GOOD (  60.57  )
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
Content-Type: multipart/mixed; boundary="===============1369974151169760744=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1369974151169760744==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vt4csphgu4s6kj2p"
Content-Disposition: inline


--vt4csphgu4s6kj2p
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jul 24, 2024 at 03:20:28PM GMT, Johan Jonker wrote:
>=20
>=20
> On 7/23/24 19:28, Sebastian Reichel wrote:
> > Hi,
> >
> > On Tue, Jul 23, 2024 at 01:16:00PM GMT, Johan Jonker wrote:
> >> On 7/22/24 15:53, Shreeya Patel wrote:
> >>> On Saturday, July 20, 2024 16:14 IST, Johan Jonker <jbx6244@yandex.co=
m> wrote:
> >>>> On 7/19/24 14:40, Shreeya Patel wrote:
> >>>>> Document bindings for the Synopsys DesignWare HDMI RX Controller.
> >>>>>
> >>
> >>>>> Reviewed-by: Rob Herring <robh@kernel.org>
> >>>>> Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> >>
> >> Remove to trigger a new review.
> >
> > Rob and Dmitry both already reviewed the version with the fallback
> > compatible. I don't think the rename of hdmirx_cma to hdmi_receiver_cma
> > warrant a new review. Also FWIW:
> >
>=20
> > Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>=20
> Please have a look at the comments below before you tag.
>=20
> >
> >>>>> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
> >>>>> ---
> >>>>>
> >>>>> Changes in v4 :-
> >>>>>   - No change
> >>>>>
> >>>>> Changes in v3 :-
> >>>>>   - Rename hdmirx_cma to hdmi_receiver_cma
> >>>>>   - Add a Reviewed-by tag
> >>>>>
> >>>>> Changes in v2 :-
> >>>>>   - Add a description for the hardware
> >>>>>   - Rename resets, vo1 grf and HPD properties
> >>>>>   - Add a proper description for grf and vo1-grf phandles
> >>>>>   - Rename the HDMI Input node name to hdmi-receiver
> >>>>>   - Improve the subject line
> >>>>>   - Include gpio header file in example to fix dt_binding_check fai=
lure
> >>>>>
> >>>>>  .../bindings/media/snps,dw-hdmi-rx.yaml       | 132 ++++++++++++++=
++++
> >>>>>  1 file changed, 132 insertions(+)
> >>>>>  create mode 100644 Documentation/devicetree/bindings/media/snps,dw=
-hdmi-rx.yaml
> >>>>>
> >>>>> diff --git a/Documentation/devicetree/bindings/media/snps,dw-hdmi-r=
x.yaml b/Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
> >>>>> new file mode 100644
> >>>>> index 000000000000..96ae1e2d2816
> >>>>> --- /dev/null
> >>>>> +++ b/Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
> >>>>> @@ -0,0 +1,132 @@
> >>>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >>>>> +# Device Tree bindings for Synopsys DesignWare HDMI RX Controller
> >>>>> +
> >>>>> +---
> >>>>> +$id: http://devicetree.org/schemas/media/snps,dw-hdmi-rx.yaml#
> >>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >>>>> +
> >>>>> +title: Synopsys DesignWare HDMI RX Controller
> >>>>> +
> >>>>> +maintainers:
> >>>>> +  - Shreeya Patel <shreeya.patel@collabora.com>
> >>>>> +
> >>>>> +description:
> >>>>> +  Synopsys DesignWare HDMI Input Controller preset on RK3588 SoCs
> >>>>> +  allowing devices to receive and decode high-resolution video str=
eams
> >>>>> +  from external sources like media players, cameras, laptops, etc.
> >>>>> +
> >>>>> +properties:
> >>>>> +  compatible:
> >>>>> +    items:
> >>>>> +      - const: rockchip,rk3588-hdmirx-ctrler
> >>>>
> >>
> >>>>> +      - const: snps,dw-hdmi-rx
> >>
> >> remove
> >>
> >>>>
>=20
> Relevant compatible methods in use for Rockchip drivers:

You are arguing with kernel drivers. Drivers can be changed at any
point in time, but DT bindings cannot, because they define an ABI.

> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Compatible method #1:
> Probe is triggered by a SoC orientated string.
>=20
> compatible =3D "rockchip,rk3588-hdmirx-ctrler";
>=20
> If for example a new SoC rk3599 is released that has the same device prop=
erties
> then the old string can be used as fallback string.
>=20
> compatible =3D ""rockchip,rk3599-hdmirx-ctrler" , "rockchip,rk3588-hdmirx=
-ctrler";
>=20
> The driver structure:
> { .compatible =3D "rockchip,rk3588-hdmirx-ctrler" },
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Compatible method #2:
> Probe is triggered by a IP orientated fallback string.
>=20
> compatible =3D "rockchip,rk3588-hdmirx-ctrler" , "snps,dw-hdmi-rx";
>=20
> If for example a new SoC rk3599 is released that has the same device prop=
erties
> then add the same fallback string.
>=20
> compatible =3D ""rockchip,rk3599-hdmirx-ctrler" , "snps,dw-hdmi-rx";
>=20
> The driver structure:
> { .compatible =3D "snps,dw-hdmi-rx" },
>=20
> If for example a new SoC rk3599 is released that has NOT the same device =
properties
> then use method #1.
>=20
> The driver structure:
> { .compatible =3D "rockchip,rk3599-hdmirx-ctrler" .data =3D &rk3599_ops },
> { .compatible =3D "snps,dw-hdmi-rx" },

This is what is being used here. The only diference is, that the
driver currently uses the RK3588 specific compatible string instead
of the fallback string right now.

If another SoC vendor adds the same IP into their latest chip and
the driver has been proven to work with their hardware the driver
can be changed to bind against "snps,dw-hdmi-rx" instead of the
RK3588 specific compatible. Doing this change will keep
compatibility with existing DTs, if we add the fallback string now.
Until then we just carry it as an unused fallback.

> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Compatible method #3:
> Probe is triggered by a vendor orientated fallback string.
>=20
> Special case only useful if the driver is written long after all SoCs are=
 released.
> The standalone IP has a version register and the driver can handle all th=
e feature difference
> inside the IP depending on the version register.
>=20
> compatible =3D "rockchip,sfc";
>=20
> The driver structure:
> { .compatible =3D "rockchip,sfc"},

FWIW I think _this_ is a bad example. It is missing the SoC specific
compatible making applying of quirks harder than necessary. Just
because no quirks are needed now, does not mean it will stay that
way. E.g. if an Errata gets released that SFC on RK3588 must not be
run at 1 MHz it would be super useful to have an "rockchip,rk3588-sfc"
to match against. That's the reason for the rule #1 in the following
list

> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> The rules:
>=20
> 1: Compatible strings must be SoC orientated.
> 2: In Linux there's no priority in which string will probed first.

I initially thought you mean the list in the driver, but after
reading your remaining mail - this is just wrong. There is a
priority. If DT specifies

compatible =3D "main", "fallback";

Linux will first try to bind against "main". If that does not
work it will try to bind against "fallback". To give you a
simple example from the subsystem I maintain:

DT binding: Documentation/devicetree/bindings/power/supply/sbs,sbs-battery.=
yaml
Linux Kernel Driver: drivers/power/supply/sbs-battery.c

Valid compatibles according to the DT binding:
 compatible =3D "ti,bq20z45", "sbs,sbs-battery";
 compatible =3D "ti,bq20z65", "sbs,sbs-battery";
 compatible =3D "ti,bq20z75", "sbs,sbs-battery";
 compatible =3D "sbs,sbs-battery";

The driver has these of_device_id entries:
 { .compatible =3D "sbs,sbs-battery" },
 { .compatible =3D "ti,bq20z65", QUIRKS },
 { .compatible =3D "ti,bq20z75", QUIRKS },

The driver will probe ONCE in all cases.

compatible =3D "ti,bq20z45", "sbs,sbs-battery"; =3D> probe happens with fal=
lback string
compatible =3D "ti,bq20z65", "sbs,sbs-battery"; =3D> probe happens with mai=
n string (QUIRKS apply)
compatible =3D "ti,bq20z75", "sbs,sbs-battery"; =3D> probe happens with mai=
n string (QUIRKS apply)
compatible =3D "sbs,sbs-battery"; =3D> probe happens with main string

> 3: There is a commitment that old DT's should still work with newer kerne=
ls.

> >>>> What's the point of having a fallback string when there's no common =
code, but instead only the first string is used?
> >>>>
> >>>> +static const struct of_device_id hdmirx_id[] =3D {
> >>>> +	{ .compatible =3D "rockchip,rk3588-hdmirx-ctrler" },
> >>>> +	{ },
> >>>> +};
> >>>>
>=20
> The consequence of the third rule is that drivers must continue to
> support this string once added and can not be removed as suggested
> below.

That's wrong. We can remove the "rockchip,rk3588-hdmirx-ctrler" from
the kernel driver and use the fallback string at any point in time
__IF__ we make it mandatory that rockchip,rk3588-hdmirx-ctrler must
always be followed by the fallback compatible in DT. Because then we
will keep working with old DTs, since the old DT also has the
fallback compatible.

> If for example the fallback is added later it will trigger 2 probes and i=
t breaks rule #2.
> Only one of string is allowed to trigger a probe in the driver.
>=20
> This is wrong:
> compatible =3D "rockchip,rk3588-hdmirx-ctrler", "snps,dw-hdmi-rx";
>=20
> { .compatible =3D "rockchip,rk3588-hdmirx-ctrler" },
> { .compatible =3D "snps,dw-hdmi-rx" },
>=20
> Ones a compatible method is chosen the driver must stick to it.

I don't know how you came to that conclusion, but it's simply wrong.
The above example will probe once using the "rockchip,rk3588-hdmirx-ctrler"
compatible. At that point the DT node is marked as processed, so
no other probe happens.

> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> >>>
> >>
> >>> We believe the HDMIRX driver can be used for the Synopsys IP on other=
 SoCs
> >>> in the future, which is why we have added snps,dw-hdmi-rx as the fall=
back compatible.
> >>> Currently, we have tested the driver only on the RK3588 Rock5B, so we=
 are using the
> >>> rockchip,rk3588-hdmirx-ctrler compatible in the driver instead of the=
 fallback one.
> >>
> >> The rule that compatible strings (for internal SoC components)
> >> must be SoC orientated also applies to the fallback string.
> >> "snps,xxxx" does not refer to an independent SoC.
>=20
> This refers to compatible method #1.

Yeah, which is used when the IP is from the SoC vendor itself (or
unknown) or if its not possible to use the generic IP compatible
anyways.

> [...]
> If the IP device registers are guaranteed remain the same then
> choose compatible method #2 and fix the driver.

Adapting the driver is the plan, but it cannot be done right now
because lack of information. This requires either another SoC with
this IP or at least the Synopsys documentation. We only have the
Rockchip documentation.

But the driver can be fixed in the future and the DT binding is
ABI. Thus the DT binding is prepared now to allow the driver looking
like your method #2 in the future. Until then the extra compatible
will just be ignored.

-- Sebastian

--vt4csphgu4s6kj2p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmaiXNAACgkQ2O7X88g7
+poT9g//aUGecPhr6HQC4QXjBqwiCJCYwri9xEaVfEcOlA9jdOkHjWwNg66WDvRa
dPYFeupumIi/g5pJiTiLs384ifGVFh2xNClCAjm4ZF6xsufqmX6H8ZBLXtTxz+1y
m7KlHWKccZ8ciS6rFDXkWiNakApAxOMqb1W6Mk403rgv/i2WGjE49KjBqFx2N3jB
3/QPpG1C1O7jYO6JxaGti9YrUKVmjAodNojU0Oye/TF90CemDRCZTo+Vqy3tcLjH
QAg7x4EFmjlPvVLJEAPKGLZB2PrqiC8FcJrzSm+R3iaeToYaLrfvDTeKbfQsY7Vy
FJx3FMftGHfFs9BrTFuVyM41NgIBmEzmNAbrHzVLlN4McDA7ZIBzsTw5gkqLTHhS
lcdD5LvwByZC0tRh90DIobUqsZ1RRBEmksdFALzHSt/S0KcAjIwYxhCdIpszAF/p
2WTs+//EyrjEbbAyjmbNQKgzN9gzZMy0+PrWhjyilt8m8ziGdtFgvoexg++QXW44
5BkRrJFmR78aIKFBNoJQ9wO8eEevDJo/KH9IGem236l15Uh5Kb52gM5erlGA2IKI
Y2t3ocKjK0Cl9F7gafBhI6o89iI0rLjDvOgwiTZ16Ny0CEvheGsqIrDLkIetAWYU
XFWHHOsRJmt7gFexJkHVDRpFXXXwd0mgCQTXpG7qJxYGQu+49Kg=
=u0hj
-----END PGP SIGNATURE-----

--vt4csphgu4s6kj2p--


--===============1369974151169760744==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1369974151169760744==--

