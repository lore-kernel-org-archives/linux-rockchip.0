Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33C57C52D7C
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Aug 2024 16:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gupUZGJVhkwEMATAba8+giXtD8q3vqdAtRG3usfyfe8=; b=qbCKcAl/Bli+bURa/KYSF4S2O+
	P27AOf/JRt/0Dh+qHVFzXf0+L6dxEsL5uprqEHf5afW10F975ZnZeRAFkbC/eCZiUGUfaKhQSQ49e
	g9eZh3iuZYliFKEV8+TJF+IbBI92SxMGLsPI79SPmERE8fMKmNi3PsXuCMLej7XJM5l2kNYPWjl24
	b43H6tqOHNFngKS8DNbcQ75Q8U1TdPwzF+Lh8Q4JrkrwpGpuJaQvHXeMc3TU21yOgtI/5dPplXk6T
	5wqixo0IqimooDNEjRaXTib1/haFYf+YgABjxgXfqDxsLqG9LNuVgLu8pUmL+6Ljc8JeC1YWpa7cg
	EwP6jlEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdXeM-00000000rHu-1Toh;
	Mon, 12 Aug 2024 16:12:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdXdm-00000000rBW-2bHm;
	Mon, 12 Aug 2024 16:11:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=4LGlDYfh9hnYMFH9HallVbetIIWElNY/SAddpwGbcKE=; b=IUvmIPgatzGlTKv9a665xQ2qsq
	VeU+otO7aWsBGMCs5G5y8qEjy21DONgZo5DlHPvvk7DsHjRerK/0cgW4QB2GvSdIexQ3GXmzD9McT
	3KsGCx4s9fU7Qh1i4RuBoVyoQB3VjoUGv5OAFN997CLEgRLj3ampgzQtGhojSk+biVA+TiFyOkCzR
	47+dHxauM6OpmQep5U09vFrltLd6n+LhEe35NYVclQksSBSs2Pzzug4bOFmM3PLzw5KA1/iRHp/Hg
	hNfgSG0L21Kt+0MGmRoSbwOVLJPkKpfzBpFjs6KbgGEetnM2lmsEZsKTE9gi69y25Z8u0iolmtbt/
	ItHXNTTg==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdXdj-00000007bZF-28Ub;
	Mon, 12 Aug 2024 16:11:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 92963611B5;
	Mon, 12 Aug 2024 16:11:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 004B2C32782;
	Mon, 12 Aug 2024 16:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723479080;
	bh=4LGlDYfh9hnYMFH9HallVbetIIWElNY/SAddpwGbcKE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YiOYfU1Ij/i1jdXyGc8m98/EA7WtwNA41DwzsHqDSmtiyyPFtOzgwusn/AaHBqVmc
	 8MLwIv5/W9AnfLXql3jEa5B0C2CIcmS12uUwsXjbX+9R4rS7v/rSJyvmHgSnLhwLXt
	 tB0lGpaETVDV2vYQDbzIhRJksBIL4klb1d6EgAvh7ZXFU0PDxGvtwyHKB2NBLC+N+C
	 HV7yoKzZPj/aVYBHdejEG+YayVBKOmT9lKioYyWHfqQ+Vts4gl0PVXSM15ii/5opJQ
	 xX04n6Bu6aFCof+MOrkTBS1peejbyaSfRce56Q0Jx0xL7A1eQKaX+a/x6o+WUPrcZh
	 gCOlGR5gTEsbA==
Date: Mon, 12 Aug 2024 17:11:14 +0100
From: Conor Dooley <conor@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: lee@kernel.org, jdelvare@suse.com, linux@roeck-us.net,
	dmitry.torokhov@gmail.com, pavel@ucw.cz, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, ukleinek@debian.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-hwmon@vger.kernel.org,
	linux-input@vger.kernel.org, linux-leds@vger.kernel.org
Subject: Re: [PATCH v4 1/7] dt-bindings: mfd: add binding for qnap,ts433-mcu
 devices
Message-ID: <20240812-unlisted-cussed-ffa50b07a82d@spud>
References: <20240810184743.277248-1-heiko@sntech.de>
 <20240810184743.277248-2-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20240810184743.277248-2-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_171123_760071_D05A1E51 
X-CRM114-Status: GOOD (  12.48  )
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
Content-Type: multipart/mixed; boundary="===============8322613103680340221=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8322613103680340221==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cHN7OHm8jMQ3S5kz"
Content-Disposition: inline


--cHN7OHm8jMQ3S5kz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Aug 10, 2024 at 08:47:37PM +0200, Heiko Stuebner wrote:
> These MCUs can be found in network attached storage devices made by QNAP.
> They are connected to a serial port of the host device and provide
> functionality like LEDs, power-control and temperature monitoring.
>=20
> LEDs, buttons, etc are all elements of the MCU firmware itself, so don't
> need devicetree input, though the fan gets its cooling settings from
> a fan-0 subnode.
>=20
> A binding for the LEDs for setting the linux-default-trigger may come
> later, once all the LEDs are understood and ATA controllers actually
> can address individual port-LEDs, but are really optional.
>=20
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

--cHN7OHm8jMQ3S5kz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZro0IgAKCRB4tDGHoIJi
0tg7AQCS2xWrPC2UUU1meYRX0JcteDszsR77WU6wV+xQhG4KEwEAlYF2R80DyuEq
tvLDLFquMfbB3h6dMgWWxA51/UKOdQY=
=E5pg
-----END PGP SIGNATURE-----

--cHN7OHm8jMQ3S5kz--


--===============8322613103680340221==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8322613103680340221==--

