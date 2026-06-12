Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39753CD98CF
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jun 2026 21:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RiBrbHh0LsIfc5IDL8+DvcOvKBtlEZ4IgK2jJDEu2x4=; b=ev1HvcCpm3bO52bugGSS/lHq/d
	0zeSoUjFk8SjHSPbD0bsRns8kQAaxbq3O02KCMuPHK/Dcql9bdaZqlhgI6Fc+VfbG3nL2zmgJlkuT
	kaUv3wtejJy8ENE0624Vu3wgLlDHbc+bP4rUraeuGlt4qVgDQc+RkL/lTQOQkAY0z741tx1dJikk5
	25dtNrfwQ8x60/tKu+M9ihKLyhq/uHhBBWe3Dyg56FA37Hx7mVbrLSMQExoQBzzO3HbopdofOy55c
	1IWV9NyLlrl7METgGlu7UenpWVazHAD5eRlHgeBYOKHvVjyxAUt3NSV1GoFXA/rUqIUXyzeIyyYE3
	Dl4MGOsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY9GK-0000000BbHu-3TmJ;
	Fri, 12 Jun 2026 21:18:00 +0000
Received: from sender4-op-o11.zoho.com ([136.143.188.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY9GH-0000000BbHC-3S1W;
	Fri, 12 Jun 2026 21:17:59 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1781298940; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=OKS40WmHs9HXccer99KYn6oZOd3s7A/QcRyaoSg61l8t/e7/tucKewZS3PjGEb51f1QDfNRq1j6o2EzPQ60ZsxkLkl8tfK7BdcwjWn/idwkDYas2VQ8K/Uv8C3Sy4tVeF+L5iKTH+2cBq6K4m684P//duvIajUSHyz/h48uHfYg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1781298940; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=tv6LplnDGDFs2tsuGoRHCdXAYO7jI7MN//DIkYHWNuY=; 
	b=MNzNQk69za9Qm2cSQJjVXXgqym5J4Sc5mNe79Ajt9yQHQalaVah+IFLVPRtuRe4T1JQxTr0Z//Zt/vxlz1jUQHyRusAU67ZW2Wmo7J8YZwIa+Po20ZuPntfURGbIe5ZeeG/n/9CWaL8boObo0ZnhrZcqoTp8Gyzvf1GqzFGrr4E=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1781298940;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=tv6LplnDGDFs2tsuGoRHCdXAYO7jI7MN//DIkYHWNuY=;
	b=M6v8BK5vtjyj0S/NYEsQvgb9mF43z2OvICcosRQ+DQPiPzgBLXD7nzwVSZMAbbCL
	SGrCvnllAHVCxUC+DlrWRahMKKSy7ohP2m6o4vJpEjLMp5aLA2V9Hj+HdyPldQEH6+U
	MZ2QxYCzXtsj8E+IVm+alsZV3gSxsGWOetKsyUic=
Received: by mx.zohomail.com with SMTPS id 1781298939699370.6870059309615;
	Fri, 12 Jun 2026 14:15:39 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id 5638C180674; Fri, 12 Jun 2026 23:15:34 +0200 (CEST)
Date: Fri, 12 Jun 2026 23:15:34 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Diederik de Haas <diederik@cknow-tech.com>
Cc: Midgy Balon <midgy971@gmail.com>, 
	Chaoyi Chen <chaoyi.chen@rock-chips.com>, tomeu@tomeuvizoso.net, ogabbay@kernel.org, heiko@sntech.de, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, joro@8bytes.org, 
	will@kernel.org, robin.murphy@arm.com, dri-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	iommu@lists.linux.dev, linux-kernel@vger.kernel.org, Simon Xue <xxm@rock-chips.com>, 
	Finley Xiao <finley.xiao@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [RFC PATCH v3 0/9] accel: rocket: Add RK3568 NPU support
Message-ID: <aixze8zFboY3huSf@venus>
References: <CA+GS1Y1s78PwN63X2YJoS8VEGp7CpTERo_K65yKs00U4VRAw4Q@mail.gmail.com>
 <e5058919-9485-4de5-8eea-331ebfc2987c@rock-chips.com>
 <CA+GS1Y3ysdWZ3qCq3ip_Pbw+v4LxHZd95aBo=jwB+orYaMBBNw@mail.gmail.com>
 <CA+GS1Y0kAM_XGLQuKPTphif2HcQg18ZXhd8RHHr2xPOEMCDvXA@mail.gmail.com>
 <bcedaff0-abf8-4585-a0ea-057062cd0411@rock-chips.com>
 <CA+GS1Y2-hRqpGgsknh+oOX+-uZ3DZtdekdP9viTP6a40zhhUhg@mail.gmail.com>
 <b05f7154-e85f-4207-80ae-f080282ba780@rock-chips.com>
 <DJ5A9XL183RZ.20J3ASQ3EWUZ6@cknow-tech.com>
 <CA+GS1Y1xAq-9eMyMmoVE6NG9KLG7XRxgPoSr5RkW=6fT5D820g@mail.gmail.com>
 <DJ5FUW50YM2N.6ZTY4WK27ZP5@cknow-tech.com>
MIME-Version: 1.0
In-Reply-To: <DJ5FUW50YM2N.6ZTY4WK27ZP5@cknow-tech.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.10.1.5.2/281.294.11
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_141757_898394_6FADD4FF 
X-CRM114-Status: GOOD (  16.37  )
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
Content-Type: multipart/mixed; boundary="===============4076029721376566282=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4076029721376566282==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="73c7cnokjssbpj3q"
Content-Disposition: inline


--73c7cnokjssbpj3q
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [RFC PATCH v3 0/9] accel: rocket: Add RK3568 NPU support
MIME-Version: 1.0

Hi,

On Wed, Jun 10, 2026 at 04:28:17PM +0200, Diederik de Haas wrote:
> On Wed Jun 10, 2026 at 3:36 PM CEST, Midgy Balon wrote:
> [    2.110935] rockchip-pm-domain fd8d8000.power-management:power-control=
ler: Failed to create device link (0x180) with supplier 2-0042 for /power-m=
anagement@fd8d8000/power-controller/power-domain@8
> [    2.557459] sdhci-dwcmshc fe2e0000.mmc: Can't reduce the clock below 5=
2MHz in HS200/HS400 mode
> [    2.647174] rockchip-pm-domain fd8d8000.power-management:power-control=
ler: Failed to create device link (0x180) with supplier 2-0042 for /power-m=
anagement@fd8d8000/power-controller/power-domain@8
> [    2.945089] rockchip-pm-domain fd8d8000.power-management:power-control=
ler: Failed to create device link (0x180) with supplier spi2.0 for /power-m=
anagement@fd8d8000/power-controller/power-domain@12
>=20
> 8 =3D NPU; 12 =3D GPU
>=20
> on both nanopc-t6-lts and nanopc-t6-plus (both RK3588).
> And on a 6.18 dmesg output I have for Rock 5B, I see the ~ same, but then
> it's 1-0042 instead of 2-0042.=20
>=20
> I don't know if it's bad or harmless, but it is consistent.

The fw_devlink framework tries to figure out a sensible probe order
by analyzing links between devices. The warning is because there is
a cyclic dependency. This happens because all power domains are
provided by one device (power-controller).

Now if you want to probe the I2C regulator 2-0042, you need the
I2C controller and to probe the I2C controller you need the I2C
power domain and for that you need the power-controller. But for
the power-controller you need 2-0042 (for the NPU power-domain).
At this point fw_devlink gives up and prints the warning.

Apart from the warning this results in the kernel missing dependency
information, so there might be some extra probe calls ending in
-EPROBE_DEFER (which wastes CPU power and delays the boot process).

So it's neither super bad, nor completely harmless. Fixing this
properly requires some heavy restructuring of the Rockchip
power-controller driver.

Greetings,

-- Sebastian

--73c7cnokjssbpj3q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmosdvIACgkQ2O7X88g7
+poq+Q//WNiAZeCgn2HpeHzvi+tZUbRlCrs91vnfbyyp+MgI5k47fApfmuGuVIcL
a7FntM6Sm6vK5x1JfXt5tL6Zcvmhpm0YVz3FNvIMn6XMaq25w+qoyyD+Cah7iazS
hdYmaxEfOq6AaQmAJ0DIvg98xzBovOhk5j94r/CymBTfskaVGJ0kvnleQe4xmTUS
HOUKdwQSz4BJ8xEIamPZ6kDCyDroQkqgbSlS6T+JjrhYtEYuj4K3B9eYNRZQTYN9
cdpKUZCoiJz0pRtoi+SKNS7KRYBNPtqHD6KZgctqhjjTB/ZBkwpkawQcct0/JUR1
2JFNz8EsoYsJdqEvHeFhcpCJYUc6E4+/5tQRPZUaeDW9774A005T6iDbohCKWynG
fW5i+psb3BOmTyTYFaLduwo9tmGnOX4h13de38FGuGmZX5VrOxLU2urruLVXAeoQ
gsldVMOQ3ptd47lBH4d7rHe+oRZqs9Qhc9dgg0qFdC705L8tL9vxVsTdySk2zW7V
N0ojS11VP/1RVFOVcrl9NXFWFojuAKTLlXvEj0u80JHyP1OjjaGTKr2BPGS4G0kI
5LFZZdwSLbsTpUsXbUyRvz++myq/HlepUhpUTu9RriXFmWRbcXvxfOE84EtvPST9
fv7vfqWZrycpFf4hqNwXFsEzP8iWPacUFw+Bbn0KW5waxsnQqRI=
=xMTH
-----END PGP SIGNATURE-----

--73c7cnokjssbpj3q--


--===============4076029721376566282==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4076029721376566282==--

