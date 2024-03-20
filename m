Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61743C54E58
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Mar 2024 19:15:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JSg8B+zRaqT8AFRXb3rU33iJfa8WVHTWjfFtK79tuuk=; b=OMiuD0+BgozDTrGvCony0tA/Pl
	mJOeWDimgQTOpkwzf8A9uKReFSkrqEgXocv+X9n3YFm3s4A2k+zCqgEq5241XIPob9uvpvqoQMyXV
	i7Y/HWr0z2wEIPUc27fOhTAqfT6QIalitGprwUfuOSd0aobcP5sjcIC/emNguXdoSBxfkrM0KiXC8
	JC/fCiRz5PRAEaoxoeUrlU/Tr4QHapOR1eImWYr8CUNOh3gdiy97W1xTFSw/r4a2j2Y1Wv8ETeIT+
	Or9GgF9zRoYIYam2ML/5e3p245Tk8cD+ig6EDv5KlKAuIbtsTZLGIc0oQpsShHRpVqJU2PqHce0Fb
	xsJ0tG6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rn1PH-00000000kHv-2ihN;
	Wed, 20 Mar 2024 19:15:23 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rn1PD-00000000kGS-1OM8;
	Wed, 20 Mar 2024 19:15:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1710962115;
	bh=z+JJu0xQoW3dM54mrpxZ3kL3VRvxY9C0AzdnCinEaxc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B1VWiDKI1tUhF4pRktoC0eVPZNgiRldDLP2xGOb75MPTlScONOBZX0rX4t3ATjZVG
	 oGRD9jWNegiZ6o80vmfWoCL7PCBh7MmHCrGLPGKT/aTG5+qcEKrRUuk2VvR5nkegrv
	 UCa5mSiGxrbyTF+FvV0iWAftyrJmb6mhk9A92+N9Ih+LgUP2gRWKLZSIuMngwTu9U8
	 Krpx6FxqZCTBuiKaPTl01PEWE0UI26CNo7wd0SsWBMkKcwvzcoQiaiW6UjmIm49p7s
	 XeAn6D7Zm8HIEu17xszWTg4ck4Vgqneq6usFWY33lTKV2CAC4Tm/KPWbR/eAjOheuj
	 mZjW/02iYvGQA==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 99D173780BFE;
	Wed, 20 Mar 2024 19:15:15 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 3C9B21060704; Wed, 20 Mar 2024 20:15:15 +0100 (CET)
Date: Wed, 20 Mar 2024 20:15:15 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
Cc: linux-kernel@vger.kernel.org, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
	Dragan Simic <dsimic@manjaro.org>, Shreeya Patel <shreeya.patel@collabora.com>, 
	Chris Morgan <macromorgan@hotmail.com>, Andy Yan <andy.yan@rock-chips.com>, 
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev
Subject: Re: [PATCH 1/4] dt-bindings: iommu: rockchip: Fix rk3588 variant
Message-ID: <uund5em6hnexqpzxj3iazpu5gjbfwtdcolhkit4cljgfldiqyf@4jmgeh6aaw7v>
References: <20240320173736.2720778-1-linkmauve@linkmauve.fr>
 <20240320173736.2720778-2-linkmauve@linkmauve.fr>
MIME-Version: 1.0
In-Reply-To: <20240320173736.2720778-2-linkmauve@linkmauve.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240320_121519_918982_CAD41B0E 
X-CRM114-Status: GOOD (  23.39  )
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
Content-Type: multipart/mixed; boundary="===============1582165820790760976=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1582165820790760976==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hcmholarfddiyvvu"
Content-Disposition: inline


--hcmholarfddiyvvu
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Emmanuel,

On Wed, Mar 20, 2024 at 06:37:30PM +0100, Emmanuel Gil Peyrot wrote:
> The documentation got added in f8aa519976b38e67aae02d2db3e2998513305e80,
> but it hasn=E2=80=99t been added to the driver so it was unused.
>=20
> Signed-off-by: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
> ---

Everything is fine with f8aa519976b38e67aae02d2db3e2998513305e80
(well the patch description could be better :)) and this patch is
just wrong. The documentation explicitly adds the combination of
rk3588-iommu with rk3568-iommu as fallback. The idea is, that the
driver handles it just like an rk3568 iommu. If some differences
are found in the future, the driver can switch to handle the more
specific compatible without any DT changes (which is ABI).

I suggest watching this presentation:

https://www.youtube.com/watch?v=3D6iguKSJJfxo

Greetings,

-- Sebastian

>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 2 +-
>  drivers/iommu/rockchip-iommu.c            | 3 +++
>  2 files changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/=
dts/rockchip/rk3588s.dtsi
> index 87b83c87bd55..2a23b4dc36e4 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -704,7 +704,7 @@ vp3: port@3 {
>  	};
> =20
>  	vop_mmu: iommu@fdd97e00 {
> -		compatible =3D "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
> +		compatible =3D "rockchip,rk3588-iommu";
>  		reg =3D <0x0 0xfdd97e00 0x0 0x100>, <0x0 0xfdd97f00 0x0 0x100>;
>  		interrupts =3D <GIC_SPI 156 IRQ_TYPE_LEVEL_HIGH 0>;
>  		clocks =3D <&cru ACLK_VOP>, <&cru HCLK_VOP>;
> diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iomm=
u.c
> index da79d9f4cf63..da0e93c139d1 100644
> --- a/drivers/iommu/rockchip-iommu.c
> +++ b/drivers/iommu/rockchip-iommu.c
> @@ -1361,6 +1361,9 @@ static const struct of_device_id rk_iommu_dt_ids[] =
=3D {
>  	{	.compatible =3D "rockchip,rk3568-iommu",
>  		.data =3D &iommu_data_ops_v2,
>  	},
> +	{	.compatible =3D "rockchip,rk3588-iommu",
> +		.data =3D &iommu_data_ops_v2,
> +	},
>  	{ /* sentinel */ }
>  };
> =20
> --=20
> 2.44.0
>=20

--hcmholarfddiyvvu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmX7Nb8ACgkQ2O7X88g7
+po3QA//ZGRsC3BtWsJE9IZElMcFAVIscBSPpnfwYskq0O3KIoMWwvFQGlHgRQ9G
dAvpcGMTmFuhv3ZIqiltdO/+bIeOUztINGSzbWNz7uGhpXvTkVkjFzraNUnUKvNh
oR3U29wGba+FJJODcJ3uSapaPsX8RbCk/nZ2dV32SC1/XK6nOeKXHiqGHJoDNzKL
OIBE8QDo5+YuElwXkDFs336VtOo1jsyUTefahIfAlJh0MNCXJ8Gq+IoK9Rb0gBH5
HFmrJY4GodMvwQcNrAIW+FHnV/QNXIGZmbf57ktHUDU3oXqqTr313xTLwcbQO9bL
Go7UEqWBQV2iUtfsz8eKnmh001LQ6iPyBW/Da+Xv979UrgGemV4yZbn9gZnWeDiC
wUAnrdQGuyQBNYmdAL5LucuDnoWupwuPI6v6UuxkWI7aTUvESvuNGDHEK2ZhV15U
Y1Cz3x6g1o9RXKeMST767Xd1AOC/Zs3sunicG3elgWRvMEThrweqZ35fM9b5LSeW
q2JvJ5C85XF1Ast3dIXZ6EM/WwozjzzCGV+YjX8g7rmx/+3AixhXyzVLKHM81/j8
YVEwVmIXpBlwxf9mnUyduc7buIGMPYAevwrdk8R08ROhJN5D0YDEfvMGkiPRFiNx
TTunFW/jz6+B0GOKl9HomDGWAowhIlJvpJWLRtQ3uetHzFgW9LI=
=7AoS
-----END PGP SIGNATURE-----

--hcmholarfddiyvvu--


--===============1582165820790760976==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1582165820790760976==--

