Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8BCEC072A2
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Nov 2023 18:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2IISfl26RAL7tE+yftutNT9CRnn4J0s2bN4vbDymvjw=; b=Ylx9eNgVHPnYH+cwQoPUW7Wtou
	oAG4kPUE5uwpY07zh9ZXMEU9Ohm4v8ix1Md3jDUp0zhF9a+LWpVFQKa8YTkgRjjq0Aa8jTaoyp0B0
	5RFyILuPlVGAR9cVWMdGgvRB/6kgiHCL751PDAn7R+RvThdmkfSe/cePp6dwLZl/BKPmVp/CLMz/u
	+gSX6rw11DX2TCQIXOuCUZYhzNUf9hcGRKJgVAk0Y9EWTYqvtkfnd5BCk5p13I04+WxkTG570PxJO
	yv6qZVyaFTjMhVpi4gvfBYkQ6gyJQuCS/ilSAwOdyQEgvWrhlNOUqYtsYBQBIfDd1WPg35nVFS7mX
	dlS+3gxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3KCC-001TvR-1w;
	Wed, 15 Nov 2023 18:01:00 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3KC9-001TuU-1I
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Nov 2023 18:00:59 +0000
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id CE3B56603149;
	Wed, 15 Nov 2023 18:00:52 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700071252;
	bh=X88lTzC5Yr86WfdK6qmmX7sQwuExYkpdW/1MWVIAWHw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=odYvCY+qSt6BiI+fz3V5dKopgkEpCjYBaDwDlJG4PBLSynRrYVOls1PbILMcJg9zK
	 si6/Th8e8N2YY2w1WeG2d/ZJgjfkF9B8KI8+sp76FcsyA345sAUMRr/uGdj2J7N6O6
	 qsDkcRpHhUob+NMCf+LUmccPiIDUOgIWxKqJwiuSPZegUVnDXr+FTyp1ISVUsc2jy/
	 sJw4EFHgv5JNbbsLywMApEdrC3us+HgMUU7g6DbNey8T3iRfFQSSgXy+8hUbBauumx
	 HYkKKJLDSh2iQhDzhIxF7bWzlMJl9KuoUD8F6ebfOizklzXLJLoeF9sfEEM2Ezwrv8
	 LEuinyU+W4qlQ==
Received: by mercury (Postfix, from userid 1000)
	id D3AD31062B52; Wed, 15 Nov 2023 19:00:50 +0100 (CET)
Date: Wed, 15 Nov 2023 19:00:50 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com,
	Diederik de Haas <didi.debian@cknow.org>,
	Vincent Legoll <vincent.legoll@gmail.com>
Subject: Re: [PATCH v8 08/14] mfd: rk8xx: add rk806 support
Message-ID: <20231115180050.5r5xukttz27vviyi@mercury.elektranox.org>
References: <20230504173618.142075-1-sebastian.reichel@collabora.com>
 <20230504173618.142075-9-sebastian.reichel@collabora.com>
 <e612cef3-3bb6-46b7-a2c9-53fffc20c819@linaro.org>
MIME-Version: 1.0
In-Reply-To: <e612cef3-3bb6-46b7-a2c9-53fffc20c819@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231115_100057_740926_8812D3EB 
X-CRM114-Status: GOOD (  26.30  )
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
Content-Type: multipart/mixed; boundary="===============3683380359220380151=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3683380359220380151==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p5x677iir2g2ntby"
Content-Disposition: inline


--p5x677iir2g2ntby
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Neil,

On Wed, Nov 15, 2023 at 06:17:50PM +0100, Neil Armstrong wrote:
> Hi Sebastian,
>=20
> On 04/05/2023 19:36, Sebastian Reichel wrote:
> > Add support for SPI connected rk806, which is used by the RK3588
> > evaluation boards. The PMIC is advertised to support I2C and SPI,
> > but the evaluation boards all use SPI. Thus only SPI support is
> > added here.
> >=20
> > Acked-for-MFD-by: Lee Jones <lee@kernel.org>
> > Tested-by: Diederik de Haas <didi.debian@cknow.org> # Rock64, Quartz64 =
Model A + B
> > Tested-by: Vincent Legoll <vincent.legoll@gmail.com> # Pine64 QuartzPro=
64
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > ---
> >   drivers/mfd/Kconfig       |  14 ++
> >   drivers/mfd/Makefile      |   1 +
> >   drivers/mfd/rk8xx-core.c  |  69 ++++++-
> >   drivers/mfd/rk8xx-spi.c   | 124 ++++++++++++
> >   include/linux/mfd/rk808.h | 409 ++++++++++++++++++++++++++++++++++++++
> >   5 files changed, 614 insertions(+), 3 deletions(-)
> >   create mode 100644 drivers/mfd/rk8xx-spi.c
> >=20
>=20
> <snip>
>=20
> > -	ret =3D devm_mfd_add_devices(dev, PLATFORM_DEVID_NONE,
> > -			      cells, nr_cells, NULL, 0,
> > +	ret =3D devm_mfd_add_devices(dev, 0, cells, nr_cells, NULL, 0,
> >   			      regmap_irq_get_domain(rk808->irq_data));
>=20
> It seems you replaced PLATFORM_DEVID_NONE by 0, triggering again the bug =
preventing
> having multiples RK pmics on the same system I fixed earlier at [1].

All cells have PLATFORM_DEVID_NONE specified and thus are registered
without an ID. I changed this bit to avoid overriding the
information, since I did not want to have PLATFORM_DEVID_NONE for
rk806.

> This gives (again):
> <4>[ 0.664107] sysfs: cannot create duplicate filename '/bus/platform/dev=
ices/rk808-clkout'

Which means, you do not want PLATFORM_DEVID_NONE (-1), but
PLATFORM_DEVID_AUTO (-2). The above path is the expected path
for PLATFORM_DEVID_NONE.

> <4>[ 0.664120] CPU: 3 PID: 97 Comm: kworker/u12:2 Not tainted 6.6.1 #1
> <4>[ 0.664131] Hardware name: Hardkernel ODROID-GO-Ultra (DT)
> <4>[ 0.664139] Workqueue: events_unbound deferred_probe_work_func
> <4>[ 0.664160] Call trace:
> <4>[ 0.664165] dump_backtrace+0x9c/0x11c
> <4>[ 0.664181] show_stack+0x18/0x24
> <4>[ 0.664193] dump_stack_lvl+0x78/0xc4
> <4>[ 0.664205] dump_stack+0x18/0x24
> <4>[ 0.664215] sysfs_warn_dup+0x64/0x80
> <4>[ 0.664227] sysfs_do_create_link_sd+0xf0/0xf8
> <4>[ 0.664239] sysfs_create_link+0x20/0x40
> <4>[ 0.664250] bus_add_device+0x114/0x160
> <4>[ 0.664259] device_add+0x3f0/0x7cc
> <4>[ 0.664267] platform_device_add+0x180/0x270
> <4>[ 0.664278] mfd_add_device+0x390/0x4a8
> <4>[ 0.664290] devm_mfd_add_devices+0xb0/0x150
> <4>[ 0.664301] rk8xx_probe+0x26c/0x410
> <4>[ 0.664312] rk8xx_i2c_probe+0x64/0x98
> <4>[ 0.664323] i2c_device_probe+0x104/0x2e8
> <4>[ 0.664333] really_probe+0x184/0x3c8
> <4>[ 0.664342] __driver_probe_device+0x7c/0x16c
> <4>[ 0.664351] driver_probe_device+0x3c/0x10c
> <4>[ 0.664360] __device_attach_driver+0xbc/0x158
> <4>[ 0.664369] bus_for_each_drv+0x80/0xdc
> <4>[ 0.664377] __device_attach+0x9c/0x1ac
> <4>[ 0.664386] device_initial_probe+0x14/0x20
> <4>[ 0.664395] bus_probe_device+0xac/0xb0
> <4>[ 0.664403] deferred_probe_work_func+0xa0/0xf4
> <4>[ 0.664412] process_one_work+0x1bc/0x378
> <4>[ 0.664421] worker_thread+0x1dc/0x3d4
> <4>[ 0.664429] kthread+0x104/0x118
> <4>[ 0.664440] ret_from_fork+0x10/0x20
> <3>[ 0.664494] rk8xx-i2c 0-001c: error -EEXIST: failed to add MFD devices
> <4>[ 0.666769] rk8xx-i2c: probe of 0-001c failed with error -17

I didn't notice when working on rk806, but after analyzing it now:

Your patch effectively set the cells to PLATFORM_DEVID_AUTO, because
you set all cells to PLATFORM_DEVID_NONE (-1) and additionally used
PLATFORM_DEVID_NONE (-1) for the devm_mfd_add_devices() call. But
that uses the sum of both IDs. Adding -1 to -1 is -2 and thus
PLATFORM_DEVID_AUTO. This is of course very confusing and just
worked by chance. There are two options:

1. Modify all cells to use PLATFORM_DEVID_AUTO instead of
PLATFORM_DEVID_NONE
2. Drop the .id from all cells and use PLATFORM_DEVID_AUTO in the
call to devm_mfd_add_devices()

Note, that switching from PLATFORM_DEVID_NONE to PLATFORM_DEVID_AUTO
modifies sysfs paths and thus might break people's scripts; that's why
I tried not to modify any existing platform. I will let you deal
with that, since I cannot even test any !rk806 platform supported by
this driver :)

Also mfd_add_device should probably get special handling for
PLATFORM_DEVID_NONE, just like it already has special handling
for PLATFORM_DEVID_AUTO.

Greetings,

-- Sebastian

--p5x677iir2g2ntby
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmVVB0gACgkQ2O7X88g7
+prC/w//VgyuqwaABLRt3wzZOdQku6c+y/SaPX8eoRpCOKhOOdhvhqpYNl5VyzuC
2wPOTkvqvSjd2C3DtZ8KwSphfCkEyIhNb0+Pb1G3PpsNheQdnz43XM/P1+6vxn5j
W6SjavSxjW3/XuttSZKmmM0RPMrOC+sKs9S2XmMg9yql3mCof1cDTgJ+XLPrvUdv
bS+PosV9h1lMROyf2G5LS8ePfXHIyUEnlSvRtK+ukUagdnd9iNeMjzI+LqMkwka/
Px+Bnh/eb5CZovZUphkgrEVpAY/SZxQkLrJigb5KM4OljPaeYPpc1NwL2bJgihNl
P/l99YFrAnowbyxkBrWgxW3eQFIYF6U0ahTkM2r9lGMkRxNQ9UQ+WJVYYexmhg2K
TfYpKdiD6iqIB3IQCw3aujsZS+xIqSMPqM+r8Hys5vF1F4qSrWR3GQEfy6lpkrOD
KpV9WtDnLP8hq64Wb8i6KBWxJL518F/e+42Is7ujXd6vL+R8lRzS414MGE95O1pb
jJ/XI4gF8/Z5oIj4Tva4x7TdQ02TPncrbD5MHCADa/QRRtAZB7S4XxxO+i+xCXIZ
3JYAkgYmzRR8MTwLzyV49sYWduQTbR5HAQBAEdF7AWuJbfB5f7FdL0gYZXTU+S3J
UQOLKlJWwOrePScP+33uV6Fovv2Vby15CM8s19Iu4JPpsfBxqyk=
=HRzJ
-----END PGP SIGNATURE-----

--p5x677iir2g2ntby--


--===============3683380359220380151==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3683380359220380151==--

