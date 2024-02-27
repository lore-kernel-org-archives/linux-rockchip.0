Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED906C54798
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 20:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1DxOW1EYYECwalLgno6LkPnK96R+66XPM48fwcHh/r0=; b=mubuI5qQkC+3vngj5MMFgf8h6d
	prRicLlTOU5FbR5L1ql2aZ22ZYRll3exU9GeXKOp6IRJxXt8pjxJbhgYJSIDWBd5SaUsGLA9KyZNg
	+YnNnLpbG9AmZfZkMq2zCJ/eyzd6PBMMWqoPEz8llyYsqHT+k7vLpVi1VFfSB0ggitBrr4mfI97JZ
	cgyv68jXPcykPHzgYQe3iV58Tq4FePfVq/L3M3nAAXAApy6E55ObzM3D17VkRAUdcnFzni5iQ0Kb3
	TMOGhY/aHzPIbgmEVnfzK50hJgAwHNfeyS3LdJY7GwIxpwp5P8vWPqkBnqbJluU9D+gXcFV4A+CYT
	ThnmKtsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf4Wp-00000006peC-3TUG;
	Tue, 27 Feb 2024 20:58:19 +0000
Received: from master.debian.org ([2001:41b8:202:deb:216:36ff:fe40:4001])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf4Wn-00000006pdF-0a5f;
	Tue, 27 Feb 2024 20:58:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=In-Reply-To:Content-Type:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description;
	bh=wEU5rVkfjleE/mFxvwrw/5PEDyfdy/zwTS4aBk45aFI=; b=ezUif7nr3ajA//b4LThr+2xHYi
	Ll2YWY47UV7SlGhWOZ4+bClZ41lATprU5RQa6JEUvzgFnCxKhM7hlRZ4lYfpdabtXxWL1VTeoQEjm
	JSErYkLm1H5KCeYfxaKX3rKNJNvhj9J6YNK4l2jM8enEYQpJVXhPDkFZnXovoa94M5JuiMMBGCtQj
	sLsdvxDb87d5+nkXoxkiI4Z8a6Kyl2E03tVWVY0dMDTpCD0oTC6FaendnFbzfNJ5QLbdEjfYtCjBV
	XBL2BI0QkgIoIxnIsIMxpbL0zLDB8/49F/VfpV6dcpcOCBcV1eNgd2Aat2hThv2o02JiPxWUGi1Dc
	rJ1pYTKw==;
Received: from ukleinek by master.debian.org with local (Exim 4.94.2)
	(envelope-from <ukleinek@master.debian.org>)
	id 1rf4Wf-0069v5-SW; Tue, 27 Feb 2024 20:58:09 +0000
Date: Tue, 27 Feb 2024 21:58:05 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@debian.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add missing interrupt-names
 for rk356x vdpu
Message-ID: <mj2tg5kmiljp4x46ad7esbu54lvrzw44xghbxexumltrybib3x@p3nnbjf5bslj>
References: <20240227173526.710056-1-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20240227173526.710056-1-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_125817_211876_E0827108 
X-CRM114-Status: GOOD (  11.23  )
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
Content-Type: multipart/mixed; boundary="===============0735334215438346273=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0735334215438346273==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6rmsipfrgvitafoe"
Content-Disposition: inline


--6rmsipfrgvitafoe
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 27, 2024 at 06:35:25PM +0100, Heiko Stuebner wrote:
> The video-codec@fdea0400 was missing the interrupt-names property that is
> part of the binding. Add it.
>=20
> Fixes: 944be6fba401 ("arm64: dts: rockchip: Add VPU support for RK3568/RK=
3566")
> Cc: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

This fixes one of the two warnings I get for a newly created dts using
rk356x.dtsi that doesn't mention &vpu at all.

Acked-by: Uwe Kleine-K=F6nig <ukleinek@debian.org>

Thanks
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--6rmsipfrgvitafoe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmXeTNkACgkQj4D7WH0S
/k4k/Af+PGT9y4lSo0hTaAMdIoo72VPL2Fs9EAVP1ip8XDW9LYkwBYO0QoGa7A41
z93iKaX13HDE0ra37n+ItbrLvAgqbUPd1psDez/UWMv0FeAbZbOfaFQkZBIXQFsy
FnrIPwlpRFKdWts7wvuuldDSAYuUH6bgA/6g4EDOufpioZN6D3JS6KBf3BsSfqym
F9dQLoSnYq6i39hTJusrJCYVrjK70UYoQRyU00qRh4vMbGIa5s8LtqxyzDbT81a5
liJHU6HCXrNEYgFfn0Wl0pLlvcXJHze2XbOxc+JQMij99NrY3szrRfW+QtyyL68R
vgaZ2Sh0GK0UFMBTJJM9ZTvX5IgJ+g==
=kU4u
-----END PGP SIGNATURE-----

--6rmsipfrgvitafoe--


--===============0735334215438346273==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0735334215438346273==--

