Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41B9BC47077
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jan 2024 17:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WbaHd1SDowE8ZXw5H21BsPUGdAJG16l7h7rf4Jnip70=; b=thRfq46PzHFfOdtEKFN2AYMulN
	Tc9rMFkN18dGqrvWY9wFqullHtqvFHPEIUmofOieQyFJ7ABbq3+CdYZ1aICbqaf7e2DbcOoNmkmJR
	bwO7OrUsADyT7CgWEuHMg8cHZYoBbjIyCOFXTSJJ6eXKO+xF69LmS1SBnOLsU0rzvMywymQMm2veh
	ifJkLDAPs06cx1lwdPbKZ1QilhOZDoHHrEDvFBBPSl9atCTVyoTnlujs6++x+NuIYIYxy+ap8F5QU
	gKFDFNgX2QNi/a167xqE8iraiAsPhuTaEHuRTBGIaOu/Mcx40HJbO2vmVzNd+D5XF9dL0dXYjS0m2
	Xwwx42Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmwX-00CjJr-0d;
	Tue, 16 Jan 2024 17:09:41 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmwM-00CjEb-2s;
	Tue, 16 Jan 2024 17:09:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 34AD0CE1A34;
	Tue, 16 Jan 2024 17:09:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03191C433F1;
	Tue, 16 Jan 2024 17:09:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705424968;
	bh=DmSwrk+5cORRbEk06f8bHofm6Do4a4AKu4LPO82gZXM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iyWNoQcDDdL4Oq6T2s1G71OpJajZruAErAF64TuqkCGXdIMhVMFUurgNnP4UbPoi7
	 vmw5Rw72t5aa3ld2qclsTFSCKUA5x7jfVdHMH2z1Fro0R3E2XfIfYFXUEydvDduI/e
	 WSJzBPE8gQvrJYpW2/EhCFaGf2H8nEM2glIcV6Ut/obvD0ZWdH4jrWP7KigY+QHU1i
	 ihX3arjWqLEuGnmzmTGF5nAQK5pGyTWHpzTunoZfdJPvoXEHUVvAA2KqVwIl/NE6LO
	 k0FqhmzqapzAFiYikpxjjCGhCP9FK7acGyY7yI8lCgfhbzxSDF/71h5FG/bChu+d9l
	 Im4dPg6lwR2NQ==
Date: Tue, 16 Jan 2024 17:09:23 +0000
From: Conor Dooley <conor@kernel.org>
To: Tim Lunn <tim@feathertop.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Chris Zhong <zyw@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Zhang Qing <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] dt-bindings: rockchip: Update rk809 example with
 audio codec properties
Message-ID: <20240116-muppet-buggy-4caf9620b660@spud>
References: <20240116132102.3272682-1-tim@feathertop.org>
 <20240116132102.3272682-4-tim@feathertop.org>
MIME-Version: 1.0
In-Reply-To: <20240116132102.3272682-4-tim@feathertop.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_090931_300592_10540E07 
X-CRM114-Status: GOOD (  17.66  )
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
Content-Type: multipart/mixed; boundary="===============4075943070961656419=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4075943070961656419==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ZK3izpEatKf2F2cp"
Content-Disposition: inline


--ZK3izpEatKf2F2cp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 17, 2024 at 12:21:02AM +1100, Tim Lunn wrote:
> Update the example provided to include the properties for using
> rk817 audio codec.
>=20
> Signed-off-by: Tim Lunn <tim@feathertop.org>
>=20
> ---
>=20
> Changes in v2:
> - Fix missing include and pinctrl for codec example
>=20
>  .../devicetree/bindings/mfd/rockchip,rk809.yaml          | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml b/=
Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> index 9b9d670708ce..fee8338b230b 100644
> --- a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> @@ -147,6 +147,7 @@ additionalProperties: false
> =20
>  examples:
>    - |
> +    #include <dt-bindings/clock/px30-cru.h>
>      #include <dt-bindings/pinctrl/rockchip.h>
>      #include <dt-bindings/interrupt-controller/irq.h>
>      #include <dt-bindings/gpio/gpio.h>
> @@ -161,10 +162,13 @@ examples:
>              clock-output-names =3D "xin32k", "rk808-clkout2";
>              interrupt-parent =3D <&gpio3>;
>              interrupts =3D <10 IRQ_TYPE_LEVEL_LOW>;
> +            clock-names =3D "mclk";
> +            clocks =3D <&cru SCLK_I2S1_OUT>;
>              pinctrl-names =3D "default";
> -            pinctrl-0 =3D <&pmic_int_l_pin>;
> +            pinctrl-0 =3D <&pmic_int_l_pin>, <&i2s1_2ch_mclk>;
>              rockchip,system-power-controller;
>              wakeup-source;
> +            #sound-dai-cells =3D <0>;
> =20
>              vcc1-supply =3D <&vcc_sysin>;
>              vcc2-supply =3D <&vcc_sysin>;
> @@ -309,5 +313,8 @@ examples:
>                      };
>                  };
>              };

Blank line here please.
I'd squash this with the patch adding the codec as an allowed property
though.

Thanks,
Conor.

> +            rk817_codec: codec {
> +                rockchip,mic-in-differential;
> +            };
>          };
>      };
> --=20
> 2.40.1
>=20

--ZK3izpEatKf2F2cp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZaa4QwAKCRB4tDGHoIJi
0jP3AQDI8jR4sG+u+6VZmJWVJya/eoRO5vJx5Hcoe2PPsDpwHgEAw9URuB4Gt7Mn
vxyyA5dzuCVrr+mT1oK+Rq7RbtxA7gQ=
=CDvt
-----END PGP SIGNATURE-----

--ZK3izpEatKf2F2cp--


--===============4075943070961656419==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4075943070961656419==--

