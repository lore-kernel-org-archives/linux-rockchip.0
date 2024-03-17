Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75DBCC54E60
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Mar 2024 14:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2devJx/L3D2fg8kEwIquqGq6Dqkt5FGTH3C4tE+6SBY=; b=tubOEUfvuALgb5uhliIqwzKFbh
	YgjQVRDRqiYJQdfodBPqv+jU4wT6C+QALBoGLFKdwb0Ex2VfqhHWbH6Sa1MGjcc5OqXxdbfCVteW7
	t+ZctJ9JMwdcN3NmL38WMay6X4ycRRsNNvw+w2FpPCnpuwUwDcQyHWgFT75GYPBfOjhmLqNQUXqUO
	WLFIOjUY6qlZAxVLSHYEsjbqj/cpBJQngJLCVBhB8rraHKjBFnXAONCcE+in773L/ndyoG/zYl7kr
	tyq9UzwkwELIbpXVKbjj8wiqMQ9ocdcjCLfuesDh2tvj02el/AJ5qgDuTeDi3FmHWH+qZJnlGqK5b
	nYT5ipBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rlrtH-00000005T8Q-3YVQ;
	Sun, 17 Mar 2024 14:53:36 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rlrtD-00000005T6R-1C3v;
	Sun, 17 Mar 2024 14:53:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 48BA360AEC;
	Sun, 17 Mar 2024 14:53:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA688C433F1;
	Sun, 17 Mar 2024 14:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710687209;
	bh=w7goVQbsQpbIFvvOI/R9DZTt0gDoXmk+7mx7zeObV7s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PTpBurfMYJwhBhaHvswPwUHTTVhvf8z1Oydio7vPjF5y+RR7oGgDGgqB8BvBNS1Id
	 eh8A9r8MOYPzHH4CGs3UTnOAm/0ofrlqHRL0t3Y6p9NEDDXGcollhbj/4DSk1c5UzE
	 8XITge9mWM5zpoxgSNZcW8WKc2RcUJOFiVDaAzp08P50slpSa+U0p8D7U5h68YQ7eK
	 CPHblEoDvLrYrgSjyAmtstUF4frK3Qxfv6VMDuF1mw0uAD1hife1WMz+pzBr+12emt
	 mv5Y2z/2Br0EJ+iYAqZzkDzE+/sYPwzh6sghr4eeico7RmcGBSf52lXdPwuSwkWrqF
	 U4RW7yBhkDHug==
Date: Sun, 17 Mar 2024 14:53:25 +0000
From: Conor Dooley <conor@kernel.org>
To: Dmitry Yashin <dmt.yashin@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: arm: rockchip: add Forlinx FET3588-C
Message-ID: <20240317-graded-splicing-0d37dc7429e4@spud>
References: <cover.1710506373.git.dmt.yashin@gmail.com>
 <2c7a99673ab4840bc7052eb600363d5163c5cfae.1710506373.git.dmt.yashin@gmail.com>
MIME-Version: 1.0
In-Reply-To: <2c7a99673ab4840bc7052eb600363d5163c5cfae.1710506373.git.dmt.yashin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240317_075331_464452_3FB7B680 
X-CRM114-Status: GOOD (  14.89  )
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
Content-Type: multipart/mixed; boundary="===============6089879566234066077=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6089879566234066077==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="77kncDpKEGz2z0+1"
Content-Disposition: inline


--77kncDpKEGz2z0+1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 15, 2024 at 07:18:05PM +0500, Dmitry Yashin wrote:
> FET3588-C is an System on Module made by Forlinx based on Rockchip RK3588.
> This SoM used by OK3588-C Board.
>=20
> FET3588-C features:
> - Rockchip RK3588
> - LPDDR4 4/8 GB
> - eMMC 32/64 GB
>=20
> Add devicetree binding for Forlinx FET3588-C SoM.
>=20
> Signed-off-by: Dmitry Yashin <dmt.yashin@gmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docume=
ntation/devicetree/bindings/arm/rockchip.yaml
> index 5cf5cbef2cf5..d87f4955f509 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -211,6 +211,13 @@ properties:
>            - const: firefly,rk3568-roc-pc
>            - const: rockchip,rk3568
> =20
> +      - description: Forlinx FET3588-C SoM
> +        items:
> +          - enum:
> +              - forlinx,ok3588-c
> +          - const: forlinx,fet3588-c
> +          - const: rockchip,rk3588
> +
>        - description: FriendlyElec NanoPi R2 series boards
>          items:
>            - enum:
> --=20
> 2.44.0
>=20

--77kncDpKEGz2z0+1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZfcD5QAKCRB4tDGHoIJi
0j0MAQDkKFcXiOYKIo1s46oW6pAOm+Dc4/1YTBVDX5kMxwZjTAEA0jqcm9BNz2KX
nDk0fSWnik2Z7kmkptHXR5ULNPylcwg=
=Y81/
-----END PGP SIGNATURE-----

--77kncDpKEGz2z0+1--


--===============6089879566234066077==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6089879566234066077==--

