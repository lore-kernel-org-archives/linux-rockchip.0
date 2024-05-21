Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFA21C25B74
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 May 2024 17:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BSCHL37Uz4IZ4NvC9WN0lPtJFBA18DFUJBolPReXxb4=; b=DgnVd2Q1hX9xbRoD5knXOyFZJr
	RX4OGGL6w6VFULwD2A1G03CvCZeXOClauEUiIc/ygV20+UptmoGHczFn/Di3ZQ+M0ohYcUljsVVCX
	v6i74meq0IQnfd33eETcNlAbNbTFfcyyn0v/tlfLNECXR4YRSXiH2AcMBWeSY02aqnvmKrCxclTUp
	UveI/snof08FOjgqIhFiIxS4i3xijtbnjnjsKeWmkjz/wuHzvyp4j7w7P6fvLVOVmH5WxPLzk4kdH
	v1nUR+izoEEN/q5Gh9M8KUtDvp2pF/eyBcATDQ6N5Z9oxlAspHITQNsraGMTSDPh9TiPDTt4ObrGv
	WgVF7IdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9T6A-00000000bD5-3f6G;
	Tue, 21 May 2024 17:16:26 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9T66-00000000b9r-0r8B;
	Tue, 21 May 2024 17:16:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1716311768;
	bh=rd/1+9JNdQ/4d4EFXjf5NHg9TeVEP/YikPqrcWyBkmM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fGPJEWC6H/LQ8fIQtmuSll6oJYcCRpHnF0BtiC/fBfC4kMzm1duBMBCbZIn09K7Dx
	 5T6anJwgNhagVeZanlGhLG1D7xBDs0ofcETveoJFa7HQO0+piRfL9N87Cw9rwXy9+B
	 5HwHa4Cvqmx5tA/LvNucSCDFufCy4U6KoscmC4fmdiX7rOSfwJNjFdZ9aQpajDXGEG
	 Ym4Mb7NMPUj09hcHVvc/Yj8KFm+IQzosXoYhOKv9/wQM7u87xnu9qPur2G0s3OQAlC
	 H7+QUuRx3vzvbCW30bQdVnVQ79y2Nnursu8e2c+qibS+Y/6q8xHhxUrOPJgaPWnEzF
	 MUn5IuvAm7TEA==
Received: from arisu.localnet (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id CD52F378107C;
	Tue, 21 May 2024 17:16:04 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Conor Dooley <conor@kernel.org>,
 Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko.stuebner@cherry.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>, Chris Morgan <macromorgan@hotmail.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/3] dt-bindings: display: vop2: Add VP clock resets
Date: Tue, 21 May 2024 13:15:46 -0400
Message-ID: <13628421.uLZWGnKmhe@arisu>
Organization: Collabora
In-Reply-To: <2182693.irdbgypaU6@diego>
References: <20240514152328.21415-1-detlev.casanova@collabora.com>
 <20240515-risk-exes-13db315da6bb@spud> <2182693.irdbgypaU6@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_101622_385383_2154B4AC 
X-CRM114-Status: GOOD (  24.30  )
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
Content-Type: multipart/mixed; boundary="===============8513246608213242792=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============8513246608213242792==
Content-Type: multipart/signed; boundary="nextPart3048022.e9J7NaK4W3";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart3048022.e9J7NaK4W3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; protected-headers="v1"
From: Detlev Casanova <detlev.casanova@collabora.com>
Date: Tue, 21 May 2024 13:15:46 -0400
Message-ID: <13628421.uLZWGnKmhe@arisu>
Organization: Collabora
In-Reply-To: <2182693.irdbgypaU6@diego>
MIME-Version: 1.0

On Wednesday, May 15, 2024 12:33:22 P.M. EDT Heiko St=FCbner wrote:
> Am Mittwoch, 15. Mai 2024, 18:19:29 CEST schrieb Conor Dooley:
> > On Tue, May 14, 2024 at 11:19:47AM -0400, Detlev Casanova wrote:
> > > Add the documentation for VOP2 video ports reset clocks.
> > > One reset can be set per video port.
> > >=20
> > > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> >=20
> > Are these resets valid for all VOPs or just the one on 3588?
>=20
> Not in that form.
> I.e. rk3588 has 4 video-ports (0-3), while rk3568 has 3 (0-2).
>=20
> So the binding should take into account that rk3568 also has the
> SRST_VOP0 ... SRST_VOP2.

That is what is set in the example and the reason why I set minItems to 3 i=
n=20
the main bindings.
Then, the rk3588 specific part sets it to 4.

Isn't that enough ?

> Also, I guess we might not want to limit ourself to stuff we use?
> I.e. the new VOP-design is one block with multiple video-ports
>=20
> So for rk3568 I see
> #define SRST_A_VOP
> #define SRST_H_VOP
> #define SRST_VOP0
> #define SRST_VOP1
> #define SRST_VOP2
>=20
> similarly rk3588 has
>=20
> #define SRST_H_VOP
> #define SRST_A_VOP
> #define SRST_D_VOP0
> #define SRST_D_VOP1
> #define SRST_D_VOP2
> #define SRST_D_VOP3
>=20
> as generalized reset lines.

Argh, I added them at first then removed them as they are not used. Will ad=
d=20
them again then.

Detlev.

> > > ---
> > >=20
> > >  .../display/rockchip/rockchip-vop2.yaml       | 27 +++++++++++++++++=
++
> > >  1 file changed, 27 insertions(+)
> > >=20
> > > diff --git
> > > a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.ya=
ml
> > > b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.ya=
ml
> > > index 2531726af306b..941fd059498d4 100644
> > > ---
> > > a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.ya=
ml
> > > +++
> > > b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.ya=
ml
> > >=20
> > > @@ -65,6 +65,22 @@ properties:
> > >        - const: dclk_vp3
> > >        - const: pclk_vop
> > >=20
> > > +  resets:
> > > +    minItems: 3
> > > +    items:
> > > +      - description: Pixel clock reset for video port 0.
> > > +      - description: Pixel clock reset for video port 1.
> > > +      - description: Pixel clock reset for video port 2.
> > > +      - description: Pixel clock reset for video port 3.
> > > +
> > > +  reset-names:
> > > +    minItems: 3
> > > +    items:
> > > +      - const: dclk_vp0
> > > +      - const: dclk_vp1
> > > +      - const: dclk_vp2
> > > +      - const: dclk_vp3
> > > +
> > >=20
> > >    rockchip,grf:
> > >      $ref: /schemas/types.yaml#/definitions/phandle
> > >=20
> > >      description:
> > > @@ -128,6 +144,11 @@ allOf:
> > >          clock-names:
> > >            minItems: 7
> > >=20
> > > +        resets:
> > > +          minItems: 4
> > > +        reset-names:
> > > +          minItems: 4
> > > +
> > >=20
> > >          ports:
> > >            required:
> > >              - port@0
> > >=20
> > > @@ -183,6 +204,12 @@ examples:
> > >                                "dclk_vp0",
> > >                                "dclk_vp1",
> > >                                "dclk_vp2";
> > >=20
> > > +                resets =3D <&cru SRST_VOP0>,
> > > +                         <&cru SRST_VOP1>,
> > > +                         <&cru SRST_VOP2>;
> > > +                reset-names =3D "dclk_vp0",
> > > +                              "dclk_vp1",
> > > +                              "dclk_vp2";
> > >=20
> > >                  power-domains =3D <&power RK3568_PD_VO>;
> > >                  iommus =3D <&vop_mmu>;
> > >                  vop_out: ports {


--nextPart3048022.e9J7NaK4W3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEonF9IvGrXNkDg+CX5EFKUk4x7bYFAmZM1sIACgkQ5EFKUk4x
7bb5lQf8CxeSuV+asxitEnkW/cVrTz51FbhHD8mO/z1OWW3fMUZXxilF1uNZ+zY4
UUD1+qE15cppWtyxK/qIGYtuytme46Mxlj6cLaI6fX3YikaZQE0y34jgv2OyOTQL
eiyKVPCNPk59jEFx1NSu/LqGQpQmemU3wWWL8DPmfesLsOzn866zYNJe7DgR3xfC
HkN9DbvGHLgMd4Bh7rH8lFoq9KZ0JbDbkzEkB1T9PpX+zYFGU6afiNaoitntsnXB
12TaLVomcfk/eejcNyxWJAqA2f7RQOgaI5qjz23kaBP9JZ2CJIWkudkSUG+b/BLe
dJupu8Sq2+ai63tx131WgNs3iMNz0Q==
=yXdu
-----END PGP SIGNATURE-----

--nextPart3048022.e9J7NaK4W3--





--===============8513246608213242792==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8513246608213242792==--




