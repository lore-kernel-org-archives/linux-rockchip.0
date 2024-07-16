Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACE42C3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jul 2024 16:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iw+Ciu8w/VVmwHBLzofNtac2raJE+eIAhTx3e84qcpE=; b=r3UOomkqYWDo9geihRLCSEc3x7
	vNZDR2Tl3R468EsSeb3QJ8NSsT5aYSR18xKJChGfXMUVnOXv2XYzIjtQRB4iuryEzCE9UDT3nddk0
	LnvcZ606Qvpv9oatp3WR8ZLb7bva7uCxi5fE221fDUAYesmPBjuRFzM7fUMHyJarosAUe0f/py/GC
	PHjwB/MQnq1MBhXYn5qF5bSXm08AEGF2G36azdq5OBcZJ8PC5EokHqtlIZV6fxk9zfRD1F5EkyPMv
	97C07cNgQfl1PEuJaKNynmTfqv99V7Jn8iq5py9sOz0m45cbc029fI4rlUdtY+0ibGVXT901g0UWz
	8Qe5j9Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTkpz-0000000B1l8-04bE;
	Tue, 16 Jul 2024 16:15:35 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTkpd-0000000B1fn-1UHT;
	Tue, 16 Jul 2024 16:15:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B08B261301;
	Tue, 16 Jul 2024 16:15:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34458C4AF0B;
	Tue, 16 Jul 2024 16:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721146512;
	bh=xVoIA/hZZjTnIxgzUKxyW47Uq6kbP2T9RxSH+7zEYBE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ckFqTloYfGO1uNi6YwoI7DX5QDWICLBrJxwQvmADy57TS35mJLdghheKG9ePvkEUJ
	 d5x1TEykHudu9Y7zDowaJ8dWLcfVwbpnWwhv5PlKIYi6ySY83Pr53p1lnzV/xhi9Ip
	 ubnkrUFQ52M5P87HxS04vOXS6utjCV/QefOrL0YErsNP64PfT7QEkT+CkEp0Y8BpXQ
	 vNY+aVsSJTGktS0EFweKb4F2yU/ecQb2nsgjNcSEX++4ddLTdiNK4LFysvXj0oN/r3
	 Kh+CwiAdez88VcdmFNLib8xow+6z2bjVHwIVFf5YLdyFC7TGLVn4PW9LRV3fZP5Ubx
	 yxI5KLbAyje6g==
Date: Tue, 16 Jul 2024 17:15:08 +0100
From: Conor Dooley <conor@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: clocks: add binding for
 voltage-controlled-oscillators
Message-ID: <20240716-deceiving-saucy-851fb2303c1f@spud>
References: <20240715110251.261844-1-heiko@sntech.de>
 <20240715110251.261844-2-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20240715110251.261844-2-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_091513_523329_1A9CD285 
X-CRM114-Status: GOOD (  23.63  )
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
Content-Type: multipart/mixed; boundary="===============4018842188604060928=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4018842188604060928==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="G8ATB5gbIqKT+Pmv"
Content-Disposition: inline


--G8ATB5gbIqKT+Pmv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 15, 2024 at 01:02:49PM +0200, Heiko Stuebner wrote:
> In contrast to fixed clocks that are described as ungateable, boards
> sometimes use additional oscillators for things like PCIe reference
> clocks, that need actual supplies to get enabled and enable-gpios to be
> toggled for them to work.
>=20
> This adds a binding for such oscillators that are not configurable
> themself, but need to handle supplies for them to work.
>=20
> In schematics they often can be seen as
>=20
>          ----------------
> Enable - | 100MHz,3.3V, | - VDD
>          |    3225      |
>    GND - |              | - OUT
>          ----------------
>=20
> or similar. The enable pin might be separate but can also just be tied
> to the vdd supply, hence it is optional in the binding.
>=20
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  .../bindings/clock/voltage-oscillator.yaml    | 49 +++++++++++++++++++
>  1 file changed, 49 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/voltage-oscil=
lator.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/clock/voltage-oscillator.y=
aml b/Documentation/devicetree/bindings/clock/voltage-oscillator.yaml
> new file mode 100644
> index 0000000000000..8bff6b0fd582e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/voltage-oscillator.yaml
> @@ -0,0 +1,49 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/voltage-oscillator.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Voltage controlled oscillator

Voltage controlled oscillator? Really? That sounds far too similar to a
VCO to me, and the input voltage here (according to the description at
least) does not affect the frequency of oscillation.

Why the dedicated binding, rather than adding a supply and enable-gpio
to the existing "fixed-clock" binding? I suspect that a large portion of
"fixed-clock"s actually require a supply that is (effectively)
always-on.

Cheers,
Conor.

> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    const: voltage-oscillator
> +
> +  "#clock-cells":
> +    const: 0
> +
> +  clock-frequency: true
> +
> +  clock-output-names:
> +    maxItems: 1
> +
> +  enable-gpios:
> +    description:
> +      Contains a single GPIO specifier for the GPIO that enables and dis=
ables
> +      the oscillator.
> +    maxItems: 1
> +
> +  vdd-supply:
> +    description: handle of the regulator that provides the supply voltage
> +
> +required:
> +  - compatible
> +  - "#clock-cells"
> +  - clock-frequency
> +  - vdd-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    voltage-oscillator {
> +      compatible =3D "voltage-oscillator";
> +      #clock-cells =3D <0>;
> +      clock-frequency =3D <1000000000>;
> +      vdd-supply =3D <&reg_vdd>;
> +    };
> +...
> --=20
> 2.39.2
>=20

--G8ATB5gbIqKT+Pmv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZpacjAAKCRB4tDGHoIJi
0qETAQDGaH3SBfzHPXQYUAVTiBQ/XIU3y1OlFEVoD2vuaqVeKAD/e904hzaE9/Z3
xKoAg5ft4w3HfNOSbYMic53og10LmAI=
=h/cC
-----END PGP SIGNATURE-----

--G8ATB5gbIqKT+Pmv--


--===============4018842188604060928==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4018842188604060928==--

