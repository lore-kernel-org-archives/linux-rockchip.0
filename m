Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E68BC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 15:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k3VdEWUddRx0iDj5citqhoJhw3mDNxJGYMl52pbDlf4=; b=Ypkbbgtnt1OhfWWl07MM29xuoa
	yFtW2pGojDrctafWoVBPIPrlp3XYTvpLr4Z+cNJY6vxFRuhP0KCUTDV5K8fsykR2vfrm2K7djVTBp
	2x6Lb1iMO1j4uduiHedT1pqt2UrB9/IpY7LSKf4A6G8ata97spNl0DsA2ZUz0M4S42ohlF91ZWSpw
	OTty8KDPn7YiDD0PZr3LR8b8z2Il8/ZULxaGOzAV36szGotOTz+CVnEkQYS7ZoCBaHtP/MZWOWvE5
	7bVlbVXxc9l+64X9bchCFQd/XW2rW+IVJEYELF9yVbEuni3o1Cqme9yGk4KNn+T3yRhh4lUwWYir7
	FU1iBkdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sec3P-0000000AJlZ-4AHc;
	Thu, 15 Aug 2024 15:06:19 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sec2h-0000000AJce-207U;
	Thu, 15 Aug 2024 15:05:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9578861EE3;
	Thu, 15 Aug 2024 15:05:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6247C32786;
	Thu, 15 Aug 2024 15:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723734334;
	bh=kdxgDvnGpbEnejq1EW4eeTr+RENIvdMIcCBPIwX4bI8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nRQLGVRyLyC1c1z5GLqUVa9YCf00/ebzx4QTigD/gD2vbSypInUg/um3rYJ3qfYV0
	 A/X0QbFT/b+YdyYbwx5EBRzkCf8xz2iH/I+oDhlkcG6RQPea1iSd1qVS1EWi+2Bdlh
	 w43sgZyS/xXGu34amPeqTjvy4ufWFYJ9hrFtHWbM8Nveku9wsEk+D2fXGnFRoCH0dW
	 f7E8D+b8S3UJTeCE/1abqF36h4mYst27N5GfTSw9E7wYSuZEHYmb3XmAg9FaT5cO41
	 V6+ZUXkxPeQmxbnI4tGxpmuQHocl7APtTQk4WrrHkJLMCMopRQhlyi1fFnM7u26A6r
	 ujGTIYfz6WvmA==
Date: Thu, 15 Aug 2024 16:05:29 +0100
From: Conor Dooley <conor@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v3 1/2] dt-bindings: pinctrl: Add rk3576 pinctrl bindings
Message-ID: <20240815-illusive-pusher-43d3cced8bc9@spud>
References: <20240814223217.3498-1-detlev.casanova@collabora.com>
 <20240814223217.3498-2-detlev.casanova@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240814223217.3498-2-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_080535_665763_AFC058D3 
X-CRM114-Status: GOOD (  18.64  )
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
Content-Type: multipart/mixed; boundary="===============3122459676433434449=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3122459676433434449==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Mv6KBtNoyPhwleR5"
Content-Disposition: inline


--Mv6KBtNoyPhwleR5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 14, 2024 at 06:30:38PM -0400, Detlev Casanova wrote:
> Add the compatible string as well as the rockchip,sys-grf field which is
> only used on this SoC.
>=20
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

> ---
>  .../bindings/pinctrl/rockchip,pinctrl.yaml     | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.y=
aml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> index 20e806dce1ecb..28f8dc412cf92 100644
> --- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> @@ -45,6 +45,7 @@ properties:
>        - rockchip,rk3368-pinctrl
>        - rockchip,rk3399-pinctrl
>        - rockchip,rk3568-pinctrl
> +      - rockchip,rk3576-pinctrl
>        - rockchip,rk3588-pinctrl
>        - rockchip,rv1108-pinctrl
>        - rockchip,rv1126-pinctrl
> @@ -62,6 +63,12 @@ properties:
>        Required for at least rk3188 and rk3288. On the rk3368 this should
>        point to the PMUGRF syscon.
> =20
> +  rockchip,sys-grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      The phandle of the syscon node for the SYS GRF registers.
> +      It is used on rk3576 for i3c software controlled weak pull-up.
> +
>    "#address-cells":
>      enum: [1, 2]
> =20
> @@ -72,6 +79,17 @@ properties:
> =20
>  allOf:
>    - $ref: pinctrl.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3576-pinctrl
> +    then:
> +      required:
> +        - rockchip,sys-grf
> +    else:
> +      properties:
> +        rockchip,sys-grf: false
> =20
>  required:
>    - compatible
> --=20
> 2.46.0
>=20

--Mv6KBtNoyPhwleR5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZr4ZOQAKCRB4tDGHoIJi
0hHcAQDcDJ7eazO1JD1SIrEmWbEm9+Cpz84MuOSCdvdLN4CGbQD9EHR30avD5+yC
/pRLZklFG9Gv+9PZLIPqsBZwms0DOg4=
=/Lx7
-----END PGP SIGNATURE-----

--Mv6KBtNoyPhwleR5--


--===============3122459676433434449==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3122459676433434449==--

