Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1C34C54E67
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 19:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YPy5QDn1ApMHQr56BBmL+yucUmnVpn9SHoe+Jup8Rfw=; b=01bO6q+94d2wBycFfvqxG5oqq8
	n+xJx1v5yIq/o+pyPchvjwBlz6XTzY37/RWyA70aY1zeSXeHQWbjbNPrkuL1Vw7AsmZ7PXjf0HNG0
	ZosuPStZk2YXhG40qM3SqdiNhj7WUrF/px6X/EfGyu5OEBlydilwjnmDRhyoCT38ynaX/D+PLv/hK
	/Q4/o04UfS4DH+/L1ebgvFr872VvJvEWpcj5KGZ14BMfH4Je0x1z66KNw89p4yrn/vL+UFHq13kAo
	upu0T8Sm73kszT8NLizROcPwXzNIesk9msQOGlY0BK2pG4jrSutTahZ0ilXZYKom2aC8O53r2HAGs
	U1IYIMdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpCkP-00000006CJD-40Ad;
	Tue, 26 Mar 2024 19:46:13 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpCkM-00000006CI9-0tta;
	Tue, 26 Mar 2024 19:46:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 599D86124A;
	Tue, 26 Mar 2024 19:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A1A2C43390;
	Tue, 26 Mar 2024 19:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711482369;
	bh=06TMEEjhODfbSDjv9gFoX7ubkfnnvLL8Xxq82XPPGcI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=g6x15P3T/1D5cok+wB8MT33wgFRF7mj3MaVE+NxPaxiptp+GDXhe0NySVkbdXvMuj
	 Nnetdt5zPMSGu27jzoTrcmqjvHcFMyam0f6IWtDW06MbdtPtxOU3T6syrf/EXAqtRb
	 wgnXiTgDv05AORB+BUBYkg4gkySnDZh9CTseRoQATOXjcYOi8ACqd2/WcCG2JgT3Sj
	 BcaY8o2uSLOxS/q9AEBUbDzJNd1ZStJzr+pr3TFo9oLuaqwwWIn1H1uQ9L+N4CxfP0
	 v5JOTyC2yW+rB6tzapYc3JdRwQwwxYT09dX2AR3l5G7eoaXoee2lzzu+4h390IcePs
	 07qP2iF5zKEpQ==
Date: Tue, 26 Mar 2024 19:46:03 +0000
From: Conor Dooley <conor@kernel.org>
To: dev@folker-schwesinger.de
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Ruehl <chris.ruehl@gtsys.com.hk>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Alban Browaeys <alban.browaeys@gmail.com>,
	Doug Anderson <dianders@chromium.org>,
	Brian Norris <briannorris@chromium.org>,
	Jensen Huang <jensenhuang@friendlyarm.com>,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] phy: rockchip: emmc: Enable pulldown for strobe line
Message-ID: <20240326-tactical-onlooker-3df8d2352dc2@spud>
References: <20240326-rk-default-enable-strobe-pulldown-v1-0-f410c71605c0@folker-schwesinger.de>
 <20240326-rk-default-enable-strobe-pulldown-v1-1-f410c71605c0@folker-schwesinger.de>
MIME-Version: 1.0
In-Reply-To: <20240326-rk-default-enable-strobe-pulldown-v1-1-f410c71605c0@folker-schwesinger.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_124610_567191_82A5BB1D 
X-CRM114-Status: GOOD (  24.96  )
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
Content-Type: multipart/mixed; boundary="===============5455001323670899287=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5455001323670899287==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zYLJU3bUGFnj+RDa"
Content-Disposition: inline


--zYLJU3bUGFnj+RDa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 26, 2024 at 07:54:35PM +0100, Folker Schwesinger via B4 Relay w=
rote:
> From: Folker Schwesinger <dev@folker-schwesinger.de>
>=20
> Restore the behavior of the Rockchip kernel that undconditionally
> enables the internal strobe pulldown.

What do you mean "restore the behaviour of the rockchip kernel"? Did
mainline behave the same as the rockchip kernel previously? If not,
using "restore" here is misleading. "Unconditionally" is also incorrect,
because you have a property that disables it.

> As the DT property rockchip,enable-strobe-pulldown is obsolete now,
> replace it with a property to disable the internal pulldown.
>=20
> This fixes I/O errors observed on various Rock Pi 4 and NanoPi4 series
> boards with some eMMC modules. Other boards may also be affected.
>=20
> An example of these errors is as follows:
>=20
> [  290.060817] mmc1: running CQE recovery
> [  290.061337] blk_update_request: I/O error, dev mmcblk1, sector 1411072=
 op 0x1:(WRITE) flags 0x800 phys_seg 36 prio class 0
> [  290.061370] EXT4-fs warning (device mmcblk1p1): ext4_end_bio:348: I/O =
error 10 writing to inode 29547 starting block 176466)
> [  290.061484] Buffer I/O error on device mmcblk1p1, logical block 172288
>=20
> Fixes: 8b5c2b45b8f0 ("phy: rockchip: set pulldown for strobe line in dts")
> Signed-off-by: Folker Schwesinger <dev@folker-schwesinger.de>
> ---
>  drivers/phy/rockchip/phy-rockchip-emmc.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/phy/rockchip/phy-rockchip-emmc.c b/drivers/phy/rockc=
hip/phy-rockchip-emmc.c
> index 20023f6eb994..6e637f3e1b19 100644
> --- a/drivers/phy/rockchip/phy-rockchip-emmc.c
> +++ b/drivers/phy/rockchip/phy-rockchip-emmc.c
> @@ -376,14 +376,14 @@ static int rockchip_emmc_phy_probe(struct platform_=
device *pdev)
>  	rk_phy->reg_offset =3D reg_offset;
>  	rk_phy->reg_base =3D grf;
>  	rk_phy->drive_impedance =3D PHYCTRL_DR_50OHM;
> -	rk_phy->enable_strobe_pulldown =3D PHYCTRL_REN_STRB_DISABLE;
> +	rk_phy->enable_strobe_pulldown =3D PHYCTRL_REN_STRB_ENABLE;
>  	rk_phy->output_tapdelay_select =3D PHYCTRL_OTAPDLYSEL_DEFAULT;
> =20
>  	if (!of_property_read_u32(dev->of_node, "drive-impedance-ohm", &val))
>  		rk_phy->drive_impedance =3D convert_drive_impedance_ohm(pdev, val);
> =20
> -	if (of_property_read_bool(dev->of_node, "rockchip,enable-strobe-pulldow=
n"))
> -		rk_phy->enable_strobe_pulldown =3D PHYCTRL_REN_STRB_ENABLE;
> +	if (of_property_read_bool(dev->of_node, "rockchip,disable-strobe-pulldo=
wn"))
> +		rk_phy->enable_strobe_pulldown =3D PHYCTRL_REN_STRB_DISABLE;

Unfortunately you cannot do this.
Previously no property at all meant disabled and a property was required
to enable it. With this change the absence of a property means that it
will be enabled.
An old devicetree is that wanted this to be disabled would have no
property and will now end up with it enabled. This is an ABI break and is
clearly not backwards compatible, that's a NAK unless it is demonstrable
that noone actually wants to disable it at all.

If this patch fixes a problem on a board that you have, I would suggest
that you add the property to enable it, as the binding tells you to.

Thanks,
Conor.

>  	if (!of_property_read_u32(dev->of_node, "rockchip,output-tapdelay-selec=
t", &val)) {
>  		if (val <=3D PHYCTRL_OTAPDLYSEL_MAXVALUE)
>=20
> --=20
> 2.44.0
>=20
>=20

--zYLJU3bUGFnj+RDa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZgMl+wAKCRB4tDGHoIJi
0hvVAP45y61fo87t2o+BbHPCKNKWjbNdW5YeWmPG1yoleN6xBAEA68Hda2BEZnjb
dTtJLh0pxzAEeDUfwrA4rNAjq5p49g8=
=CH3R
-----END PGP SIGNATURE-----

--zYLJU3bUGFnj+RDa--


--===============5455001323670899287==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5455001323670899287==--

