Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 149E3CD8CB9
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jun 2026 15:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DUigIuUNQt4StAY9fABu/p0pCFRRhKuHVhN/sk/+fUM=; b=WYI3xKyqmudTVve6B4dRPYcp/V
	gGAhnMHOGtFH0JwgfTAjzyxCi9LB4mgC961btu2UdZZMO0sf4fHoUq3LLPuMPI5dTQrbIBMduurwE
	6NO539lK9WmvEeH6OZScQWc8pKvr6QmFkvcq5Omd0aeNhcDpjh25ZzdTfi0FXwBCgppMshzySp66T
	L6TiO4uAe5roQpcreB+YHnSziYRC7JsjTmrDgowun8Wdq0hE0zD5hdNLHiJs+GHhaljj2a+jv4LrW
	HSMTTMNC1VwjWJ9YZCNrsyek08gUzUQwj3/YcvNB56iPXwuLxkP3Cx1CXW8TyNvVIhkPi6mTfbnFs
	tYlhFHmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWyok-00000005ymX-45rA;
	Tue, 09 Jun 2026 15:56:42 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWyoj-00000005yls-2MYw;
	Tue, 09 Jun 2026 15:56:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 08A4660234;
	Tue,  9 Jun 2026 15:56:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 736691F00898;
	Tue,  9 Jun 2026 15:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781020600;
	bh=S3aQpyzWcbuiEjHkJj+J0gRZ5Klatf36ZnyjH1OVHuc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BwDPKhWWNPaluMsVm3+c8Rbl8uSyH14i2hGsJJVwwtrTBqGL20ODP3cD6dXot4nZ/
	 l1yv0e5ojFFJ3soY97GaHwZsEkTwuPuNMG/2zcp0+V+FL1M7Ig1JWY1cX1F2sTZrhP
	 CMX1ISLeJFoAMWUDedLaCVnQ8Br7mXpGZrK1KzC6GBc3gI2Eq8i62mG5+m7/E36vcu
	 DbVriQd7GEKlF18l5IzECe0fvhz8bjI+lCT88rMFSSiwfSnK3UdCJXJ+KiZivU2lpq
	 JZ5CQrRl9B+jJkkTrNH2+nDRCd5YU7VvtvZp+CSsq0ZiBF7uyqQhJwtyLL0izl5xLD
	 BCJk6xZ69dNSQ==
Date: Tue, 9 Jun 2026 16:56:36 +0100
From: Conor Dooley <conor@kernel.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Diederik de Haas <diederik@cknow-tech.com>,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: usb: Add Rockchip RK3568 compatible for
 EHCI and OHCI
Message-ID: <20260609-subsidize-saturate-051fb051536d@spud>
References: <20260609154124.445182-1-jonas@kwiboo.se>
 <20260609154124.445182-2-jonas@kwiboo.se>
MIME-Version: 1.0
In-Reply-To: <20260609154124.445182-2-jonas@kwiboo.se>
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
Content-Type: multipart/mixed; boundary="===============8627273765074561634=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8627273765074561634==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WY+aMPj6M1r/J6Zt"
Content-Disposition: inline


--WY+aMPj6M1r/J6Zt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 09, 2026 at 03:41:22PM +0000, Jonas Karlman wrote:
> The Rockchip RK3568 EHCI/OHCI controller depends on clk_usbphy1_480m
> being enabled, or the system may freeze when registers are accessed.
>=20
> Add Rockchip RK3568 EHCI and OHCI compatibles with a similar four-clock
> constraint as RK3588.
>=20
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
> Existing DTs for RK3568 use the plain generic-ehci/ohci compatible,
> next patch make use of these new compatibles and adds the missing
> clk_usbphy1_480m clock references.

Reasonable complaint here from Sashiko.
pw-bot: changes-requested

Cheers,
Conor.

--WY+aMPj6M1r/J6Zt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaig3tAAKCRB4tDGHoIJi
0oLkAP0ZrNxgoceQzD4valaereWdt2Bj3s62HUkYP8wgyZEVngD/QekZpNu3e8iB
Owz8oicDuMBs516aLfpRuD2ENHNPeQ8=
=g7IK
-----END PGP SIGNATURE-----

--WY+aMPj6M1r/J6Zt--


--===============8627273765074561634==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8627273765074561634==--

