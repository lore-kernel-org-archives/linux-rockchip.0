Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD2CBCD5BAF
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 May 2026 16:44:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G4eiEM9i6z4FQE90IeBHTYIFUt8fb2TKCdi5NnIqyuY=; b=UpG662QSo1oa7of3n/ih+kDt6G
	qFTXBd2fVt2xoKzZqyY8lrxLPDxM6MKqLp9vlSOwBzHjVaR728rBd44pNkLk+eFkmbnVvh3jPizR4
	RbeDDOTkM9aGZi7+sVvvYrNC2atnMZ5ZBrpp7DoGY9xqp2BEuUToFLg2jCPF+vAnkcjojyNgcciA9
	AhOAc0IWLbZFB4Aq4mDaWD5E8FyaeyN0QcUTY3JRGrFyONglujutXZ60DD0k1JSQjMndBzKoooey+
	xaID9bKlCWRagqt+YDvawcpB/aMxplpwcF2IeaUz3rotk0TSNxRq6HMUPa0YqzWv/xLNwpaB9gRCx
	SauvxDAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ6Va-00000008X2e-0Nuj;
	Thu, 21 May 2026 16:44:30 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ6VX-00000008X1p-3qbV
	for linux-rockchip@lists.infradead.org;
	Thu, 21 May 2026 16:44:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C086640B52;
	Thu, 21 May 2026 16:44:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B01B61F000E9;
	Thu, 21 May 2026 16:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779381866;
	bh=hkD5q3ybbxXB0pw+vBiwtnqFqYqh9iUGnUm61svwc20=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=A3bIQKvdAYmuj0CgCcPujFJ3NDly7m342YdOJkQt3lkgslXpy6Ja5CuyqCsrxvKMn
	 nuplYdUfkkuKF4khMsPUafrHkRLOkY463WdCrq3CWD02ZnsOpl2olXW5j2LbsMiUyI
	 pYI3sfvdgd2qeGbjoNbIaoQ4Mv3c/cwioM6BmRcyFzDssNZreYluqSoiRJirbYZRzj
	 E7UASKM6r+rGM+1zvWiprj0UFIfqJOTFhEWr5Ahq2ldjywHTfUUhAqbIeawDC7IZI/
	 4HvN6nNHdISsoBwpRMZrMPNc7mygFiMyt/VwEmjwEpYxbxbsz6n7jabvORhrhTwJK3
	 8d1JnK8mR+/XA==
Date: Thu, 21 May 2026 17:44:21 +0100
From: Conor Dooley <conor@kernel.org>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
	andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH V8 02/10] dt-bindings: iio: imu: icm42600: Add icm42607
 binding
Message-ID: <20260521-premium-afterlife-0d7a22b77517@spud>
References: <20260518200526.458421-1-macroalpha82@gmail.com>
 <20260518200526.458421-3-macroalpha82@gmail.com>
 <20260520174217.6ca98524@jic23-huawei>
MIME-Version: 1.0
In-Reply-To: <20260520174217.6ca98524@jic23-huawei>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_094427_978368_CB0570A4 
X-CRM114-Status: GOOD (  16.11  )
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
Content-Type: multipart/mixed; boundary="===============3428518179319710310=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3428518179319710310==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bEO632PXk16dmYaM"
Content-Disposition: inline


--bEO632PXk16dmYaM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 20, 2026 at 05:42:17PM +0100, Jonathan Cameron wrote:
> On Mon, 18 May 2026 15:05:17 -0500
> Chris Morgan <macroalpha82@gmail.com> wrote:
>=20
> > From: Chris Morgan <macromorgan@hotmail.com>
> >=20
> > Add devicetree binding for the Invensense ICM42607 and Invensense
> > ICM42607P inertial measurement unit. This unit is a combined
> > accelerometer, gyroscope, and thermometer available via I2C or SPI.
> >=20
> > This device is functionally very similar to the icm42600 series with a
> > very different register layout.
> >=20
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Note that Sashiko has highlighted that the binding this being added to
> has a potential problem.
>=20
> interrupts are required but interrupt-names are not.
> That would be fine but the binding doesn't say there is a default
> ordering for the interrupts - so if we don't have names we have no
> idea which interrupt it is.
>=20
> This needs fixing - probably by adding a default

Worth pointing out that this isn't an issue with this particular patch,
the problem exists in mainline.

--bEO632PXk16dmYaM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCag82ZQAKCRB4tDGHoIJi
0tF3AP9zT2ovoUg3abQXDhNddp9vRDgQcc4N1UcoRdBUeNnXlAD/bjif4V1VDqjT
jdRERNCGBKXetgKMAL6b0PhKI8xKYw8=
=fvXY
-----END PGP SIGNATURE-----

--bEO632PXk16dmYaM--


--===============3428518179319710310==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3428518179319710310==--

