Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51EDBC001DF
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Aug 2023 15:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tWSIKzG2k2D8LGJLBG9sKmE1GwtMKMUf3sMPihtgWxc=; b=Fnlf97Ih45X4Hz0nqr0sLwAo91
	3NPDqapzcV3Vcfumgj0/W/Dto4ADwgranjO9eSeNgip6sajw7r8DWDRFLLXHWiBNUxu/LdGupPAME
	sdL60ZoFsuo6bCVRYRe3LVxjjGfhCtERthLKNKGENZR1AZxS4899DcDd/9qcf4IxjX9V3DPhephPM
	v1nEi7tBgQGEg0QXTqSkeu0pZ+vuRbRirVNFCDLWx0lN9+Wt0/q+RwSynK2uerLpjJmh7h9hPeKD5
	v1hBrz5RGDzBbsLQImppE0vo2aOZFh3aPzieua8orAC+WoqZhN2OcPSkyzv/wbG2g4T3+gwiKZ6B5
	8us3UrjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRDWT-005BsJ-2G;
	Wed, 02 Aug 2023 15:12:25 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRDWP-005Brd-3A;
	Wed, 02 Aug 2023 15:12:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 306D5619D7;
	Wed,  2 Aug 2023 15:12:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E5B7C433C7;
	Wed,  2 Aug 2023 15:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690989140;
	bh=xZJ60KhjGlCXAjVcQyAig/Own6TKqmNUYONhjp4eRKs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ARRQ6fosNAQroEW3lWfbXzEVtm38OnSt+tVAjAMqxJTq6UkL+7jOV2qlCI8YsucCW
	 9uis9PajnhhsXsfxrBcLL3ozhLm4p3qtRbgxKqnxwIIDLgI4NLcelEFgSgKaUvtCeY
	 U+sEu03a5guX851zT06Dk9dYWZfUib9viPFXZSHuhIq8lzfpLT7cMGDHyB2bYngD2N
	 I/0T/X8DI6LRziJJQDBBta4Cr3VlAW8AD9O7/thnoWdjZyqNOV1RRFYTIhK4niFiO9
	 gUOR0/1GMxfV1pt53Fy3wirbIrauQXfk3lSk9Sri292D/eALqHdCn/25rR7IIPiz34
	 wGl3cqkw+Y8CA==
Date: Wed, 2 Aug 2023 16:12:15 +0100
From: Conor Dooley <conor@kernel.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>, David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH 05/14] dt-bindings: display: rockchip-vop: Document
 rv1126 vop
Message-ID: <20230802-kinetic-doze-cc4c014fd65f@spud>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
 <20230731110012.2913742-6-jagan@edgeble.ai>
 <20230801-residue-tractor-5c63e4447f2c@spud>
 <CA+VMnFyh-ctPbf_j=CEXxPNKY+sUymV64Sdqqs-kY7dTojQYUA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+VMnFyh-ctPbf_j=CEXxPNKY+sUymV64Sdqqs-kY7dTojQYUA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230802_081222_059744_B676BBA4 
X-CRM114-Status: GOOD (  22.92  )
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
Content-Type: multipart/mixed; boundary="===============5976718224288003342=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5976718224288003342==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="WeTEyi+GuWka5zrg"
Content-Disposition: inline


--WeTEyi+GuWka5zrg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 02, 2023 at 08:07:55PM +0530, Jagan Teki wrote:
> On Wed, 2 Aug 2023 at 02:37, Conor Dooley <conor@kernel.org> wrote:
> >
> > On Mon, Jul 31, 2023 at 04:30:03PM +0530, Jagan Teki wrote:
> > > Document the VOP for Rockchip RV1126.
> > >
> > > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> >
> > There's no commentary here about compatibility with other, existing,
> > devices nor did you CC me on the rest of the series. How am I supposed
> > to know if appending to enum is the right thing to do?
>=20
> I had past comments not to add all people in the entire series and add
> one relevant developer on respective patches. On that note, I tried to
> CC the developers only involved in the respective areas. But, you are
> CCed to the DT patch that affected this binding.
> "[PATCH 10/14] ARM: dts: rockchip: rv1126: Add VOP_LITE support"

> Please let me know if I missed anything.

I suppose you missed saying in the commit message that this is
incompatible with existing vop implementations? Don't need to CC me on
all patches (although it is useful), but please let the patches explain
themselves if you don't.

Anyway, I went on lore and had a look, so with an improved commit
message,
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.


--WeTEyi+GuWka5zrg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZMpyTwAKCRB4tDGHoIJi
0tuWAP9mY7zkacp6M47unEG/3AvV43m4BEtY1X+hyTMYIPMIzAD7BzYIayp+DNjp
P5LIeT4KksQwpyU+R3sWinH07SzTVQI=
=28Ak
-----END PGP SIGNATURE-----

--WeTEyi+GuWka5zrg--


--===============5976718224288003342==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5976718224288003342==--

