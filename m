Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44B0DCE8D52
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Sep 2024 07:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DDu8Z4YsCvk9NeJ1dlCanoYd+sjPTqtlYyFSOjoKmSI=; b=PvEyfCNsC9UUUFCpr/srUKaemA
	tT+lx372wLXiLiPWOs9CFW6ljC8QEIWNuR8XNVlXPFQud83NInNeWIdmQ1zVM3ueN9t1XFAQq8WlN
	fTkGhhbVq24mOLyk+9o+iy49+MNxjtryhKY6SQRH48sgUZ+CA5rSxwurlW1aTQTU3DJ+mxSkxa0uC
	SzyADqaJm9jlK/sG1sN/tGresUuDfJ7DMn6QvdDVAoe7iDsKZAbRWgXJYiarNbhnNjIcRVXndFOQe
	PmcusTrNLXJfhCxI7+1AQoSBOxIojePQ5w1nKdzoyi8C98m29847lu/zeHimj2jKWpsvakC3cTWYU
	fa45ylfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srBl4-00000009fhT-13G9;
	Thu, 19 Sep 2024 07:39:22 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1srBjv-00000009fZD-1laC;
	Thu, 19 Sep 2024 07:38:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 35B8A5C5C31;
	Thu, 19 Sep 2024 07:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7240BC4CEC4;
	Thu, 19 Sep 2024 07:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726731489;
	bh=b/TvnlGUozolDpF9ubAiqQ9D9AtRZIsO8cTp8d7NLAI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Rzqo9i4HBub0UQQHqadkJlXlK0XP9ECaGqwUY0yaN8d8LOwnmKpkYdangf7hN1xu+
	 QRzVbLI/4PEi3VNE5sE1YBs6p7Jm4P8F58Rq9EHGU7AkQoduyi0iArzmi7Hnjq3XiK
	 hFCkBrWgzmMYgDq9bzpssEf/lm9OPeKfaiscMYEq+VXawTAJALx5kbRPXQoufEcRNn
	 JMUTYET0JEzX2h5z0Mnm/IF3UQajTGGrIx7qALDmQsmmgw/KadWfD+x4OFOu7/uLp6
	 8at4eriadMSHwrv91mXIR2sIFvRYddM6afiH6RjZrt2MWBPO3DACngcxT4UCUcJ+vN
	 Uw4SWerwhDi1A==
Date: Thu, 19 Sep 2024 08:38:14 +0100
From: Conor Dooley <conor@kernel.org>
To: Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: linux-rockchip@lists.infradead.org,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: arm: rockchip: Add ArmSoM LM7 SoM
Message-ID: <20240919-wikipedia-hamster-22ae9f9d8dd0@squawk>
References: <20240918165008.169917-1-liujianfeng1994@gmail.com>
 <20240918165008.169917-2-liujianfeng1994@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240918165008.169917-2-liujianfeng1994@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240919_003811_550709_4473D165 
X-CRM114-Status: GOOD (  11.30  )
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
Content-Type: multipart/mixed; boundary="===============5500013297653435521=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5500013297653435521==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="YWWdApAqxAOp6MrL"
Content-Disposition: inline


--YWWdApAqxAOp6MrL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 19, 2024 at 12:50:06AM +0800, Jianfeng Liu wrote:
> LM7 is an System on Module made by ArmSoM based on Rockchip RK3588.
> This SoM is used by W3 Board.
>=20
> LM7 features:
> - Rockchip RK3588
> - LPDDR4x 4/8/16/32 GB
> - eMMC 16/32/64/128 GB
>=20
> Add devicetree binding for ArmSoM LM7 SoM.
>=20
> Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--YWWdApAqxAOp6MrL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZuvU4wAKCRB4tDGHoIJi
0qzVAP4u/Ml6aPzDt2IXu/YTG+KwhPAvvDW9jFJWvja8pA8ndwEA8hdLvljuYsLA
qjo8XeWEgIIm0GDO4q2SQ6yd1MGSZQQ=
=4dhv
-----END PGP SIGNATURE-----

--YWWdApAqxAOp6MrL--


--===============5500013297653435521==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5500013297653435521==--

