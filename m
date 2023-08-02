Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A345C04E69
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Aug 2023 15:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MUbm0oobJIqI9Oxn9xZN4qLSilaXmJR5E2MoxcPQtXg=; b=cpJz/MbAYz/ABk9twtoO3WxoWA
	ovfDB95FHpiS7+aQojNDr2nvItn1ZCdT5AqbHiDu+eEIfzjHiDMnTMNQnriSkARUCSu+6Eo+Nd7t8
	sqZvYpnNid+yVd9xy0/2ZyDJOEvKtSURowbrdbBbRhPw5RQh3nWGhQ6QgWujcaOSOT2sYbff+6gXR
	ubEDA1qse7hNIaIcPwn9619KrAzZLlnaub/v1IlW/gwkj1ebej7rowGxUmwbq40X7gOGyBLuwkaNX
	3H6kA7uLkueJg/1pz37iYo3aJ/87K1NJP5QKfgQD+aD5luxBL0POWZfQyuKaXL00b6fmeyC2cVtOY
	2GSQiyLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRDv8-005Fil-2M;
	Wed, 02 Aug 2023 15:37:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRDv6-005Fgk-0p;
	Wed, 02 Aug 2023 15:37:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 59A36617F0;
	Wed,  2 Aug 2023 15:37:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3DA8C433C7;
	Wed,  2 Aug 2023 15:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690990668;
	bh=QBVB0WlvCnUvm8x3azvoMYN/g12CYZtPOxFHIcPNmzM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WZAA0quE/5Vo5GoBs9ixSIkXWgyHfW54jg7QdbDsKCWoJjuNr44uSe8HVuSfo986w
	 WIt+HRNxWE7AQ81kt3HDHHE+0ZUZcCbcF/7dzCW8x155Pxdzhni+/4rhJTbR1M6yNk
	 TKkz84U8prtaKLix4qNYknMMnR/bbyDszkSNrep/ayHtWirvLkvE/plrmCLi84kSW0
	 ut/4FaJad5a6NiY1vhCkBkFulQPQ0ccXReivZeNaaTE4kkMtG800DnUMU+jaqgGGDl
	 wk4hBqLEn4skEOAx21j2m16+y7ZWUidhroHEc2DSV+M/rJtLXKLLXPQ0G6HI+iQ0Lx
	 Gb/4yVFiZyxTg==
Date: Wed, 2 Aug 2023 16:37:44 +0100
From: Conor Dooley <conor@kernel.org>
To: Thomas McKahan <tmckahan@singleboardsolutions.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add NanoPC T6
Message-ID: <20230802-daydream-rectangle-48b02d4ce245@spud>
References: <20230802051441.3106-1-tmckahan@singleboardsolutions.com>
 <20230802051441.3106-2-tmckahan@singleboardsolutions.com>
MIME-Version: 1.0
In-Reply-To: <20230802051441.3106-2-tmckahan@singleboardsolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230802_083752_361700_4567C80C 
X-CRM114-Status: GOOD (  16.83  )
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
Content-Type: multipart/mixed; boundary="===============1861358845917056859=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1861358845917056859==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="QneCUxURrTjnydP3"
Content-Disposition: inline


--QneCUxURrTjnydP3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 02, 2023 at 01:14:06AM -0400, Thomas McKahan wrote:
> Add the NanoPC T6, a single board computer from FriendlyElec
>=20
> Signed-off-by: Thomas McKahan <tmckahan@singleboardsolutions.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docume=
ntation/devicetree/bindings/arm/rockchip.yaml
> index 115ca986e20f..ca5389862887 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -227,6 +227,11 @@ properties:
>                - friendlyarm,nanopi-r5s
>            - const: rockchip,rk3568
> =20
> +      - description: FriendlyElec NanoPC T6
> +        items:
> +          - const: friendlyarm,nanopc-t6
> +          - const: rockchip,rk3588
> +
>        - description: GeekBuying GeekBox
>          items:
>            - const: geekbuying,geekbox
> --=20
> 2.34.1
>=20

--QneCUxURrTjnydP3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZMp4SAAKCRB4tDGHoIJi
0rJNAP4/xi+1tHGyTyTfZGH1OXkpTWCLEI0BTF8F8KOSY2fo0AEA7wGZ+Dwicclu
04Pz9i+2zrL4KzJUkH4ZQKK+7OhkigI=
=L/N6
-----END PGP SIGNATURE-----

--QneCUxURrTjnydP3--


--===============1861358845917056859==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1861358845917056859==--

