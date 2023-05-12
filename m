Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7D2AC77B7F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 May 2023 21:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9tgAnltYz+ZmAsKs7073BhtK0qYENdROh+E63GCF9jM=; b=3W0PfGFxvaZhm7HPVcX29/T2tE
	INrREMP4UtpjoCtS/8iGKpe3LV9A1GUwlz+mm1kuohuvDyRNPM3cI0WipdNc5X7ZkLua9oHkx/q5v
	Y+anEAwMP4xHEGSuamIkW6ZduCL4vFn+k6O4/3FLTw5tt556YrHdFcw5oaqkyTP9T9Rnhr81dh4ev
	PhPsHzhz+zeTuCwLWepvwPD8IGWwsZq9ZfLHwzbxwLmtZNRyvOmrVO83cYsqIoK+TqLwME167ctpu
	wPAYzCVMrOMVWBbUrFi3mOXCCLZwj61LvObsKgFfJLJD9L2kHomoaiTsT9+EgkaX/PpqaRdWd9OtC
	IqyRDRkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxaUh-00D6l9-2I;
	Fri, 12 May 2023 21:40:07 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxaUf-00D6kO-2v
	for linux-rockchip@lists.infradead.org;
	Fri, 12 May 2023 21:40:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id CA36863EAF;
	Fri, 12 May 2023 21:40:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F23FDC433EF;
	Fri, 12 May 2023 21:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683927604;
	bh=KIkWcPr+8Ai6rs8xhYCgfBIb28NBYuUZ1jlpiLJME20=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FNJuHI2QEtiU2N37bw8ItRP1jT75L3EDor153a7oE0LMkiHQUEFmFCBf7Mz4fNaVB
	 61qfrbfqHA6jyHkUNcoj6Bpluzu7qKY/G9dmN+3Kiq5++XCcImQaj8gy9IhA0akCqF
	 u1RCemaM6uSCiwnAzsp1cbuAcgao4atGPkTejglHtoTwZ1OOesK8y5jaeNOtrNg0IB
	 3HPCJK4qJXTtupNHyIyTPgCiDXg1EN3JbsSzglXOvYkxKCGmF7T7WY+dJoyPUxGiVA
	 kknuOoeQujZsH2HKQSeWti6h8A/6vkX7hGJipeNd9qW17FNPKEGAE0OXGOTqtswo3j
	 KEMWbp/WB5Fqw==
Date: Fri, 12 May 2023 22:39:59 +0100
From: Conor Dooley <conor@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	maccraft123mc@gmail.com, sebastian.reichel@collabora.com,
	jagan@amarulasolutions.com, heiko@sntech.de, conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: add Anbernic RG353PS
Message-ID: <20230512-mothball-mongoose-724fd30fa8e4@spud>
References: <20230512162039.31132-1-macroalpha82@gmail.com>
 <20230512162039.31132-2-macroalpha82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20230512162039.31132-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_144006_084455_88B02B6A 
X-CRM114-Status: GOOD (  17.57  )
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
Content-Type: multipart/mixed; boundary="===============6071717049189779693=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6071717049189779693==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6W+/UUZmsps6p5qu"
Content-Disposition: inline


--6W+/UUZmsps6p5qu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 12, 2023 at 11:20:38AM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add devicetree binding for Anbernic RG353PS. This device is identical
> to the RG353P, except it does not have a touchscreen, does not have
> an eMMC, only includes 1GB of RAM, and ships with only the 2nd
> revision panel based on a Sitronix ST7703 controller. Support for the
> panel has been added in a separate commit.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

The see-through case looks kinda cool actually.
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docume=
ntation/devicetree/bindings/arm/rockchip.yaml
> index ec141c937b8b..362df3f2a037 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -40,6 +40,11 @@ properties:
>            - const: anbernic,rg353p
>            - const: rockchip,rk3566
> =20
> +      - description: Anbernic RG353PS
> +        items:
> +          - const: anbernic,rg353ps
> +          - const: rockchip,rk3566
> +
>        - description: Anbernic RG353V
>          items:
>            - const: anbernic,rg353v
> --=20
> 2.34.1
>=20

--6W+/UUZmsps6p5qu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZF6yLwAKCRB4tDGHoIJi
0t21AP9rVHBoIPtOldCOdXy+x9g4qaYdLwxad4HevcZAMDjtlQD/WnT6rH7bcmwR
ZH44LV1MSD2ecdKiz8FhRzH+NntCvAk=
=JHJc
-----END PGP SIGNATURE-----

--6W+/UUZmsps6p5qu--


--===============6071717049189779693==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6071717049189779693==--

