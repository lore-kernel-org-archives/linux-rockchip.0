Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E635BC6FD20
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Mar 2023 22:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j0VX8oX1yIJOB6xCGxXJ5OJ6AxExcUdtb5eEAM7jfak=; b=etfMtMaqO3HE06IYSm1d0GgCvQ
	l2SJu6VKEhh4tUMxqyaHFpu1bosdjI9VazRvI1drvG3vLS9lpy7fU46IXJ34ngUuab0gqkCDkVz6s
	w7eyrgmYKTAICCetaEKhdeezGXNGOZgyXAFvHcXoLnfExeGoE58TwI1sutH7hyIPHvUgAIrYkvdSx
	jV2oXKqlEOIyxMCJDqWdX2AC5QwZ0IPTrPouoeNq1+w3haJXvvjJPxeUudGabH9HB4DnqySaK3pAH
	v/DKnTSp+y226s0SNO0U4oCiVqLSt8QJlFVlEtiXBoalW2yjl6+1tZLHhVxqsafE3ezP17eB+1tz2
	AKtfC+8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pekBt-00Dw6F-2h;
	Tue, 21 Mar 2023 22:10:49 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pekBp-00Dw4s-00;
	Tue, 21 Mar 2023 22:10:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8A13061E75;
	Tue, 21 Mar 2023 22:10:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3110FC4339C;
	Tue, 21 Mar 2023 22:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679436644;
	bh=mfr9fG06tR438k4STzbE8QTvsfW2C1ylBqMRXPVQzNI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ckVoLi4r7wAJZqyh6+001a2rlhgVmtYyuKMX1L1Zw/rsSRwF9WyUZ+hOYHFc4TiyM
	 Gl8zXAfAl8J9fCaDilvo5NaQ3KQUGIX9fMLRaP5CArQ7DoJzZn6Q07nNLLHeQTEGev
	 2Ii+nyioMjsu+EYmfCnHTog7S2gsNOjwNfA723KcR/LyDb/RQODoSZr16XihsciINx
	 V27lR/XlZjSzxPvFI7wCMd83S4TAwAEjKxw86HALJbAGa3mYOAjQhDgzehIPdCMxAG
	 H/cKxaJ/9GeI5nVQ1YW+3tHU56X+yM/6I9r53Zp4v1St/fv7Rw2/cBoeYikge8/IXc
	 //RnfHLeJzaZg==
Date: Tue, 21 Mar 2023 22:10:37 +0000
From: Conor Dooley <conor@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org,
	linux-riscv@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v2 06/10] riscv: dts: allwinner: d1: Switch dma-names
 order for snps,dw-apb-uart nodes
Message-ID: <f8a9f9e8-d0b0-4336-8d99-8dbe4792b0ff@spud>
References: <20230321215624.78383-1-cristian.ciocaltea@collabora.com>
 <20230321215624.78383-7-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20230321215624.78383-7-cristian.ciocaltea@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_151045_117280_BBA4EC95 
X-CRM114-Status: GOOD (  21.81  )
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
Content-Type: multipart/mixed; boundary="===============0694190274361555682=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0694190274361555682==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="KzlbqE6ZgU3zkHvJ"
Content-Disposition: inline


--KzlbqE6ZgU3zkHvJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 21, 2023 at 11:56:20PM +0200, Cristian Ciocaltea wrote:
> Commit 370f696e4474 ("dt-bindings: serial: snps-dw-apb-uart: add dma &
> dma-names properties") documented dma-names property to handle Allwinner
> D1 dtbs_check warnings, but relies on the rx->tx ordering, which is the
> reverse of what a bunch of different boards expect.
>=20
> The initial proposed solution was to allow a flexible dma-names order in
> the binding, due to potential ABI breakage concerns after fixing the DTS
> files. But luckily the Allwinner boards are not affected, since they are
> using a shared DMA channel for rx and tx.
>=20
> Hence, the first step in fixing the inconsistency was to change
> dma-names order in the binding to tx->rx.
>=20
> Do the same for the snps,dw-apb-uart nodes in the DTS file.
>=20
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi b/arch/ris=
cv/boot/dts/allwinner/sunxi-d1s-t113.dtsi
> index 951810d46307..922e8e0e2c09 100644
> --- a/arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi
> +++ b/arch/riscv/boot/dts/allwinner/sunxi-d1s-t113.dtsi
> @@ -211,7 +211,7 @@ uart0: serial@2500000 {
>  			clocks =3D <&ccu CLK_BUS_UART0>;
>  			resets =3D <&ccu RST_BUS_UART0>;
>  			dmas =3D <&dma 14>, <&dma 14>;
> -			dma-names =3D "rx", "tx";
> +			dma-names =3D "tx", "rx";
>  			status =3D "disabled";
>  		};
> =20
> @@ -224,7 +224,7 @@ uart1: serial@2500400 {
>  			clocks =3D <&ccu CLK_BUS_UART1>;
>  			resets =3D <&ccu RST_BUS_UART1>;
>  			dmas =3D <&dma 15>, <&dma 15>;
> -			dma-names =3D "rx", "tx";
> +			dma-names =3D "tx", "rx";
>  			status =3D "disabled";
>  		};
> =20
> @@ -237,7 +237,7 @@ uart2: serial@2500800 {
>  			clocks =3D <&ccu CLK_BUS_UART2>;
>  			resets =3D <&ccu RST_BUS_UART2>;
>  			dmas =3D <&dma 16>, <&dma 16>;
> -			dma-names =3D "rx", "tx";
> +			dma-names =3D "tx", "rx";
>  			status =3D "disabled";
>  		};
> =20
> @@ -250,7 +250,7 @@ uart3: serial@2500c00 {
>  			clocks =3D <&ccu CLK_BUS_UART3>;
>  			resets =3D <&ccu RST_BUS_UART3>;
>  			dmas =3D <&dma 17>, <&dma 17>;
> -			dma-names =3D "rx", "tx";
> +			dma-names =3D "tx", "rx";
>  			status =3D "disabled";
>  		};
> =20
> @@ -263,7 +263,7 @@ uart4: serial@2501000 {
>  			clocks =3D <&ccu CLK_BUS_UART4>;
>  			resets =3D <&ccu RST_BUS_UART4>;
>  			dmas =3D <&dma 18>, <&dma 18>;
> -			dma-names =3D "rx", "tx";
> +			dma-names =3D "tx", "rx";
>  			status =3D "disabled";
>  		};
> =20
> @@ -276,7 +276,7 @@ uart5: serial@2501400 {
>  			clocks =3D <&ccu CLK_BUS_UART5>;
>  			resets =3D <&ccu RST_BUS_UART5>;
>  			dmas =3D <&dma 19>, <&dma 19>;
> -			dma-names =3D "rx", "tx";
> +			dma-names =3D "tx", "rx";
>  			status =3D "disabled";
>  		};
> =20
> --=20
> 2.40.0
>=20

--KzlbqE6ZgU3zkHvJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZBorXQAKCRB4tDGHoIJi
0p8hAPwNZN4px8bHQL5f0TgePXjswSwIfbsgjkqeQp9hZoyhkAEArAl9T2v+Z7D2
rsSBPirCRfx6Kq67c+Sbdcvr38dz4wc=
=mraI
-----END PGP SIGNATURE-----

--KzlbqE6ZgU3zkHvJ--


--===============0694190274361555682==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0694190274361555682==--

