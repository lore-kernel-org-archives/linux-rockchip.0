Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C932C5478C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Feb 2024 18:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fGeYFg6dOuf54A531540H849pw8nWWYDc7lAEBESBnI=; b=Fk+DU7+KLP+g5ERH9wEvH9g4Jc
	kWTvosKF6E9sA0JQ8K+Gu/zXhmH606FR1aFHfW5uuYcaA1VkCy+TtGcMMfzmIobjTMRNpLRFQivAU
	D3Z4tk/ou0vSVWWpfGlsDS+MfMJmimoiuocS5+x5rkisz+eMxDiBp+tTRN5ZmBxpme0OWBXSY3by2
	NOGPDN1DDl1W85LP1kkajjT01fDqXZ8k5/YPXG+ea42sVS+wVEcs3vrRLlUmrpKAkwUVsUoIKXrK7
	4HPTdndoEhxaPs58Hz6IJvUsMPWejInyAON6gjfSmBhJsYf+MVdUHHLb7QrOQ6bf6etJClLl3tBGh
	wIE9PwDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdajQ-0000000AwKy-47mH;
	Fri, 23 Feb 2024 18:57:17 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdaih-0000000AwFN-2Icc;
	Fri, 23 Feb 2024 18:56:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BDA2161662;
	Fri, 23 Feb 2024 18:56:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46E74C433F1;
	Fri, 23 Feb 2024 18:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708714586;
	bh=92v8dqYoQe0iX+4jAPOv06DZwhWuz2g6WcnnQUex/Oo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ma/O6afag1lu+G6qSE6ZHE/afi7v0njoztfieEfet3YitV2DTYNkMjYA1qjQZMupF
	 e+hP5RGpdKb4LM+Vy/wVzveSW3dh6MzE+Xe9FnNv8eXR4K0LxS9XSXNoNaEht548F5
	 rQQyjSgd7T3I3gMkIK9K4i1fK0J/D0eHo9Cz+bWhCSvMJXFdJhj/Ojqq0KSFHKcf9O
	 FU2KBVGswGcXVVA++lZxinDtdJDbRHLgoHbf1Q2DwYhR1qqjrYbFa3McRq08oSmm2N
	 vpumBXTlEyECJOeZjLY2YY/5u46jDpM4A3fpec/owucX3QgZT8h/Ha+U/pKnfhrCXO
	 vADUqJtyyhgwA==
Date: Fri, 23 Feb 2024 18:56:20 +0000
From: Conor Dooley <conor@kernel.org>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: Mehdi Djait <mehdi.djait.k@gmail.com>,
	=?iso-8859-1?Q?Th=E9o?= Lebrun <theo.lebrun@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 04/14] media: dt-bindings: media: rockchip,px30-vip:
 allow for different variants
Message-ID: <20240223-repose-snuff-54d75755e9f7@spud>
References: <20240220-v6-8-topic-rk3568-vicap-v1-0-2680a1fa640b@wolfvision.net>
 <20240220-v6-8-topic-rk3568-vicap-v1-4-2680a1fa640b@wolfvision.net>
 <20240220-catchy-cupcake-e600e5af7650@spud>
 <5bb0b0a9-3d4c-4303-aa43-38789bee286d@wolfvision.net>
MIME-Version: 1.0
In-Reply-To: <5bb0b0a9-3d4c-4303-aa43-38789bee286d@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_105631_338266_7C60071D 
X-CRM114-Status: GOOD (  22.69  )
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
Content-Type: multipart/mixed; boundary="===============1857346170680092454=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1857346170680092454==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="c2uw00hLgTWLWAIx"
Content-Disposition: inline


--c2uw00hLgTWLWAIx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 23, 2024 at 08:03:20AM +0100, Michael Riesch wrote:
> Hi Conor,
>=20
> On 2/20/24 19:58, Conor Dooley wrote:
> > Hey,
> >=20
> > On Tue, Feb 20, 2024 at 10:39:14AM +0100, Michael Riesch wrote:
> >> Move the documentation of clocks and resets to a allOf: structure in o=
rder
> >> to allow for different variants of the IP block.
> >>
> >> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> >> ---
> >>  .../bindings/media/rockchip,px30-vip.yaml          | 58 +++++++++++++=
+--------
> >>  1 file changed, 37 insertions(+), 21 deletions(-)
> >>
> >> diff --git a/Documentation/devicetree/bindings/media/rockchip,px30-vip=
=2Eyaml b/Documentation/devicetree/bindings/media/rockchip,px30-vip.yaml
> >> index 675a1ea47210..7168f166798c 100644
> >> --- a/Documentation/devicetree/bindings/media/rockchip,px30-vip.yaml
> >> +++ b/Documentation/devicetree/bindings/media/rockchip,px30-vip.yaml
> >> @@ -24,32 +24,16 @@ properties:
> >>    interrupts:
> >>      maxItems: 1
> >> =20
> >> -  clocks:
> >> -    items:
> >> -      - description: ACLK
> >> -      - description: HCLK
> >> -      - description: PCLK
> >> -
> >> -  clock-names:
> >> -    items:
> >> -      - const: aclk
> >> -      - const: hclk
> >> -      - const: pclk
> >> +  clocks: true
> >> +
> >> +  clock-names: true
> >=20
> > This is, unfortunately, not how we like multiple soc support to be
> > handled. Instead, the widest constraints are added at the top level
> > and constrained by the allOf. If none of the names etc are shared, at
> > least the widest constraints for minItems and maxItems should be able to
> > be here.
>=20
> Just to make sure I got it right:
>=20
> clocks:
>   minItems: 3
>   maxItems: 4

>   items:
>     - const: aclk
>     - const: hclk

If the names themselves are all different, I wouldn't bother with this,
and just constrain the numbers at the top level.
Otherwise ye, on the right track here.

--c2uw00hLgTWLWAIx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZdjqVAAKCRB4tDGHoIJi
0sgDAP9NYmoVCik3KPzxF03GN7LgK3kwRDne9lST8Qo/eYyBHgD/V//mwx3Ir5bf
1SauEFkTl53Jdn4kpgjw4RAfMwEhDg8=
=E6bW
-----END PGP SIGNATURE-----

--c2uw00hLgTWLWAIx--


--===============1857346170680092454==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1857346170680092454==--

