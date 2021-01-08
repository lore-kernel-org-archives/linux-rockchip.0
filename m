Return-Path: <SRS0=mPU+=GL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2807CC433E0
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 15:44:13 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A5FDF2368A
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 15:44:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A5FDF2368A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AhjKskRGvzuCgQSTU3o8CPW24hRxPNv6FEV50P1WMj8=; b=dJEfyA+1dMBtCreJT+cqRMwSF
	f3wJE0axJbCYIh5DSf3vc2v0wwr6N3gz98Ml17JoxQWYJuaWteplpDq2+r+OkLxVc1qgBsW/5NGgf
	cBfwNC6CBW8YzEF8YJyS9wetBQa9Y3oLEb5e4iRCOKwoc3or8Yq9oL9CNlnHGJwdSYse90jEGUuRA
	Rtiu9U//RacJADWPYwNb5CN6nKtMZw0+4VxFvfKU/H+w+rknF99l3UAtejIwiLEUw+UO56zRTSADI
	rFhbQfMpv2xiTFIlVMK8+VajgIDvMXHuQ+ACNjFvd/poExd0HNJ8jgxiHcOtRC2giTXcKjqWWkavp
	m9bvcjvMg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxtvm-0006GV-TD; Fri, 08 Jan 2021 15:44:02 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxtvL-00066q-JX; Fri, 08 Jan 2021 15:43:38 +0000
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id DCB7020011;
 Fri,  8 Jan 2021 15:43:27 +0000 (UTC)
Date: Fri, 8 Jan 2021 16:43:27 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: fix vopl iommu irq on px30
Message-ID: <X/h9n7EN5Z5KLYC0@aptenodytes>
References: <20210108110627.3231226-1-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20210108110627.3231226-1-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210108_104336_283219_33365149 
X-CRM114-Status: GOOD (  16.64  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: linux-rockchip@lists.infradead.org, ezequiel@collabora.com,
 Sandy Huang <hjc@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: multipart/mixed; boundary="===============2027071050389362749=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2027071050389362749==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ql8SW4jc0JfQHirY"
Content-Disposition: inline


--ql8SW4jc0JfQHirY
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri 08 Jan 21, 12:06, Heiko Stuebner wrote:
> From: Sandy Huang <hjc@rock-chips.com>
>=20
> The vop-mmu shares the irq with its matched vop but not the vpu.

This is:
Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

and:
Tested-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Thanks!

Paul

> Fixes: 7053e06b1422 ("arm64: dts: rockchip: add core dtsi file for PX30 S=
oCs")
> Signed-off-by: Sandy Huang <hjc@rock-chips.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  arch/arm64/boot/dts/rockchip/px30.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts=
/rockchip/px30.dtsi
> index 39b54093d858..4f762968f75f 100644
> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> @@ -1110,7 +1110,7 @@ vopl_out_lvds: endpoint@1 {
>  	vopl_mmu: iommu@ff470f00 {
>  		compatible =3D "rockchip,iommu";
>  		reg =3D <0x0 0xff470f00 0x0 0x100>;
> -		interrupts =3D <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupts =3D <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
>  		interrupt-names =3D "vopl_mmu";
>  		clocks =3D <&cru ACLK_VOPL>, <&cru HCLK_VOPL>;
>  		clock-names =3D "aclk", "iface";
> --=20
> 2.29.2
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--ql8SW4jc0JfQHirY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl/4fZ8ACgkQ3cLmz3+f
v9GEbwf8DsL2K2T3woVWMd6TiTVAU3jXBJXWCfhfQht+yphAkazKeyB1/PGqTHtv
Uti6eUMpuxW7WE23iBKHyruE2TtQ6XDk9Se8nNo++MuftQZyC6IlZX93mHhugBBZ
UCbxLi3GfivZpgOsfpfkoJMov5d7AcsrtV/phiBdfcTOMOh4KzLNS8qFfHEuzaOM
NUs3/BKwpYPfR22TlaTGXq/4ZqBWeoiP0gEl6xobIf+4DK+YJCxDB5XdBqzeVGFC
OpMBxlj32i34bztmlJLac9mHPGY38c++Ac+wVBn9XaIWj0ShVskErdZzx2Jc/jqs
hYkswvOpPw2gz89x8xTlNMsZivmz7w==
=ryxf
-----END PGP SIGNATURE-----

--ql8SW4jc0JfQHirY--


--===============2027071050389362749==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2027071050389362749==--

