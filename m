Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E985C61D97
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Nov 2023 17:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bLFoXCyPMQda4g3vla03cPfW9z71YmI4YA4B3wPaRsQ=; b=iFZaCmmlk/AondNl/d0XSUtsLq
	Tk3paDt0r5OBj9sAWb7PrKa/U/q/GBOw90QEU8C+XH4A8eMrehfyqZBUtC5Yigh4Q2xuacFrdTmsB
	CA3yv3r2+Ivi1+LmYfPGbcpBRNBquJMiijfPCX7yqkcmyPNtXyJU7n+OB1lyRvBuKbIqcStNvVVZn
	rSegnmsFUgNULAUKCRhLhexGipiW0gQN9vpiN7dTln4F8isX4WvRB5cqGJQ86hG18ek7yzym8h+8i
	aoT94axtoKJMZLszNnKiJmc+3xYs60GQEzAEONOIR8sk0k3qO3nZcRpQgZlzvyhECd/08h5wLdmZB
	3qMcWY9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6DNr-005PAf-1v;
	Thu, 23 Nov 2023 17:20:59 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6DNo-005P9q-1l;
	Thu, 23 Nov 2023 17:20:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 38886B82EB1;
	Thu, 23 Nov 2023 17:20:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAC74C433C8;
	Thu, 23 Nov 2023 17:20:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700760054;
	bh=HZ2it2SDpc8JXOsPY263SXF+iKCLC0kpnH0sDhz3fiU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TauTI7yXz/EXK19sGpqXQIgeQSXWk/7tN1aZXr8i97YqI4fGEAFMoL4QD4jgJgLoO
	 BDUnxt6Ty380NwBjw6btK2JI8oU/fWfEX1mIDN9xTa1IPdYpmJ0BEVFJfSZEb+Szsz
	 sDhkyR8NQ+YMweQNFJrrr+0qSqt6YT5eU43vEWKLq/Dh10SFwUCLj4vuBn10U8gCAV
	 lWPwy2WeOTnTOTGnz+33/XXlDlx7vLbna1/0ygieyz62GwgVJWnST9zalRgrdKMkXR
	 RN0+I4MdzkOTOVf8sO+xANqjUk0MqpAGi98RRZrv5bWgbwRZwJh4dB2XXDjfaNOgIq
	 KWjPCPfKAm2jw==
Date: Thu, 23 Nov 2023 17:20:48 +0000
From: Conor Dooley <conor@kernel.org>
To: Javier Carrasco <javier.carrasco@wolfvision.net>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	David Wu <david.wu@rock-chips.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH RFC WIP 1/2] dt-bindings: net: rockchip-dwmac: add
 rockchip,phy-wol property
Message-ID: <20231123-operable-frustrate-6c71ab0dafbf@spud>
References: <20231123-dwmac-rk_phy_wol-v1-0-bf4e718081b9@wolfvision.net>
 <20231123-dwmac-rk_phy_wol-v1-1-bf4e718081b9@wolfvision.net>
MIME-Version: 1.0
In-Reply-To: <20231123-dwmac-rk_phy_wol-v1-1-bf4e718081b9@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231123_092056_720147_A720F237 
X-CRM114-Status: GOOD (  15.56  )
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
Content-Type: multipart/mixed; boundary="===============4698929911310984996=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4698929911310984996==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bTHzhB7hdNw7bvKU"
Content-Disposition: inline


--bTHzhB7hdNw7bvKU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 23, 2023 at 01:14:13PM +0100, Javier Carrasco wrote:
> This property defines if PHY WOL is preferred. If it is not defined, MAC
> WOL will be preferred instead.
>=20
> Signed-off-by: Javier Carrasco <javier.carrasco@wolfvision.net>
> ---
>  Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/=
Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> index 70bbc4220e2a..fc4b02a5a375 100644
> --- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> +++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> @@ -91,6 +91,12 @@ properties:
>        The phandle of the syscon node for the peripheral general register=
 file.
>      $ref: /schemas/types.yaml#/definitions/phandle
> =20
> +  rockchip,phy-wol:
> +    type: boolean
> +    description:
> +      If present, indicates that PHY WOL is preferred. MAC WOL is prefer=
red
> +      otherwise.

Although I suspect this isn't, it sounds like software policy. What
attribute of the hardware determines which is preferred?

--bTHzhB7hdNw7bvKU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZV+J8AAKCRB4tDGHoIJi
0myVAQCJk+QzYHl+/O3ThabjS9+O5WSkS3WxXLaSPMYQlO5sSAEA4U1Db0x5jGIy
glMeVXSf9fk0MYLSsWmvHvpZkUexmwI=
=CSe+
-----END PGP SIGNATURE-----

--bTHzhB7hdNw7bvKU--


--===============4698929911310984996==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4698929911310984996==--

