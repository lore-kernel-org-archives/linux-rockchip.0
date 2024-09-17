Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E0B9CAC5A2
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Sep 2024 21:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I9pxdIq25kPMe377yO/DZEQhpYGdCvhyHWKX0dXcE5I=; b=xJGlo0FNPsV8NI5upBJOo/dPdz
	DZIAWOVNx7nno15MuofF+xS1mjaacuVeFQ4L+Fr1nc05fZ5Ai+tfuMqFxA50VEfvZOBazAdbjBZQJ
	rlQmpLiAYFHNgX71YmzlMprM+4vLiMBXYZ2nvh0/nLSwQhzygSQesbzIolK33VPkT0Va+6KSgbyXc
	qL5Qc3sEsr0PGA7VriaJ6tvLZqbDPYZAwv2UqoHfZoZagGnCxoKvd7hSd0Cg7pmA0wKf2KKnjx8R6
	fOeIHTFO0/e8J76ZXLpAimlBrV20DiUNdBVha8Ds4e4eZ9fAbjSqsA5vmZlJCVkj/qDUA9xC2bEHa
	2uXqfDNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqfXO-00000006wFH-0O1M;
	Tue, 17 Sep 2024 21:15:06 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqfWG-00000006w6F-2wva;
	Tue, 17 Sep 2024 21:13:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 041815C463E;
	Tue, 17 Sep 2024 21:13:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70DC3C4CEC5;
	Tue, 17 Sep 2024 21:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726607635;
	bh=h6tfNn4BixxJYWQYKrDQLr7/eqjQkFy0kULBd/P+I4g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TyE8X+GqWp7Z/p5furrj0+eAxM/KsS6HaBJHLmVLo8Koq88/0VSzkyTGN5IKW1HZG
	 OPwMjuyM78k+lDKtOBlMtoDD5NvXGC/HfGb0ZP4s+t0l70B3tkUCXZeU0Q/u/X0M/Q
	 a54APR/wJoX5/8nmIxkF6XPa3vuriJP7Jy7pCGTgpleDJnyjg/vJppLeEKS8rrwkm8
	 PUV0AxR9m5qcOUzETL8CZ409Ff01O8bxO3wotbiUby33e7RDVvXN89v5cQqtYX4P/C
	 gPYxufC+CdP2VL3vdg9U2I7ilIp5Y6DgI5t6CP5vLyuEb7fjJ4SSh3pNKahZ/CrqYg
	 DQM4Xhac7Mb5A==
Date: Tue, 17 Sep 2024 22:13:58 +0100
From: Conor Dooley <conor@kernel.org>
To: Yao Zi <ziyao@disroot.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: Possible misleading information in rockchip,rk3588-cru.yaml
Message-ID: <20240917-flypaper-december-3719ea838b3c@squawk>
References: <ZuIJgiN2xp6oPrHD@pineapple>
 <20240916-neuron-surfer-32db6440e1ad@spud>
 <ZuhtMHgx8XlZaayp@pineapple>
MIME-Version: 1.0
In-Reply-To: <ZuhtMHgx8XlZaayp@pineapple>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240917_141356_832668_E6763039 
X-CRM114-Status: GOOD (  27.32  )
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
Content-Type: multipart/mixed; boundary="===============1631881753158646693=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1631881753158646693==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="RIDGw94K0j/yawb4"
Content-Disposition: inline


--RIDGw94K0j/yawb4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 16, 2024 at 05:38:56PM +0000, Yao Zi wrote:
> On Mon, Sep 16, 2024 at 05:33:49PM +0100, Conor Dooley wrote:
> > On Wed, Sep 11, 2024 at 09:20:02PM +0000, Yao Zi wrote:
> > > Hi,
> > >=20
> > > rockchip,rk3588-cru.yaml, dt-binding for RK3588 clock and reset modul=
e,
> > > contains description of customized property "rockchip,grf",
> > >=20
> > >   rockchip,grf:
> > >     $ref: /schemas/types.yaml#/definitions/phandle
> > >     description: >
> > >       phandle to the syscon managing the "general register files". It=
 is
> > >       used for GRF muxes, if missing any muxes present in the GRF will
> > >       not be available.
> > >=20
> > > But after doing some searching, I found that clk-rk3588.c actually
> > > defines no clock hardware with MUXGRF type. This is also true in in t=
he
> > > vendor code[1], it seems there is actually no GRF mux on RK3588
> > > platform.
> >=20
> > Have you been able to check the datasheet/register map for this piece of
> > hardware? Does it have a grf register region?
> > Wouldn't be surprised if it didn't, and the cause of it being in the
> > binding was nothing more than copy-paste.
>=20
> Have checked a public datasheet[1], RK3588 does have corresponding grf
> region and there are only clock related bits in PHP_GRF_CLK_CON1[2].
>=20
> But these gmac clocks bits are used in dwmac-rk GMAC driver[3]
> internally, out of the common clock driver, rk3588-cru. So I don't think
> the CRU needs access to the grf by design.

That sounds like a reasonable justification for deleting it - but please
check U-Boot etc to make sure that other projects are not using this in
a different manner to the kernel. If they are not using it, then please
send a patch :)

--RIDGw94K0j/yawb4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZunxEgAKCRB4tDGHoIJi
0tzwAPsEW69ocfhtVR+GMWt0pS+MPPaBskZvsdl4XuVumMe3NAEAvsgdPy+i81Ec
ZX8q4UQyEvwTSKQHOQvpLTNM8UhH0gw=
=GlRo
-----END PGP SIGNATURE-----

--RIDGw94K0j/yawb4--


--===============1631881753158646693==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1631881753158646693==--

