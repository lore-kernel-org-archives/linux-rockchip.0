Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62224C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 13:36:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pyWvgkCgfGbsJo7Y4gYXXXUTTC6/0iPZhCgJCr2hHr0=; b=pVPGFIB7gdPhJjOOWFpoxm7jaE
	e0D5Esy7Zzh24K0weJzsQZB7n93xhFCQwF2Ea7038rA5JOF3Vtnli6x7h14PvqRkCO1GSiI6IHlTa
	lMhqsdt4H5+7bOJD6yopO5lcDO9gD7V7PVOjYZGgql9RgC4Que/oxYXGDqki8lOVq9lXeIi7Gdc11
	x4kw2xjkkRqqQ7ytcBdq4WVP79cSJNW6NxJrzSTYd8AlHWWj/h/49VSsut9oTx2nzBWgvYj6ACqOm
	x7NiBJ0n/3JjAu9Re4RHK7qNHmAaAZsQ/BiSkIiqhQn64AzlsSfzAAMM8w+NAjN6Oys1J0BpCLVA/
	uU3bB00A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvH4o-0000000HMaT-3Wks;
	Fri, 12 Apr 2024 13:36:22 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvH4i-0000000HMXQ-1sMz;
	Fri, 12 Apr 2024 13:36:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1712928972;
	bh=RfQjQI/hL6/lXEi0MxFEwSpVIbCy6WdsNoc/LzDQ8z0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vBfI4rJF1EfdfJkR3RVLha1K5eB3M0eDkmyC5f0qZ5utuVRR1NI/vce5IEWXBldVv
	 pRLvEOoKDeYRgN0ZBAqiF2Sr9iIpcGrrmx0UapSgdBqht2IKfCcdsdlrgZsyHgEDxq
	 jiNWH2IZSioISR0S2pZH2ox8WX7vRBe0Yr4CdLNQoC4AR5xhFtBpcG0banmrkjQCn3
	 hqYHNyF4/Y8v6eFo33pdy/xKto+nSJPsc/TpsJNXfBi327twl4KQa5NKkCOtq/WYvO
	 qjEg+Csh+HUV6rUHA6ndGIDOwNO+5XbHOMYOneMm8X7CkYVLG3A98XEWf4vnOuVb76
	 K0z2R7CdNXShg==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id CAB2D3781116;
	Fri, 12 Apr 2024 13:36:11 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 71E25106071F; Fri, 12 Apr 2024 15:36:11 +0200 (CEST)
Date: Fri, 12 Apr 2024 15:36:11 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Niklas Cassel <cassel@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, Michal Tomek <mtdev79b@gmail.com>, 
	Damien Le Moal <dlemoal@kernel.org>, Jon Lin <jon.lin@rock-chips.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: rockchip,pcie3-phy: add
 rockchip,rx-common-refclk-mode
Message-ID: <bwrnrbqgh3ch7kzy3iieybf34634goydiyk4z7aynizgqergx2@pq76ovyfvxsp>
References: <20240412125818.17052-1-cassel@kernel.org>
 <20240412125818.17052-2-cassel@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240412125818.17052-2-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_063617_142078_FFEAFB26 
X-CRM114-Status: GOOD (  23.67  )
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
Content-Type: multipart/mixed; boundary="===============3355432206201476806=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3355432206201476806==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aykfst6pwpjbzkd5"
Content-Disposition: inline


--aykfst6pwpjbzkd5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Apr 12, 2024 at 02:58:15PM +0200, Niklas Cassel wrote:
> From the RK3588 Technical Reference Manual, Part1,
> section 6.19 PCIe3PHY_GRF Register Description:
> "rxX_cmn_refclk_mode"
> RX common reference clock mode for lane X. This mode should be enabled
> only when the far-end and near-end devices are running with a common
> reference clock.
>=20
> The hardware reset value for this field is 0x1 (enabled).
> Note that this register field is only available on RK3588, not on RK3568.
>=20
> The link training either fails or is highly unstable (link state will jump
> continuously between L0 and recovery) when this mode is enabled while
> using an endpoint running in Separate Reference Clock with No SSC (SRNS)
> mode or Separate Reference Clock with SSC (SRIS) mode.
> (Which is usually the case when using a real SoC as endpoint, e.g. the
> RK3588 PCIe controller can run in both Root Complex and Endpoint mode.)
>=20
> Add a rockchip specific property to enable/disable the rxX_cmn_refclk_mode
> per lane. (Since this PHY supports bifurcation.)
>=20
> Signed-off-by: Niklas Cassel <cassel@kernel.org>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../devicetree/bindings/phy/rockchip,pcie3-phy.yaml    | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yam=
l b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
> index c4fbffcde6e4..ba67dca5a446 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
> @@ -54,6 +54,16 @@ properties:
>      $ref: /schemas/types.yaml#/definitions/phandle
>      description: phandle to the syscon managing the pipe "general regist=
er files"
> =20
> +  rockchip,rx-common-refclk-mode:
> +    description: which lanes (by position) should be configured to run in
> +      RX common reference clock mode. 0 means disabled, 1 means enabled.
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 1
> +    maxItems: 16
> +    items:
> +      minimum: 0
> +      maximum: 1

Why is this not simply using a single u32 with each bit standing for
one PCIe lane? I.e. like this:

rockchip,rx-common-refclk-mode:
  description: bitmap describing which lanes should be configured to run
    in RX common reference clock mode. Bit offset maps to PCIe lanes and
    a bit set means enabled, unset bit means disabled.
  $ref: /schemas/types.yaml#/definitions/uint32
  minimum: 0
  maximum: 0xffff
  default: 0xffff

Apart from that the PHY only supports up to 4 lanes on all existing hardwar=
e,
so 0xf should be enough?

Greetings,

-- Sebastian

--aykfst6pwpjbzkd5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmYZOMMACgkQ2O7X88g7
+pqmXA//cCBR6kC3WV/BEB3gr3uj5vLk8Um4jA/Jd2dCAaYaaEsD//SzyunPACdo
rgxgorVO6VkBWf6aL9d49MvR1dItKj7odF6nzcknO3o51OCRKJ2jDxpwPGlrQiwl
ewmBCvCuuXfwlyexRZBocfaPzj9g0Ugqfu7YA3dkj1ot5IB8yh5pxnsaLOI6SXzu
0BlcgGzvd8tm4DSkdmgdFIFK0kNaktYnk6prKxPbJ1HXb3IHSJBXW4lOXemFTK0E
D5Q0Wq7A+FB1TZ5EGoESQraVFBwF9I2CxGHygNwHnWy2sfLPSdSbm+W5sPoUNICc
In+mQusBKvLqBc8SklbA/fdD/94iPzWcMTY+QkxGrfqQDIx175l2I8n6HMDARD7W
5APzve5MEnXco8Ss8bDlrLYMcahPG2KVUzL5H/mUWftB1xvZHcUoYbrnAcXvvLu6
uh/VscO/Lm1oxNc14ycsZGsrayCds8mf0hgdPpNAJl7YJUlfCV/e3yrMltBM4P8G
5/BOc+K8w73cVygGaUEKztuaQOwf4Madng5auObUFvW4hW6OjprYj3x8VMmkkfHo
OnZ7f6mQMDnE1v3Vexl+sI2JkkApgDQsMSnupSGfo+7jLP1yR48Chelgs7P3jihw
TF7dxrrRDmVYm9sqiTXVNrxXH/oDpVsNVJisfq9f4gyZBmkxoUs=
=FJ5r
-----END PGP SIGNATURE-----

--aykfst6pwpjbzkd5--


--===============3355432206201476806==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3355432206201476806==--

