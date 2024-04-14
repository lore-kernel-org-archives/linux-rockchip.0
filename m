Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C0FDC4345F
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Apr 2024 18:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oimd7YK4VsJgvYZDrtxU1O13v5p3XJxQPjndM9ckIzc=; b=eyemMsLjW3jCayPFlcxgkQDFRt
	RviwNbXiqXxlO1nsnaMDFQMb/Pb6ZGqL7X41QOf4ScWKwO/AA/09ESL4DmPJ77qsrYu3BO1vGerqP
	urhGui59KR/7sgwY1jROxH0L+mSfJvLh7tLfXNJO9ERTdmU+NK8WL7avCuKvEQyLD5tmAw6iz4dq6
	yiFG+6EV2USuWdY25SaqHq+kfvm2Ck0GuJ6sFO9hC+UCqIPHl1VnslYZAMxr1SjBiBu6P24aTayFj
	9lxQ3t4BfRWNFApenMGdcFDRyQcKC5USWmEhWPlbV/kWbDEQDXF6fFGhQViPKk37gc7o3ov/E959f
	iIVbNjXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rw4ik-000000066MF-3KZj;
	Sun, 14 Apr 2024 18:36:54 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rw4ih-000000066Kl-2YEh;
	Sun, 14 Apr 2024 18:36:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1713119803;
	bh=rT0Ls6DVFCzzlFPUOlmKHuVQHe6JZ+Laed7jwNJb4no=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tdwmPxjhpI1tcBVd8qCh7/nSyl+LjbG52efcfiCsa05jLLrWb8WDMD0V2h7DHsRIe
	 pA2cPJr6sITGynILUsqCSlmenANEGPNeEWqRZdLBz7lFk0bhhfdyVLuhlf7yvPktTr
	 1TJXzw0OK95ShF1u5/EX0/n3NgDt9zbfIwgIe2WQ5X9XsXt/Bl8lLFOfZJG4+dG+CZ
	 2bsYl+uTLg1fa7Mm8AgERoRgtQ03Ay92Fxxsdbawh829J7IYiJBt2HOkgXmu4L80OJ
	 WjUkLix9Mn07oSVZBKel2yYT6tFyOkDWrEhee7YhffLKQEB124D6/le17MP/1fi8LN
	 2B3QSakDPslYA==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id B1DE237814A4;
	Sun, 14 Apr 2024 18:36:43 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 31571106134A; Sun, 14 Apr 2024 20:36:41 +0200 (CEST)
Date: Sun, 14 Apr 2024 20:36:41 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, sfr@canb.auug.org.au
Subject: Re: [PATCH v5 1/2] arm64: dts: rockchip: Add Hantro G1 VPU support
 for RK3588
Message-ID: <f3s63qq7h7qstu5sbjzcumafpllvineh3tlmbjy7hdj4oickla@gcqixrj623gu>
References: <20240413064608.788561-1-liujianfeng1994@gmail.com>
 <20240413064608.788561-2-liujianfeng1994@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240413064608.788561-2-liujianfeng1994@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_113651_790798_05CA0F5C 
X-CRM114-Status: GOOD (  16.19  )
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
Content-Type: multipart/mixed; boundary="===============0143685370034052267=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0143685370034052267==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cwtj3nebnsz4gzrf"
Content-Disposition: inline


--cwtj3nebnsz4gzrf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Apr 13, 2024 at 02:46:07PM +0800, Jianfeng Liu wrote:
> Enable Hantro G1 video decoder in RK3588's devicetree.
>=20
> Tested with FFmpeg v4l2_request code taken from [1]
> with MPEG2, H.264 and VP8 samples.
>=20
> [1] https://github.com/LibreELEC/LibreELEC.tv/blob/master/packages/multim=
edia/ffmpeg/patches/v4l2-request/ffmpeg-001-v4l2-request.patch
>=20
> Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/=
dts/rockchip/rk3588s.dtsi
> index ac5bd630f..de823f461 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -1072,6 +1072,27 @@ power-domain@RK3588_PD_SDMMC {
>  		};
>  	};
> =20
> +	vpu: video-codec@fdb50000 {
> +		compatible =3D "rockchip,rk3588-vdpu121", "rockchip,rk3568-vpu";
> +		reg =3D <0x0 0xfdb50000 0x0 0x800>;
> +		interrupts =3D <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH 0>;
> +		interrupt-names =3D "vdpu";
> +		clocks =3D <&cru ACLK_VPU>, <&cru HCLK_VPU>;
> +		clock-names =3D "aclk", "hclk";
> +		iommus =3D <&vdpu_mmu>;
> +		power-domains =3D <&power RK3588_PD_VDPU>;
> +	};
> +
> +	vdpu_mmu: iommu@fdb50800 {
> +		compatible =3D "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
> +		reg =3D <0x0 0xfdb50800 0x0 0x40>;
> +		interrupts =3D <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clock-names =3D "aclk", "iface";
> +		clocks =3D <&cru ACLK_VPU>, <&cru HCLK_VPU>;
> +		power-domains =3D <&power RK3588_PD_VDPU>;
> +		#iommu-cells =3D <0>;
> +	};
> +
>  	av1d: video-codec@fdc70000 {
>  		compatible =3D "rockchip,rk3588-av1-vpu";
>  		reg =3D <0x0 0xfdc70000 0x0 0x800>;
> --=20
> 2.34.1
>=20
>=20

--cwtj3nebnsz4gzrf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmYcIjQACgkQ2O7X88g7
+pru+g//TSGr8OdwYvLGz5eiAnvv//OdV2zNbWBeVOb5TQnuvB/kxBbwspIJAY44
+Bkgz9AWLjEZuooKaIoQrgCFNJu5o4+rdTiIhKMEo9M6QSjji/jRvB0J4TIUVbUR
brTZUvJhTQJNNh81CWstGJtiYvPf57IJvojjk7VJRJFg97eTf/kZszfRArbWohhn
4Ij7oW9bR9e9fX8PIJd5zVgJD/ljHHmKU48ZkI8WMwhplYVJh84+lOaI9KbTjuN1
fqPjTNJeQm4l9VbQ1nvoe/LC9HErVoPc77obiChmO0FwCD4nAL0xMfC6m9Qweayg
7e9rG8crDGy2takHP5+vrOjLMdwucwzL2vNV8SuZbiF2NWPLDyD1TZkNKI6Tw4af
xBu4OSA/de+vulnxpfIFYx3ieasHNfgl8PTwDOtliugOf6i+aiczpblhvLsqNcyK
WtY4VUiR/B+YVNLOdsDFkDwHJ3r+YHCoke67R9MVYPZdq3JKIwxRaj2xqgHAUzBb
joaX8pRdYrrxPkIquHKPUteegweV1Fr3FiZPvelNcSB/6l90HMa+XoYM5vR3ARnx
zHpzLKJygYzlkUi4fR3y1Ad2H0FfV5MHx4TIJ+FlQuUJTuEnp30hWb7Sc/YCC0Ec
YgZGoH/r8ARl0V+Zmvi/R6bFrZmnBETRnn55EzWnOfDUy3KHcyk=
=HMGY
-----END PGP SIGNATURE-----

--cwtj3nebnsz4gzrf--


--===============0143685370034052267==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0143685370034052267==--

