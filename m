Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 731D7CD5BAC
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 May 2026 20:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1PZLooI3spjIe+56WxO6/P6PNDUE0Bh28+oa5ddKfmg=; b=ryHQ8margrc20MJPuZ0EVX4H2c
	8K5Mo9e3+Hljr/jUOPvLsPKL1V8p6NNohqfg10Qp8e1iExmHD6jv/yCivN+Oqk1Vo6yDf9li1bl3n
	uOjIQ9Cs9Gyo9AezccbxCHTQlsbEoL7ppdmt0dhaTu/EYcKhd87+Au9J3ZGZeFrxCHrbW/Nv66WqA
	nLE4WvTFlKpDpWiQTbYzc9Xbc8kX2RZW9Ku1m0hJ9RBMhMkNbO5EnE/JCuYXwiH0sROF9a6VWB3lS
	UG4z9nJh8xlFaFjGeD0EKR4oi+mHL4lM70QNplI0/MWZ5PYxLqzeurbHRpG+iB3Iz5MUkAI5dleiX
	2DMrX1nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ9gl-00000008z1P-0F1x;
	Thu, 21 May 2026 20:08:15 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ9gj-00000008z19-0plc
	for linux-rockchip@lists.infradead.org;
	Thu, 21 May 2026 20:08:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 934D360098;
	Thu, 21 May 2026 20:08:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A1E01F000E9;
	Thu, 21 May 2026 20:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779394092;
	bh=707jK27ZELdllgXoMxuZs9+Kj+Za41Z+d79jxmYPrkQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=XnQhC89x81h+yCkodScj88ddByjv2tXNQ9ox5EpkfYEkbUqs6gFJeqYItZinvYTvY
	 nGOei2abuhB6Yz/cursfuF2ME+VN5H4K7gQJN1Ryot1KMbKKg+tfwgeUkoQtfdps6Z
	 A+P60g/kPyvcov6QxzohAuStjaHKdz+bDuukmJ6yL5pBZsmgJdPRlhjBIZ2UzIxIT7
	 a4Gm1egxLXUBTJbqwcyZPK60MTOhifSBlpPf5qDoY06uuzTYWxprsFwCj4OuIItsN+
	 wn5p5pqW0A2yQuIXw7PM0vY6X0xFH5ttinTitzWsZsw+JDxM8/Eh6URlmHtnNdKdto
	 bGbABwQtCXzXw==
Date: Thu, 21 May 2026 21:08:07 +0100
From: Conor Dooley <conor@kernel.org>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
	andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH V8 02/10] dt-bindings: iio: imu: icm42600: Add icm42607
 binding
Message-ID: <20260521-challenge-flaccid-26b6f5d2d0bd@spud>
References: <20260518200526.458421-1-macroalpha82@gmail.com>
 <20260518200526.458421-3-macroalpha82@gmail.com>
 <20260520174217.6ca98524@jic23-huawei>
 <20260521-premium-afterlife-0d7a22b77517@spud>
 <PH0PR19MB99733879756FFB321CDCDD9B81A50E2@PH0PR19MB997338.namprd19.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <PH0PR19MB99733879756FFB321CDCDD9B81A50E2@PH0PR19MB997338.namprd19.prod.outlook.com>
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
Content-Type: multipart/mixed; boundary="===============1618513737920739205=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1618513737920739205==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wintQjHsEd+E3xkx"
Content-Disposition: inline


--wintQjHsEd+E3xkx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 21, 2026 at 12:43:09PM -0500, Chris Morgan wrote:
> On Thu, May 21, 2026 at 05:44:21PM +0100, Conor Dooley wrote:
> > On Wed, May 20, 2026 at 05:42:17PM +0100, Jonathan Cameron wrote:
> > > On Mon, 18 May 2026 15:05:17 -0500
> > > Chris Morgan <macroalpha82@gmail.com> wrote:
> > >=20
> > > > From: Chris Morgan <macromorgan@hotmail.com>
> > > >=20
> > > > Add devicetree binding for the Invensense ICM42607 and Invensense
> > > > ICM42607P inertial measurement unit. This unit is a combined
> > > > accelerometer, gyroscope, and thermometer available via I2C or SPI.
> > > >=20
> > > > This device is functionally very similar to the icm42600 series wit=
h a
> > > > very different register layout.
> > > >=20
> > > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > > > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > > Note that Sashiko has highlighted that the binding this being added to
> > > has a potential problem.
> > >=20
> > > interrupts are required but interrupt-names are not.
> > > That would be fine but the binding doesn't say there is a default
> > > ordering for the interrupts - so if we don't have names we have no
> > > idea which interrupt it is.
> > >=20
> > > This needs fixing - probably by adding a default
> >=20
> > Worth pointing out that this isn't an issue with this particular patch,
> > the problem exists in mainline.
>=20
> The driver I lovingly borrowed this code from seems to have fallback
> logic, basically picking the first interrupt if it couldn't find one
> named "INT1". I was told early on not to do this that way, so in my
> case the interrupt-names would be required (but not for the existing
> driver because of this fallback).
>=20
> Should I make the requirement conditional just to my compatible
> strings?

Sure, sounds like a good idea to me.

--wintQjHsEd+E3xkx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCag9mJwAKCRB4tDGHoIJi
0uWgAP96xINoifZYfEqvlm8mnXkLoTpcNpRpexPVhkPesyjNSgEAyT1KnP4I+z5d
not7x1APCxb9+VXz2wgU/dZA0O48bAo=
=yomg
-----END PGP SIGNATURE-----

--wintQjHsEd+E3xkx--


--===============1618513737920739205==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1618513737920739205==--

