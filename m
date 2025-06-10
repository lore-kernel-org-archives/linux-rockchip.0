Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95FBCC5B543
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jun 2025 12:07:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:From:Subject:To:Message-Id:Date:Mime-Version:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=16nUgxzkbFaoG78X56QrU3EEMwegFfYmgLt4rITyzw4=; b=wt2uf4ktrhPHByMXpvE5t2SABH
	dYQ2Zg0EXNc64tJKDSelDV4cTqhHW8NMEK7RATeWim3jn/+Zn+b8g7nvA77WInsWSDOSqnu8zjcqY
	BhDYI9rr/Kujo4MnC4mrvUtCNbYmytioSL36tqv0kMsgqGDqbmbz/JJg75sRZUxinqmMwBr4N+IRi
	UcyiYP8/sKpQBuEf9WxTDSotRAs05Zn3Ngp4p6BJ2pxF+M/f1gcPgHYMFCJGPbRKYdz5urgfIEavZ
	YdP4QFEJ9SSd5n1/EDx4Xk7xq0vZwbacZl5xKru34b/XkdRf3XXM0L8efAs+/DflMuSXpx1vQWlC6
	4eGANFew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOxlc-00000006ic9-3QGH;
	Tue, 10 Jun 2025 12:07:48 +0000
Received: from out-174.mta1.migadu.com ([95.215.58.174])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOxER-00000006eWq-34N1
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Jun 2025 11:33:33 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1749555209;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=3BbKiigODEicaiDNzx9aoa4j4mF/NM/KKv41e3U3xBE=;
	b=wd5lub2M4ly/Y+UM69qrQaNtuHzWYZUNWzPhgJ5L+BRHBdHOKaSc0U7f9jrgezU99Ly57K
	Se/7+7htSTy3pxzR/F3XNjBC+6KlQzFyvaS2Hsq2Dwv69glNGtzNs0xgcmv7M5ysEPuLFb
	ReTuWft92EiA/X+iLCNyqfsuxsp6rI3axXtAqaibrzwvUJgSxgd4bvhwdrScGSIH/cvTMW
	Qd7g8i3pL8ln/exU+Cpvrs2+UUwRkmSchAOnhQf/2mAeBea66iafoPzARbtdZBf8He/iUn
	9tGmOJkuffUEr8OBmtrUjJk1ulfkeLlmgRdl5VZ0JyeA9qbGq+JYYwra2YKfqQ==
Date: Tue, 10 Jun 2025 13:33:25 +0200
Message-Id: <DAITK5IPG0QA.2EMB23KS83SBE@cknow.org>
To: "Peter Robinson" <pbrobinson@gmail.com>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, "Peter Geis" <pgwipeout@gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add overlay for RockPro64
 screen
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
References: <20250518215944.178582-1-pbrobinson@gmail.com>
 <20250518215944.178582-2-pbrobinson@gmail.com>
In-Reply-To: <20250518215944.178582-2-pbrobinson@gmail.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_043331_920619_355A75DE 
X-CRM114-Status: GOOD (  15.04  )
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
Content-Type: multipart/mixed; boundary="===============5384237107923177755=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============5384237107923177755==
Content-Type: multipart/signed;
 boundary=784e285f5dea8c9600fc349e98833e3e9f44c336efd28cb84210aa5d2a54;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--784e285f5dea8c9600fc349e98833e3e9f44c336efd28cb84210aa5d2a54
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi,

On Sun May 18, 2025 at 11:59 PM CEST, Peter Robinson wrote:
> The Pine64 touch panel is a panel consisting of the Feiyang fy07024di26a3=
0d
> panel with a Goodix gt911 touch screen. Add a device tree overlay to
> allow the display to be easily used on the device.
>
> This was previously included in the main device tree but left disabled
> by default which still required rebuilding the DT to use the device, now
> overlays can go upstream the overlay is the best way to handle the
> add on devices.
>
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |  9 ++
>  .../dts/rockchip/rk3399-rockpro64-screen.dtso | 89 +++++++++++++++++++
>  2 files changed, 98 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-screen.=
dtso
>
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/=
rockchip/Makefile
> index 3e8771ef69ba1..c7b13bff3ac20 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -77,6 +77,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rock-pi-4c.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rock960.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rockpro64-v2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rockpro64.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rockpro64-screen.dtso

``s/rk3399-rockpro64-screen.dtso/rk3399-rockpro64-screen.dtbo``

Cheers,
  Diederik

>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-sapphire.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-sapphire-excavator.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399pro-rock-pi-n10.dtb
> @@ -209,6 +210,14 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-puma-haikou-=
haikou-video-demo.dtb
>  rk3399-puma-haikou-haikou-video-demo-dtbs :=3D rk3399-puma-haikou.dtb \
>  	rk3399-puma-haikou-video-demo.dtbo
> =20
> +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rockpro64-screen.dtb
> +rk3399-rockpro64-screen-dtbs :=3D rk3399-rockpro64.dtb \
> +	rk3399-rockpro64-screen.dtbo
> +
> +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rockpro64-screen.dtb
> +rk3399-rockpro64-v2-screen-dtbs :=3D rk3399-rockpro64-v2.dtb \
> +	rk3399-rockpro64-screen.dtbo
> +
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3568-wolfvision-pf5-vz-2-uhd.dtb
>  rk3568-wolfvision-pf5-vz-2-uhd-dtbs :=3D rk3568-wolfvision-pf5.dtb \
>  	rk3568-wolfvision-pf5-display-vz.dtbo \
> <snip>

--784e285f5dea8c9600fc349e98833e3e9f44c336efd28cb84210aa5d2a54
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaEgYCQAKCRDXblvOeH7b
bpDlAP42dz1RokCahWYcKFjBZeZ82YRBLCv2WWK9segBBQ42mAD9GwubVa32FumV
yuonJTRt3xHaFfm2Dhc1UTppyeq1Wgo=
=HBM1
-----END PGP SIGNATURE-----

--784e285f5dea8c9600fc349e98833e3e9f44c336efd28cb84210aa5d2a54--


--===============5384237107923177755==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5384237107923177755==--

