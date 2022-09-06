Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 693ABECAAA1
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Sep 2022 16:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bn2LQXBp3HtzBl0yDVai4F2Gi8A31eRqoiPM2lC1mhs=; b=G6axhUI6n/z30XpKheVSBZ/wUz
	/Twh2CmAjJZbiRX+npNY0y28CIzin71qlZfngX949RKt3zF9a/H6JrTuMgDtDGG+bE4NX1sdrDUXp
	wT8F11HpYhxjanYVdNOETSvH2UqUgxnGM0QVfbogtWF3MdiiUdkS+pSHTEojOUtDdz9y5bDYmwic2
	jLZpZId3jpltAPJJa3I0FdKOwpFJQQB3RMw/HlS+H3gQFmloZxNhJ3s47lUxnekhHUZCnvqyFgLor
	xSeimpxbYmz451kE11sU5Ez2qrKq9PgM8KdxnPWVxZG7E6qiQ/FOAxG7XHzuGI+EbTnRPrLjpqb+Q
	ovGTCPJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVbHl-00FJIk-G8; Tue, 06 Sep 2022 16:18:49 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVaqQ-00F1MZ-GT; Tue, 06 Sep 2022 15:50:37 +0000
Received: from mercury (dyndsl-037-138-186-136.ewe-ip-backbone.de [37.138.186.136])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8B50066015E5;
	Tue,  6 Sep 2022 16:50:29 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1662479429;
	bh=XJoe4AUZezhgBToG5KJ5xVW9306by/UTlclyGM6j3oM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BJLDLSg+vq2uh25XRtGtWBiTT+FYK7nw6i1lJc4HaToVzWdyzqw1R7Lzw1n4NBzvh
	 8JGo9CxachYA0WJ3OSqWhiiAXIabz8AL0vWDaEzlS8AC3ppLbqb7Pr83fm+BhZC98w
	 Grl7VJex9Fnk8O/oEL0Gd4oeLSbnxhd2q82ekGuseZV3BNY9ygP7eM4aQOTLjBMAdX
	 JpIKIOu11ofoOSn1NzjDDIjNcL3HpMwTsQqjEUqGNlk0lZ4VPie+r+I97ZDlKOZnqU
	 UVLwqkiIX57uEsPi204yucfDHa1sXGeJqcXZEOQBnv5JwgcnFvuw2aUoSl5XbvQEOx
	 ZeNYx9z+uRa3A==
Received: by mercury (Postfix, from userid 1000)
	id 0E3C3106090E; Tue,  6 Sep 2022 17:50:27 +0200 (CEST)
Date: Tue, 6 Sep 2022 17:50:27 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Lee Jones <lee@kernel.org>
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH 4/6] dt-bindings: mfd: syscon: Add rk3588 QoS register
 compatible
Message-ID: <20220906155027.qomo6pt4xo45mli3@mercury.elektranox.org>
References: <20220831182629.79255-1-sebastian.reichel@collabora.com>
 <20220831182629.79255-5-sebastian.reichel@collabora.com>
 <4707456.3daJWjYHZt@diego>
 <YxdqRpysLtPRh02s@google.com>
MIME-Version: 1.0
In-Reply-To: <YxdqRpysLtPRh02s@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_085035_343655_385FF5E8 
X-CRM114-Status: GOOD (  21.12  )
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
Content-Type: multipart/mixed; boundary="===============3277558840560925359=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3277558840560925359==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t77xhtng62acca4i"
Content-Disposition: inline


--t77xhtng62acca4i
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Lee,

On Tue, Sep 06, 2022 at 04:41:58PM +0100, Lee Jones wrote:
> On Mon, 05 Sep 2022, Heiko St=C3=BCbner wrote:
> > Hi Sebastian,
> >=20
> > Am Mittwoch, 31. August 2022, 20:26:27 CEST schrieb Sebastian Reichel:
> > > Document rk3588 compatible for QoS registers.
> > >=20
> > > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> >=20
> > change looks good, but this is a mfd-binding. So while the rest is for =
me
> > to apply, for the mfd syscon we need either Lee to apply it, or an Ack
> > from him for me to pick it up.
>=20
> This patch is not in my inbox.

Yes, I missed CC'ing you, sorry.

> Would you mind resending it to this inbox please?

I sent PATCHv3 for this series some minutes ago. You should have
received the full series now:

https://lore.kernel.org/all/20220906143825.199089-5-sebastian.reichel@colla=
bora.com/

-- Sebastian

>=20
> > > ---
> > >  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
> > >  1 file changed, 1 insertion(+)
> > >=20
> > > diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Docu=
mentation/devicetree/bindings/mfd/syscon.yaml
> > > index c10f0b577268..5369a56b8be1 100644
> > > --- a/Documentation/devicetree/bindings/mfd/syscon.yaml
> > > +++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
> > > @@ -59,6 +59,7 @@ properties:
> > >                - rockchip,rk3368-qos
> > >                - rockchip,rk3399-qos
> > >                - rockchip,rk3568-qos
> > > +              - rockchip,rk3588-qos
> > >                - samsung,exynos3-sysreg
> > >                - samsung,exynos4-sysreg
> > >                - samsung,exynos5-sysreg
> > >=20
> >=20
> >=20
> >=20
> >=20
>=20
> --=20
> Lee Jones [=E6=9D=8E=E7=90=BC=E6=96=AF]

--t77xhtng62acca4i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmMXbDoACgkQ2O7X88g7
+pp6Gw/+IguQBxz5wpJ1j1+kfCjzaRei6KItlJqXWkJ1zOcO5rlnNcCKXcf1i1iV
SVljAaf01sFZ40aVBg1vSgBoOVfLnDe5EBvLA72XJu8sBMGehIDD9UhFV5AU6riE
2LH06CiD7PSf0R9UhdxDk3f+ado9kZp3YO6y/FXZPRsUV7mEZgaoHmSYsWX5rBTW
npz4nZjXdm4aTaeiLoou7szFlwW07s7Yc2RH+wH71QLiytWXfWdhqQ+CHx21qESb
CtoX7hZhNxRMf7J4S2RNhp9Hv2kWJx6lFTNsm9LomMvGmIMPtOVVZZWoWGdqzOvn
T27inXWrSIXTIohyUPE+ro/3CSJg8qrQZOuH1lrdahQg2mdHP5uSvx5pEn9nCZX9
AjlABlAo1f62Q5tW2oJhm71bdPrlJBltTY2RXWFRL3RS0m2jh2HvkRnZ1M4zQXiI
yzELjI+qDHrb1TvjPfmqqzaMIWLKL0EHOQLEA2YRmVHrfAEaMZm3A3d7eACnS/2G
GYDvsWHblAlF7jRu49+84u1FYBcs7oK1Q63JCICNyiPtIL0R4C9TCV1sGozFOCiS
onRfeaWrjCdHK4MZmUe3DZlYPGZkkPqIzvwbmMMMTiw3qRsuJ92H7KWEP0vmtCZ5
dZNGwIe9Nr/aE58atAhTHBv5/wRumxItifkDBMZC4R1tUjJ167Y=
=v6po
-----END PGP SIGNATURE-----

--t77xhtng62acca4i--


--===============3277558840560925359==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3277558840560925359==--

