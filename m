Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 116CAC5AE5A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 15:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AYnx0laoz+Ht3sB+d8yMQtyBF97vOOybP6RWTHt17N4=; b=BGkB3euAHa7UMnzAaDV9eP0SKy
	dEb8yebJ6NsXn/aaUq/ujvrVZKuuVGFISrm81fbE0/p9skiV09DGKg5oX+npMJ2Hw3tbQc1WE2js/
	lpsjtYyDqwC+++eNQORgr7nWULr/64Lo6ieWDmt2nuLfk0tBLhDYmFEdbVayg0an9N4ZfS0779U5N
	tG+vgqVB2VEfygGfoXR0sGfc3PpqSHuGgPbEmRgSv6VAe0/Db9JeEItUF7LiFp+MeVJtP3G6eMi+l
	GmzIt8KnF9yL9vdslkrgY/f0CXU6vdgtogtfcig/RystudY7LEYGlZ8ErSNDIfpdlZ0BR5uSLBupA
	LNLf1/Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKqv-0000000G3HW-1rAk;
	Wed, 28 Aug 2024 15:44:57 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKlr-0000000G0eK-3nUW;
	Wed, 28 Aug 2024 15:41:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 0215FA41AAD;
	Wed, 28 Aug 2024 15:39:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1F11C4CEC9;
	Wed, 28 Aug 2024 15:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724859582;
	bh=bJikFcZwx9JucrgqW1e8FTFYmK48P/7CWwLxWQz7Xpg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jmcH+K1Wl8Wvhvdo3dN1dZyG8OU9/A4kujAK5JNouySApI/WPoXAg2h+XbLKaxFoM
	 2LN2x5TR/J/Wv4T2SGaRwPP4HGEt7yc8JKfG/w3RIj06+iTd8S6zr5PeOlmfflMFxx
	 5a5U7ylXEIVsbGfHEOIKG0QV4w2lE5o1QfR6DDCsczh3i93f2UWfxNA3vLQ6iiSqyL
	 360zSE8Ipu7mDpRXtBlc7uwlRQOo2R40z1bpYDUDaN0WINqTPh8x/a1YXOlqEdPLts
	 uPhdFiMWZcGcDNa88PC9pg1aUQrsahtAqspZA1uy2g9zbKCcqe8krLzZiftVFq5+I8
	 Ds0uO2In3ea9w==
Date: Wed, 28 Aug 2024 16:39:38 +0100
From: Conor Dooley <conor@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, kernel@collabora.com,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] Fix compatibles for RK3588 VO{0,1}_GRF
Message-ID: <20240828-reprise-lethargy-1190b6e3a05d@spud>
References: <20240828-rk3588-vo-grf-compat-v2-0-4db2f791593f@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240828-rk3588-vo-grf-compat-v2-0-4db2f791593f@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_083944_030390_F18559B2 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============8844386670356938741=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8844386670356938741==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="MHhSniWftcmWfCNL"
Content-Disposition: inline


--MHhSniWftcmWfCNL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 28, 2024 at 03:40:07PM +0300, Cristian Ciocaltea wrote:
> As Conor noticed recently [1], RK3588 VO0 & VO1 GRFs incorrectly share
> the compatible string, since they are not identical (though quite
> similar in terms of layout).
>=20
> Provide dedicated compatible strings, as a follow-up.
>=20
> [1] https://lore.kernel.org/lkml/20240821-stretch-scam-09d7adc08a4c@spud/
>=20
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

--MHhSniWftcmWfCNL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZs9EugAKCRB4tDGHoIJi
0jSfAQC7QoPhTY9jXgMOAKRdVlBmctOzmHqYkq2eO/gU9HyYCQEA/WygIBP5zkLi
fD/XjTO50/CMHhRbMTBYAzARqySdpgg=
=3ZzO
-----END PGP SIGNATURE-----

--MHhSniWftcmWfCNL--


--===============8844386670356938741==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8844386670356938741==--

