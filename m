Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC650C5AD49
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 May 2025 15:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FX7N9Zavvs8qXQZQgsgz63oBYdDGdWC6xS/GdYMY0gQ=; b=iRmoIqBVjvXtRNx0IckIgt79bH
	FInN5lru37szPYRmJUo+lOCyVD4HkxA1wCa2xGgcVgfPnZzdLSJHlK0WGOMOI+C7GgAPvHRGgxJZX
	7dAbvdijB+vzzb4QgAqcj9PIasJwwasPIs1TrGKykInTRhRrOixlxHfNS/lt7Kz4YbB+HwmqxbdJR
	QT5fTFO4OjF+VVC80M6pP+QXtDhUo8XXKb48ENrWJI+HJcPYaO9d9w0GxcaaqZA5ZK5w/SSv2AKBv
	2LVm7f9o7aJwKtpUYEQVb20toCYvGn89sbNnGEnpLa+vaL9n3LWsnQn9qVmLgb+Ql4MVzqg0kFKvj
	1Y/qxibA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJZXN-000000097CQ-06zE;
	Mon, 26 May 2025 15:14:49 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJZVE-00000009759-1EOd;
	Mon, 26 May 2025 15:12:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A1BF1A4F2D8;
	Mon, 26 May 2025 15:12:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B704C4CEE7;
	Mon, 26 May 2025 15:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748272355;
	bh=kWo5T5lnE4BmAH5IoBFw87ICQLy1irQV74u/xe9P580=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SYycV5m4ePwBLCKUSKF5SD+WvmqIUWGw6kHzt5LTW9+7ujoYmoEZvYk6Oiqg0TUHV
	 Pqo2LXmqjm8/+6Wy8SkGxDdZAHb5Qhv5XZtNf8pg+oM5MvIr465jZvoP8S+IgyhP01
	 AnPmwriQ9hMaEkyhB2fsqy/ii2iZT+L+LPfwBK83RK4wgiOfcgGT8tDPFP5VUlbiey
	 VVjDj6IWZl26N+jWuSIJkgCHfM9ClFN8PgeNWbUu2shbi95qqKHcVpPvy+Nmx+DtuR
	 9QhJITqRCZ54oc16/CtnlF/G2Wow6hZc2cn0nPQplEs8pKhN1HEJDZMmthokYiECGU
	 wuWb+724LiNRg==
Date: Mon, 26 May 2025 16:12:30 +0100
From: Conor Dooley <conor@kernel.org>
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: mkl@pengutronix.de, kernel@pengutronix.de, mailhol.vincent@wanadoo.fr,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	heiko@sntech.de, cl@rock-chips.com, kever.yang@rock-chips.com,
	linux-can@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v6 1/4] dt-bindings: can: rockchip_canfd: add rk3576
 CAN-FD controller
Message-ID: <20250526-prelude-twiddle-790ebead48b3@spud>
References: <20250526062559.2061311-1-zhangqing@rock-chips.com>
 <20250526062559.2061311-2-zhangqing@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20250526062559.2061311-2-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_081236_458910_B80CE15A 
X-CRM114-Status: GOOD (  15.71  )
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
Content-Type: multipart/mixed; boundary="===============7350222647883227513=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7350222647883227513==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="n/oHaDOCTLOQXhJc"
Content-Disposition: inline


--n/oHaDOCTLOQXhJc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 26, 2025 at 02:25:56PM +0800, Elaine Zhang wrote:
> Add documentation for the rockchip rk3576 CAN-FD controller.
>=20
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---
>  .../net/can/rockchip,rk3568v2-canfd.yaml      | 41 +++++++++++++++++++
>  1 file changed, 41 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/net/can/rockchip,rk3568v2-=
canfd.yaml b/Documentation/devicetree/bindings/net/can/rockchip,rk3568v2-ca=
nfd.yaml
> index a077c0330013..c6595fef6cb5 100644
> --- a/Documentation/devicetree/bindings/net/can/rockchip,rk3568v2-canfd.y=
aml
> +++ b/Documentation/devicetree/bindings/net/can/rockchip,rk3568v2-canfd.y=
aml
> @@ -12,11 +12,27 @@ maintainers:
> =20
>  allOf:
>    - $ref: can-controller.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3576-canfd
> +      required:
> +        - compatible
> +    then:
> +      required:
> +        - dmas
> +        - dma-names
> +    else:
> +      properties:
> +        dmas: false
> +        dma-names: false

Once the allOf contains more than just an include it should be moved
down below the properties that it is constraining. Otherwise, I think
this looks fine.

> =20
>  properties:
>    compatible:
>      oneOf:
>        - const: rockchip,rk3568v2-canfd
> +      - const: rockchip,rk3576-canfd
>        - items:
>            - const: rockchip,rk3568v3-canfd
>            - const: rockchip,rk3568v2-canfd
> @@ -43,6 +59,13 @@ properties:
>        - const: core
>        - const: apb
> =20
> +  dmas:
> +    maxItems: 1
> +
> +  dma-names:
> +    items:
> +      - const: rx
> +
>  required:
>    - compatible
>    - reg
> @@ -72,3 +95,21 @@ examples:
>              reset-names =3D "core", "apb";
>          };
>      };
> +
> +  - |
> +    soc {
> +        #address-cells =3D <2>;
> +        #size-cells =3D <2>;
> +
> +        can@2ac00000 {
> +            compatible =3D "rockchip,rk3576-canfd";
> +            reg =3D <0x0 0x2ac00000 0x0 0x1000>;
> +            interrupts =3D <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>;
> +            clocks =3D <&cru CLK_CAN0>, <&cru PCLK_CAN0>;
> +            clock-names =3D "baud", "pclk";
> +            resets =3D <&cru SRST_CAN0>, <&cru SRST_P_CAN0>;
> +            reset-names =3D "core", "apb";
> +            dmas =3D <&dmac0 20>;
> +            dma-names =3D "rx";
> +        };
> +    };
> --=20
> 2.34.1
>=20

--n/oHaDOCTLOQXhJc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaDSE3gAKCRB4tDGHoIJi
0joiAP99gMdxwhanZ7bbRzJWitqBe47RArKHWPRN6EcplWt4EwD/fPxHOjIXLxSo
INHR8oDcF4Rov+HADRHyTXPkbs6K8AQ=
=QjRT
-----END PGP SIGNATURE-----

--n/oHaDOCTLOQXhJc--


--===============7350222647883227513==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7350222647883227513==--

