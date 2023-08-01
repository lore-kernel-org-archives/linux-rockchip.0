Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B5A7C00528
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Aug 2023 21:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z7Dseh+H2ZJoSEJykjbkk9mcNBgpuGqM2y6nKrFRRIo=; b=pcTw7rdCHWuggbsb2/gGhm18LT
	EE8GGaDzW9BCJ1Ni7YVubidEJZYu12j+bSf+tacpcjWRKVaxOG9AyAh+CAJFxqR5SlIK5sLFLpnOp
	JwtGuhtR3Lx505bWQ3rFd1tlxNqrLXC/JC8Uoez11+B2IS3/juVd9SrY48QBFglPz4OoriTuCJ+M7
	bLkNYKOTOpPll8l8MQF7rmdYPjdF1L1Z6Io4vs2tAF/Urs4KC++MSD4bdQr6ioYmOVSJIQ05oPvoN
	munfufkNRKY1dcA+0mDjJjii8kr9D5Jtt2QmRPAzsn54drZZQ07h3cRH48LtHKxL4cr0Z/E0NUvbn
	65wRP8Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQwYV-003Jdq-05;
	Tue, 01 Aug 2023 21:05:23 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQwYR-003Jce-33;
	Tue, 01 Aug 2023 21:05:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 98EDF61705;
	Tue,  1 Aug 2023 21:05:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F9F7C433C8;
	Tue,  1 Aug 2023 21:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690923918;
	bh=k/0yaN5mmQBaHjig4m14XSWgvdujOdGEwmwnD1Xh0QI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qdHvBB+KBf3Q5Vh5WxignzVfnsRm7UTycxrpHQHg1KaoDLAaRPlAlnukQ5S3IolzI
	 aXaXjddBFFEFlI+rFlP7dEAynJaEaPB/fO3FBwYv5vG7+o1F/8L3U5KKrqu8NaDyhE
	 YeHzPDB7jyZyGjodLsUN15ehzsQNrB8BIqkmhspxO/IK9yUdaWuNwBDJMA/dIQxj+N
	 zDtJJGcFEkDRMAXQMtLyMpJiy1LT7UJnqMGW+LwxQpgDiENzojDy+aCnJZBSyYrLbO
	 HHayuDCz7HKu9uMYYqTF+J2cLTENnUcMQqFaEMWQfiisegAgCpde+G3ohl1/FeWlOy
	 ZSkVTKy/mh01g==
Date: Tue, 1 Aug 2023 22:05:13 +0100
From: Conor Dooley <conor@kernel.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>, David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH 07/14] dt-bindings: display: rockchip-dw-mipi-dsi:
 Document rv1126 DSI
Message-ID: <20230801-fetch-playful-e3051d981fd1@spud>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
 <20230731110012.2913742-8-jagan@edgeble.ai>
MIME-Version: 1.0
In-Reply-To: <20230731110012.2913742-8-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230801_140520_065369_DF0BC56C 
X-CRM114-Status: GOOD (  16.59  )
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
Content-Type: multipart/mixed; boundary="===============8499736364653540240=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8499736364653540240==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="PdhcfD1FdcYjrOlw"
Content-Disposition: inline


--PdhcfD1FdcYjrOlw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 31, 2023 at 04:30:05PM +0530, Jagan Teki wrote:
> Document the MIPI DSI for Rockchip RV1126.
>=20
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
> Cc: dri-devel@lists.freedesktop.org
> Cc: devicetree@vger.kernel.org
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Sandy Huang <hjc@rock-chips.com>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>
>=20
>  .../bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml         | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,=
dw-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockc=
hip,dw-mipi-dsi.yaml
> index 8e8a40879140..ccf79e738fa1 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi=
-dsi.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi=
-dsi.yaml
> @@ -18,6 +18,7 @@ properties:
>            - rockchip,rk3288-mipi-dsi
>            - rockchip,rk3399-mipi-dsi
>            - rockchip,rk3568-mipi-dsi
> +          - rockchip,rv1126-mipi-dsi
>        - const: snps,dw-mipi-dsi
> =20
>    interrupts:
> @@ -77,6 +78,7 @@ allOf:
>              enum:
>                - rockchip,px30-mipi-dsi
>                - rockchip,rk3568-mipi-dsi
> +              - rockchip,rv1126-mipi-dsi
> =20
>      then:
>        properties:
> --=20
> 2.25.1
>=20

--PdhcfD1FdcYjrOlw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZMlziQAKCRB4tDGHoIJi
0gcPAP4gYxp0Dt+dfNq++YlKsOoCR+vDHgItHbVYbqVWUVx9igD/QtRuD+0/S51/
eB12vTH+tqtbNz+9UQ1y1/p1e1VOSw4=
=r80M
-----END PGP SIGNATURE-----

--PdhcfD1FdcYjrOlw--


--===============8499736364653540240==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8499736364653540240==--

