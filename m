Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2326C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 15:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N180XYS2vqdgcY+UUDlG2hOLKelSJJ3wFGzG2h0aoQU=; b=sl/VAGbXrOoNhlsP9E1QTxw0im
	X/R0GDX0ohR35wD6OiBVYlcRk5C8gIq3SIegMJNchH0SzMDARDzMijPOwZbu2zIZ6yl5iv7Cysg/P
	/HUV4DRtGqlPsJw4ALS/K8xoK31QIZSSfSLqy8tx8jRXtnTnk3rMIXeHa15Uqk5l3eeVh9nk9jwhE
	do6+fc3J24Chn7o98XEMth/ASmhDu4Vuqmm2ceHNOazGoQSbjGkGF81sVWM1N5nSiLBsD4DOERFTc
	GCvoA7TR5AvZtATln6uYNUOd4heOPjnosFhHjDkhYNY17cZBoUsCiW53zNjE6y8jGx0JRQ5qEl5aZ
	7X6TycOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxToG-00000002pE9-1Ouk;
	Thu, 18 Apr 2024 15:36:24 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxToC-00000002pDO-2GWa;
	Thu, 18 Apr 2024 15:36:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 8DD05CE188F;
	Thu, 18 Apr 2024 15:36:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F655C113CC;
	Thu, 18 Apr 2024 15:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713454577;
	bh=iX5QaTNtU1cJXLRSsSLOTU8Vc2xkKeqLNQsQzn49fRM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o8oGWQZcyO1SbI+PQ38bMnv1TS2PY9pUBmGOVXp3ZmdlHuJFxggE0LI9RaTsizwLT
	 UmaVtbq5HS5UFlQFPzXQzEq8Cnft33ONJiWsKLPBsdv5gtK1s7vAFATFr/Tm7J0Of8
	 qgU/aVm+OjZjEDEDnbqnMyqOUtKoQ+9xOzZpaCQRSMbf9Y45kQKosWpmtZWwt1m/Fg
	 aL6KSOvMn+McZYcfhAqpfUbQTinAXQbDE5c731YyEKo7707lCulnb9PdVDT7TjEqlP
	 qVmU6L/WMDoPvLTB8bfuepac7rGw/ecmY4WNBIuXUy9dLy70iu7rGb/NHKxupxPk1a
	 bstzE4Fe4p0kw==
Date: Thu, 18 Apr 2024 16:36:13 +0100
From: Conor Dooley <conor@kernel.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: correct the model name
 for Radxa ROCK 3A
Message-ID: <20240418-liberty-pry-d270065a544f@spud>
References: <20240418130120.67663-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
In-Reply-To: <20240418130120.67663-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_083620_785990_FC7E924E 
X-CRM114-Status: GOOD (  17.17  )
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
Content-Type: multipart/mixed; boundary="===============0315525503865976590=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0315525503865976590==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vgqi5H0ybv66eynq"
Content-Disposition: inline


--vgqi5H0ybv66eynq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 18, 2024 at 09:01:19PM +0800, Chukun Pan wrote:
> According to https://radxa.com/products/rock3/3a,
> the name of this board should be "Radxa ROCK 3A".
> Also update compatible to match the model name.
>=20
> Suggested-by: FUKAUMI Naoki <naoki@radxa.com>
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docume=
ntation/devicetree/bindings/arm/rockchip.yaml
> index 99bd5e2c76a0..88e9e0011953 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -772,9 +772,9 @@ properties:
>            - const: radxa,rock2-square
>            - const: rockchip,rk3288
> =20
> -      - description: Radxa ROCK3 Model A
> +      - description: Radxa ROCK 3A

This is fine, but...

>          items:
> -          - const: radxa,rock3a
> +          - const: radxa,rock-3a

=2E..this was added 2 years ago, I think it's too late to change it, NAK.

Cheers,
Conor.

>            - const: rockchip,rk3568
> =20
>        - description: Radxa ROCK 5 Model A
> --=20
> 2.25.1
>=20

--vgqi5H0ybv66eynq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZiE97QAKCRB4tDGHoIJi
0nPHAP42ecBP8384x+tVEb65jCrg5kE5XHUGHae4JCUIFDeTQwEAu/8S4FsNJBlg
gTDgwIn/8IrTGdDnnLwIAomhvsjcXwk=
=OSj/
-----END PGP SIGNATURE-----

--vgqi5H0ybv66eynq--


--===============0315525503865976590==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0315525503865976590==--

