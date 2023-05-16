Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69DA2C77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 May 2023 21:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8U/HJISdJHd5IFV9aUCtel0+a5aqtBAjMMd0lPDjwrs=; b=PzI7ReWCzKH8gbjerlT4X1V1QK
	Jjv3gONg7oDu1RF6ZCZNXo5UkiL8AyP+f0j8gAasPlDkvvmLQFP0O3KDPT8eDCgCpd6x1XUEXSpd/
	hGL6ec2V0CIwwcI2q6h2ntz5P5t+V76A9AqNQMUiFuBTIU8CUMvW/dijlU/0omV5fG5efAapLpxVZ
	mvk/bOdLzUdCdx5eB0ykygzWTWYbauXdRxAS8N1eX/LZSWuhvORXJK1dARTtKMQrV+XhWfwMO5ARS
	ZvekD/e7dLaBNLyR2iD68s26Da6vYNMv/KVuYMBPXozEVhIFGrD44M2xJlnlVLLv+bF7g5eehJqpa
	C742lc7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pz207-0079Da-1n;
	Tue, 16 May 2023 21:14:31 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pz204-0079CM-22;
	Tue, 16 May 2023 21:14:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2F01A6145B;
	Tue, 16 May 2023 21:14:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1835FC433EF;
	Tue, 16 May 2023 21:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684271667;
	bh=y+rreP5sHr2YNg/6jHqP3cZxDuJomyg0Ljp/B6vy2c0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Fh3tJkcFmYX8eKMNsO2rr9g9bfH1UAfc224Vpk+1usIlIWZfpWIzsZq020oBoR5LD
	 MZk+63ZXtFcTKi6m9ssDy7MAowK3OK/k9bjGxx7k1Ls7dET+lSL3MySqL9t04JAUV1
	 92ekH95HH5lqkD8+SALfYScMTC2h235y7CsX/0SV3HcsoYTvVE7NK11sTSq2r2CLLG
	 6C/LS2EtLKX/QXxKX7vgBmo3l/HQ1iPHHe4xTBeRfw6zdraZU6D2zEnlrF9br8UVi2
	 mrqHa+OGTrM3JCBjl9mqFb+IDMQbiySepseuw2hOEnYwTzBlQk4ANa9rW9lf/Pu+8x
	 VzMsZsnQBDuSg==
Date: Tue, 16 May 2023 22:14:23 +0100
From: Conor Dooley <conor@kernel.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: arm: rockchip: Add Edgeble Neural
 Compute Module 6B
Message-ID: <20230516-frostbite-demystify-8634264693e3@spud>
References: <20230516163454.997736-1-jagan@edgeble.ai>
MIME-Version: 1.0
In-Reply-To: <20230516163454.997736-1-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_141428_740507_07C24138 
X-CRM114-Status: GOOD (  13.10  )
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
Content-Type: multipart/mixed; boundary="===============1730917617718121346=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1730917617718121346==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="98xwV+p72ipvBnbv"
Content-Disposition: inline


--98xwV+p72ipvBnbv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 16, 2023 at 10:04:51PM +0530, Jagan Teki wrote:
> Neural Compute Module 6B(Neu6B) is a 96boards SoM-CB compute module
> based on Rockchip RK3588J from Edgeble AI.
>=20
> Edgeble Neural Compute Module 6B(Neu6B) IO board is an industrial
> form factor evaluation board from Edgeble AI.
>=20
> Neu6B needs to mount on top of this IO board in order to create complete
> Edgeble Neural Compute Module 6B(Neu6B) IO platform.
>=20
> This patch add dt-bindings for Edgeble Neu6 Model B SoM based IO board.
>=20
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--98xwV+p72ipvBnbv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZGPyLwAKCRB4tDGHoIJi
0pnaAQDZ3cu8KV6KuLy7sKcu+MTeHXDdnLgIm6dSJIVhCgh0FAD+IlJhrxNG1Y7n
l39cirgNe117K2ElBTOnxP0/6Dfssww=
=lQrB
-----END PGP SIGNATURE-----

--98xwV+p72ipvBnbv--


--===============1730917617718121346==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1730917617718121346==--

