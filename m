Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2C97C761A6
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Mar 2023 22:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FLvvxKevHn3oi6KahG/0Ic20NhLjMOI8W9L3CjZsdgs=; b=qTzzb9047TQd01e1R7+uWAyhp9
	8LGvQb+0Pe0PkERpuW1u9iKEu9bUoj67cQEcMy9o/8S8fyaxaH5da2QaAU0lTMKBkbbrgkvRXTgSP
	g8FSqIixDwWTRFoPaCO7zs52qdCR81gukwQSA76J79+pg632JYu5xTcVs8ssQmK5Npv9IhCsh6ao/
	smRAbqhTHiNRyezfPwE4tlARqDJ42wrTG/c1yAYQ7hd6enDD+eCnxvW8vPR5S9/wTRvLzRQ44jBLU
	05Q30ED/Y8XNAqjSMoiFuux2ojpM+F5XLG34Y3ANQi89VQFgCQUiUMvJX3YXeah4Mdtou0W+pHhaK
	WkN1uSYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pekAa-00DvvZ-24;
	Tue, 21 Mar 2023 22:09:28 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pekAR-00DvtS-0c;
	Tue, 21 Mar 2023 22:09:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 9E73AB81A46;
	Tue, 21 Mar 2023 22:09:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71E3FC433D2;
	Tue, 21 Mar 2023 22:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679436556;
	bh=jywNbEZP25XOTZg0s8YbV2eIX3RE5vkLLBPIK+u/ySE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MrkUUZGKD1eXCrJftt1lQn8XiF7fLosApLIr0bnxzYnVCQzSaA5xwod/LCwwbW8Z/
	 HfOnGOfFvlQ4hAIQQGLiXy0kdtfEoHQVz8qMn0AnvhH9YNTdwNe9m58oVCxpJuvoQM
	 hUVoCDNzo6aPaf8cYlH7QN8rKKxmVO6EYOUW71f9imbQ3RfChI790fIW5r+LzB8g47
	 59uW5gGnYIAJQ4csIoP1a4dF9qKKf036CjK6UU5TQG7RRpVsQ7Q+Id0lxJ3RPxQdc3
	 8RiLwzTmqfRvDCbgPKUD1xxBh0KIkKoCvq4RAAbhPM2QgMvWu5rZx+fmQo6i+g5Xrf
	 lp5RpbvNlPGwg==
Date: Tue, 21 Mar 2023 22:09:09 +0000
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
Subject: Re: [PATCH v2 01/10] dt-bindings: serial: snps-dw-apb-uart: Switch
 dma-names order
Message-ID: <5287504e-c0f7-4964-8a61-fd49b7ee9547@spud>
References: <20230321215624.78383-1-cristian.ciocaltea@collabora.com>
 <20230321215624.78383-2-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20230321215624.78383-2-cristian.ciocaltea@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_150919_781520_AADF1113 
X-CRM114-Status: GOOD (  23.36  )
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
Content-Type: multipart/mixed; boundary="===============6557123764905940729=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6557123764905940729==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yyWiahmxEjVuYmMu"
Content-Disposition: inline


--yyWiahmxEjVuYmMu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 21, 2023 at 11:56:15PM +0200, Cristian Ciocaltea wrote:
> Commit 370f696e4474 ("dt-bindings: serial: snps-dw-apb-uart: add dma &
> dma-names properties") documented dma-names property to handle Allwinner
> D1 dtbs_check warnings, but relies on the rx->tx ordering, which is the
> reverse of what a different board expects:
>=20
>   rk3326-odroid-go2.dtb: serial@ff030000: dma-names:0: 'rx' was expected
>=20
> A quick and incomplete check shows the inconsistency is present in many
> other DTS files:

> The initial proposed solution was to allow a flexible dma-names order in
> the binding, due to potential ABI breakage concerns after fixing the DTS
> files. But luckily the Allwinner boards are not really affected, since
> all of them are using a shared DMA channel for rx and tx:

> Switch dma-names order to tx->rx as the first step in fixing the
> inconsistency. The remaining DTS fixes will be handled by separate
> patches.
>=20
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks for doing all of the switch overs too. I should've probably
broadened my searching beyond the allwinner platforms when I initially
added this, so yeah, thanks.

> ---
>  Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.ya=
ml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
> index 2becdfab4f15..d28cc96fa8e9 100644
> --- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
> +++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
> @@ -72,8 +72,8 @@ properties:
> =20
>    dma-names:
>      items:
> -      - const: rx
>        - const: tx
> +      - const: rx
> =20
>    snps,uart-16550-compatible:
>      description: reflects the value of UART_16550_COMPATIBLE configurati=
on
> --=20
> 2.40.0
>=20

--yyWiahmxEjVuYmMu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZBorBQAKCRB4tDGHoIJi
0vyGAQDrKXra/8V/UIFrQD3UAgVFLRIkAIlnoCWPSGwe9HVDMAEAwe3VgGkUrGcQ
QDMvCe69akSjd+Fl/v/4b8852K/B+AI=
=VkVV
-----END PGP SIGNATURE-----

--yyWiahmxEjVuYmMu--


--===============6557123764905940729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6557123764905940729==--

