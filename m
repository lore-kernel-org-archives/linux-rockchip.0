Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30F01C61DB8
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 15:47:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SMeCEt+UI+AdJesaO7BFGMBqYl4c6iouNiIbs7jdqbc=; b=Bb3R4o2jH3QENdQ3OFlUsQhobr
	/qf+iwbbSjDhn9g/Q38JMH0tqKtKPbANXRkLE5jjMpkhmp3t7rRor+yYpC4WpZxOpCa8IXgBA/8Kw
	ep0k12gNySurqXg5PjR4UosCuYLBEr3ScRLWZpXABUQVXGljdqV0iJCXafq1LkCC1XTPRSRXJDAfL
	GK0VLkbcqWxvVD0ZL7guBRjOz2DBHEQRVaf8GOa8ymbrqQoS6eI3PgmlOR3OlCDo5+68FoUIxRBXb
	nzJgM+JyhpRfWKYXOAjhiAa5QreHtHpEmLhvfg5+lwZTtJuq4gicrM+YkGEoXJFNVwJJd1ZKIPd8g
	rCz8tqiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKtI-0000000G4Ko-2vIJ;
	Wed, 28 Aug 2024 15:47:24 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKpz-0000000G2VV-39JS;
	Wed, 28 Aug 2024 15:44:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id BE50EA41AD8;
	Wed, 28 Aug 2024 15:43:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4481BC4CEC2;
	Wed, 28 Aug 2024 15:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724859838;
	bh=O1np8QZosEnT6CoJAfAm5I8eCz/Wg1ludBX9Ys2fqNI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BM9p5BaNivmnBBNVQtIrY1QD/tt2D8vbyGNQJWbE/aNYyf9Ai19AItTi0zYbbsxpc
	 cOz9D8KA9z8oOPxEo6f4coWNLLAyfQGK/EcKtB/koEVm/99JC3kAI4oGo/rnOVboez
	 CXdZxx75UAnq/BlX3epzAAIpFD9nGyZ5HiAGVZWSCvPIe7eIOJUpIu6kmF1JnUs1Pu
	 HoMDio+OjRoHc++NIpmoaItRP5ojrmAn9xFtkGTprrXOhgi16p7UP6ZPGMwoNqmk3B
	 XGudqvaQXKjof0S0nKt/soF7IjlzE6SjYDUjz4IhNl8BKZbIFjovIVhQXH35CPToSk
	 JJuCwgX6mYxfQ==
Date: Wed, 28 Aug 2024 16:43:54 +0100
From: Conor Dooley <conor@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 1/5] dt-bindings: clocks: add binding for
 gated-fixed-clocks
Message-ID: <20240828-throwing-gigahertz-739c6e5cfe84@spud>
References: <20240828101503.1478491-1-heiko@sntech.de>
 <20240828101503.1478491-2-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20240828101503.1478491-2-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_084400_390529_1B72EB69 
X-CRM114-Status: GOOD (  15.59  )
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
Content-Type: multipart/mixed; boundary="===============1922950500178172018=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1922950500178172018==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Db0ifl1sg5TNrM6U"
Content-Disposition: inline


--Db0ifl1sg5TNrM6U
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 28, 2024 at 12:14:59PM +0200, Heiko Stuebner wrote:
> In contrast to fixed clocks that are described as ungateable, boards
> sometimes use additional oscillators for things like PCIe reference
> clocks, that need actual supplies to get enabled and enable-gpios to be
> toggled for them to work.
>=20
> This adds a binding for such oscillators that are not configurable
> themself, but need to handle supplies for them to work.
>=20
> In schematics they often can be seen as
>=20
>          ----------------
> Enable - | 100MHz,3.3V, | - VDD
>          |    3225      |
>    GND - |              | - OUT
>          ----------------
>=20
> or similar. The enable pin might be separate but can also just be tied
> to the vdd supply, hence it is optional in the binding.
>=20
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

With Rob's fix,
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Think the current name is more clear about what this is, thanks.

--Db0ifl1sg5TNrM6U
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZs9FugAKCRB4tDGHoIJi
0ioGAP9mr9TXvsHOB+f0UQl60vnvgov9rBd/RyNqG0bUJQ2Z9AEAl60Yci5bd+Ip
VBFjGowWn1g+Jvui5emsFf6wjDDbxg4=
=KmNA
-----END PGP SIGNATURE-----

--Db0ifl1sg5TNrM6U--


--===============1922950500178172018==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1922950500178172018==--

