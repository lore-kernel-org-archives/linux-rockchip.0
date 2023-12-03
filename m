Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B956C10DCE
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Dec 2023 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aMEYqCJztwxhiyEjw4nqqw159rGAE0XXtTGkehPwm6Y=; b=r6A9xRQ6fMN2MWNxm2uxttdz1A
	gxqUfcc6un11JQ36NDL/vX01xU4sdDpCLtbKti8TZaSl/MW2tkCi9IEW0G5NB+QznxRkBiCgv7W7n
	7Gl/Tt/v5HQm0ZbJt4um6HwxLH439k3A/shYuXAeAesmAxknr+0DLHwA1WwedbOtN1d+xO7UFkEu0
	5MSQJJ8Lp0Wpfdh/d+oWLR4+B07HhiSJTycBVmYHg+ZpobZVl869K/mEnKdiPbZpxrmSMPFLc3xT2
	WnGSTwyvC41So3oDja7RF5ZXOSTvXEER6D3bkzNtMb0UGpFQ1Idf9oH+F9JDsbT+F79n3m1XxLMqu
	8fZ64xQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9kcp-00Gh0a-1A;
	Sun, 03 Dec 2023 11:27:04 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9kck-00GgwP-1S;
	Sun, 03 Dec 2023 11:26:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 440B4CE0C2F;
	Sun,  3 Dec 2023 11:26:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AE2CC433C9;
	Sun,  3 Dec 2023 11:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701602815;
	bh=4v8ZRwT+lzUcVB1vmrVnhhMyxt4ufRUD0/bRFWzgiD0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hNOd/yjxS57o9lnIHHXjC0xFEdq9nOW9z7wtCs9i/VfEtPv8FCW9XlTpHDbGZ82p7
	 MGem1KhdkA/nENDGmwfGxzckfcT+ifrALkStACWDy480XeGcLOgdQXjEeGgf5XN0yZ
	 Rbdo8qfFWwXgoDsUM/LuJpdA9YLWzDpwF+kS7xZR7Nxhef3gQRjYwBCF7qm0aR0GL1
	 qkIHbuSF9ZFUwb8VUCLsLjZUbnLCmz4TpOhoPv9U7ECQuwi2i7oOUkK8h/In57Buzp
	 4XejgHXmJtfhF9YD9ZelucpD4iNjpIqDw0NRfjs8KiO3hfKsvL4DTGdN8ANDYQvWBA
	 X7elFvEf+WIuQ==
Date: Sun, 3 Dec 2023 11:26:50 +0000
From: Conor Dooley <conor@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	quentin.schulz@theobroma-systems.com,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add Theobroma-Systems
 Jaguar SBC
Message-ID: <20231203-landlady-capped-2d2b0f6c26b8@spud>
References: <20231201191103.343097-1-heiko@sntech.de>
 <20231201191103.343097-2-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20231201191103.343097-2-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231203_032658_741076_380011F4 
X-CRM114-Status: GOOD (  13.65  )
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
Content-Type: multipart/mixed; boundary="===============4931005286714150541=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4931005286714150541==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="r6/yndUbqCbeVuIg"
Content-Disposition: inline


--r6/yndUbqCbeVuIg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 01, 2023 at 08:11:02PM +0100, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
>=20
> Add the binding for the Jaguar board from Theobroma-Systems.
>=20

Acked-by: Conor Dooley <conor.dooley@microchip.com>

> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>

GL chief :)
Conor.

> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docume=
ntation/devicetree/bindings/arm/rockchip.yaml
> index 5f7c6c4aad8f..44181a36c5d5 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -875,6 +875,11 @@ properties:
>            - const: tsd,rk3399-puma-haikou
>            - const: rockchip,rk3399
> =20
> +      - description: Theobroma Systems RK3588-SBC Jaguar
> +        items:
> +          - const: tsd,rk3588-jaguar
> +          - const: rockchip,rk3588
> +
>        - description: Tronsmart Orion R68 Meta
>          items:
>            - const: tronsmart,orion-r68-meta
> --=20
> 2.39.2
>=20

--r6/yndUbqCbeVuIg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZWxl+gAKCRB4tDGHoIJi
0gRnAQCv+UlVzTntpykJfSQfbxDLQSWZsGnzJQxt6WXfMtzvCwEA1hWDzOsSNRiC
4hW0Ue3qQE6BA4TrgynQR/+kQRxNhAM=
=bpH3
-----END PGP SIGNATURE-----

--r6/yndUbqCbeVuIg--


--===============4931005286714150541==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4931005286714150541==--

