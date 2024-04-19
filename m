Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2BEDC4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Apr 2024 14:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JaXqQweAKKg8dIiotxHR5cDGM+VCipSgLr+R4Di88to=; b=ZHIXa4NHQHuMKDfpSMZixRixgj
	k0hpEzI+EYO0VGupvyDWxHRzfHsxEg30SIs5Bt2A9YtWgIgyhA5stNDbijUgsjrBcYkeyWDHh8l2e
	YER1NY/MNa9GiG+kumSgTle/1HOFPk8q+bsbS13AF3JzW6mnVw9KWvWLM3I+nd6oWulhXM0c/73Su
	ISkCnxDO6IJ6Ci0j5yAkge89n6QA4fZ3IS8rzcKO8ev1D0AMknZvKNaVk1umTMyNkhxCcwgCUglzP
	Jbh6ec9GHxTKj1zaKAhVNG0ZbhTv4WCJKg+N6AYn1KIwfnWEuGFp201+GJJfZVxZc9a8TiIn5CwoM
	yxA0DYsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxowF-00000005uLQ-2NRp;
	Fri, 19 Apr 2024 14:10:03 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxowA-00000005uJ8-1pbc;
	Fri, 19 Apr 2024 14:10:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id BF3BDCE1AE6;
	Fri, 19 Apr 2024 14:09:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B89E3C072AA;
	Fri, 19 Apr 2024 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713535796;
	bh=jehuRMphqfkmVPEQx6BP9BRLXAz3lpdh4pzkarHFts4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AOQT4gHKpTFrLdSC660QQWrs1iLZu9MsQ/eKqaGaFCZaS/KrkNRNe9EGDi8hQC5VI
	 6tc6DvjaIo9GW36WK3D+Irw+pFQwsLHBr85C+nZfRNNU82IEOUHIEH8nd1P7GlLsof
	 Hv3oV83Fp09olkZB/fs8cdOppTQGHHvRKePG+k/FcXxTHp3WtllnP2ClZeMrrmkRo6
	 QjWCOcVgjVFlOEeO+npXQzMD3TvBaHAH65SmWK9pMI0tcjGd7sgac6X+s6kT6Tq17k
	 rMxM8Eb6Ve+Gg3ToKz+8JClr7RSvSqf8WQKZvhPua18y61uFyBAYdNcKnS+iJoN3VD
	 mzv5vFbRxyb0w==
Date: Fri, 19 Apr 2024 15:09:47 +0100
From: Conor Dooley <conor@kernel.org>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	robh+dt@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-kernel@vger.kernel.org, amadeus@jmu.edu.cn,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Correct the descriptions
 for Radxa boards
Message-ID: <20240419-triumph-cheddar-77fc2f6948b0@spud>
References: <1e148d6cd4486b31b5e7f3824cf6bccf536b74c0.1713457260.git.dsimic@manjaro.org>
 <1888572.CQOukoFCf9@diego>
 <20240418-attach-tigress-bc2b9f844fc7@spud>
 <c3c4a6ad48fbd62b44991c9bfd81570a@manjaro.org>
MIME-Version: 1.0
In-Reply-To: <c3c4a6ad48fbd62b44991c9bfd81570a@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240419_070958_861435_99CEFA3C 
X-CRM114-Status: GOOD (  20.79  )
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
Content-Type: multipart/mixed; boundary="===============4236524311158545925=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4236524311158545925==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7FkaqVBXtYg+l891"
Content-Disposition: inline


--7FkaqVBXtYg+l891
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 18, 2024 at 07:12:35PM +0200, Dragan Simic wrote:
> On 2024-04-18 19:04, Conor Dooley wrote:
> > On Thu, Apr 18, 2024 at 06:59:42PM +0200, Heiko St=FCbner wrote:
> > > Am Donnerstag, 18. April 2024, 18:26:19 CEST schrieb Dragan Simic:
> > > > Correct the descriptions of a few Radxa boards, according to the up=
-to-date
> > > > documentation from Radxa and the detailed explanation from Naoki. [=
1]  To sum
> > > > it up, the short naming, as specified by Radxa, is preferred.
> > > >
> > > > [1] https://lore.kernel.org/linux-rockchip/B26C732A4DCEA9B3+282b877=
5-601b-4d4a-a513-4924b7940076@radxa.com/
> > > >
> > > > Suggested-by: FUKAUMI Naoki <naoki@radxa.com>
> > > > Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> > > > ---
> > > >  Documentation/devicetree/bindings/arm/rockchip.yaml | 8 ++++----
> > > >  1 file changed, 4 insertions(+), 4 deletions(-)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/=
Documentation/devicetree/bindings/arm/rockchip.yaml
> > > > index fcf7316ecd74..ae58e25c29ec 100644
> > > > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > > @@ -767,22 +767,22 @@ properties:
> > > >            - const: radxa,rockpis
> > > >            - const: rockchip,rk3308
> > > >
> > > > -      - description: Radxa Rock2 Square
> > > > +      - description: Radxa Rock 2 Square
> > >=20
> > > I may be just blind, but what changed here?
> >=20
> > There's now a space before the 2.
>=20
> Exactly.  That's part of the Radxa's naming convention, which may be
> seen as somewhat similar to the general rule of spacing out values and
> their associated units, e.g. "2 MB" is in general preferred over "2MB"
> in nearly any kind of a formally correct document.

> As a side note, there's even so-called "half space" as a typographical
> convention for spacing out the values and the associated units.  That
> makes formatted text with such spacing a bit nicer. :)

Let's not introduce half spaces into the bindings though :)

--7FkaqVBXtYg+l891
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZiJ7KwAKCRB4tDGHoIJi
0vpdAP9ZWrts28eoF08Ze+LlZQlLraekiKILcD15q9SAIQAwTgD/VjVApPmxTA6L
EaOwHykkUAq7LQocAUirg0/WgMc5pgM=
=gUAd
-----END PGP SIGNATURE-----

--7FkaqVBXtYg+l891--


--===============4236524311158545925==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4236524311158545925==--

