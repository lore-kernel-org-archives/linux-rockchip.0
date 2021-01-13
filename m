Return-Path: <SRS0=CIwj=GQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF4FEC433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jan 2021 07:54:28 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6148223117
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jan 2021 07:54:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6148223117
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0xvqfIJCrnoz/3LeWD4rxzko/7ujRjrtc/C3kiubZx8=; b=OSQ+ss/JLT5llc0IvE8wVjpzM
	YAiRRIjE9irmnjWMnoRDB31NAU7BaPpF026SgiJSYON+Be9VWH80Y2wQK07Cul9yrRjJ9GYlnyDC1
	bdr67w/JInmXtvhyXcmstx3WYx5O7AkArTTHCk5JGzecqUxn6cEg7cdm8gXAfY6NUaKbqGcIyyNlD
	jaUr7M3HL7M0xrc6xyV47LDS8LqmEVB+H7yjLag0PRWeGJiplD0VNpEwhjn26hzqH6wmpsQQ7IoA6
	8EbSg+ZFEjlfFiHG/GfOoVIUgxlQBbJC5qlbsaVdf8Vofuvg7gSmQYq3yQgsw3BUbK7psMZ+lW8lV
	NnBJQ4k+w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kzaz3-0002on-6x; Wed, 13 Jan 2021 07:54:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kzayz-0002nK-4a
 for linux-rockchip@lists.infradead.org; Wed, 13 Jan 2021 07:54:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1kzayr-00016f-Cu; Wed, 13 Jan 2021 08:54:13 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1kzayp-000449-Rl; Wed, 13 Jan 2021 08:54:11 +0100
Date: Wed, 13 Jan 2021 08:54:11 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Simon South <simon@simonsouth.net>
Subject: Re: [PATCH v3 7/7] pwm: rockchip: Enable clock before calling
 clk_get_rate()
Message-ID: <20210113075411.dhkjzdrnmvcmfag6@pengutronix.de>
References: <cover.1608735481.git.simon@simonsouth.net>
 <58dc19f81bbf531d2921c6fb0018a5cc37dc9794.1608735481.git.simon@simonsouth.net>
MIME-Version: 1.0
In-Reply-To: <58dc19f81bbf531d2921c6fb0018a5cc37dc9794.1608735481.git.simon@simonsouth.net>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210113_025421_236760_D5121894 
X-CRM114-Status: GOOD (  14.20  )
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
Cc: linux-pwm@vger.kernel.org, heiko@sntech.de, bbrezillon@kernel.org,
 lee.jones@linaro.org, linux-rockchip@lists.infradead.org,
 thierry.reding@gmail.com, tpiepho@gmail.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2779471079501193929=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2779471079501193929==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g6256zhcfbdw2nec"
Content-Disposition: inline


--g6256zhcfbdw2nec
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 23, 2020 at 11:01:09AM -0500, Simon South wrote:
> The documentation for clk_get_rate() in include/linux/clk.h states the
> function's result is valid only for a clock source that has been
> enabled. However, the Rockchip PWM driver uses this function in two places
> to query the rate of a clock without first ensuring it is enabled.
>=20
> Fix this by modifying rockchip_pwm_get_state() and rockchip_pwm_apply() so
> they enable a device's PWM clock before querying its rate (in the latter
> case, the querying is actually done in rockchip_pwm_config()) and disable
> the clock again before returning.
>=20
> Reported-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> Signed-off-by: Simon South <simon@simonsouth.net>

Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--g6256zhcfbdw2nec
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl/+pyAACgkQwfwUeK3K
7AkQyAf/cnf8VmK43pfs9BMAPKHF1PXLAW1yGSVfYuNJXYg5++1vGuZ5COOV5/uH
Z+VtHlz1G7uZKrrmzkoLeADfZ79p1xPSj3M7U2W5HxqmsUNVbkAg+0xebpw1oPPW
+DpvP+FvbfbsOnnsML+V5wUP6RxJiCde+2Q/wHBnKSj099UOLMX3pynrk4d0dLkv
XkEmP9Pf3rBgJJsYTQJzjCmuB8gwFCYQKOFzKe9JnzLnBTRmUAmEYzWQJSMtXR1A
Yb/luHZHsZ/7/HxljSBV/GWUQascY3qrSDi9FAruq0DaXdMPI8CnOh/eKa4Xat4o
iQ9zj67xUI8yXvjv6PMCVxXVgOv9+A==
=hgG5
-----END PGP SIGNATURE-----

--g6256zhcfbdw2nec--


--===============2779471079501193929==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2779471079501193929==--

