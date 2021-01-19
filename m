Return-Path: <SRS0=wbav=GW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F71C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 19:23:22 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6D4C6216FD
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 19:23:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6D4C6216FD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K3ARRgJelCJe5BwD+dha+IejvApc2puUVKv970pzLwk=; b=rJCHjGTHbq/wXa07J677tEXFr
	iFs1YDHRfqmKgHglzFB+X25A7KU3PtIPiYb4/Wy4VNem5zSgZHycAmtNAFOKwrDU1nqdnFUNx0wur
	osQykF90c79B1iVMsezcB051jMKYr8myDtYGKSoTvW2PR6NZ1RZg8lEqgyYPGnjZMzbs9oVj5ONlQ
	7IGhsKZrH3N4MoRRcUzgE41HQeRiAXgqKTy+Pj1loFbRwmQtcNlS8GDuK19eM85dtnumPL8o2zMrV
	rk8hzy7nXt6IQplX7BFCiXR4X3o+2s1Hos7lahEV35Na2hpg3LUcEu/jfudOUVEvAjENnzNIR5Uqs
	iEx43Fntg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1way-0003Rh-AV; Tue, 19 Jan 2021 19:23:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1wau-0003Qp-Vf
 for linux-rockchip@lists.infradead.org; Tue, 19 Jan 2021 19:23:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1l1waj-0005sk-BM; Tue, 19 Jan 2021 20:23:01 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1l1wae-00083D-0W; Tue, 19 Jan 2021 20:22:56 +0100
Date: Tue, 19 Jan 2021 20:22:55 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Simon South <simon@simonsouth.net>
Subject: Re: [PATCH v4 5/5] pwm: rockchip: Enable clock before calling
 clk_get_rate()
Message-ID: <20210119192255.jdhh3l64yp5whzzq@pengutronix.de>
References: <cover.1610976129.git.simon@simonsouth.net>
 <4924f18fea9b028cab92ad4e79d957f5cb336b9c.1610976129.git.simon@simonsouth.net>
MIME-Version: 1.0
In-Reply-To: <4924f18fea9b028cab92ad4e79d957f5cb336b9c.1610976129.git.simon@simonsouth.net>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210119_142313_024368_B9FE7E46 
X-CRM114-Status: GOOD (  15.18  )
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
 lee.jones@linaro.org, steven.liu@rock-chips.com,
 linux-rockchip@lists.infradead.org, thierry.reding@gmail.com,
 david.wu@rock-chips.com, tpiepho@gmail.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============9114410017611131183=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============9114410017611131183==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x6xuh3b7pchr56sb"
Content-Disposition: inline


--x6xuh3b7pchr56sb
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Simon,

On Tue, Jan 19, 2021 at 11:12:09AM -0500, Simon South wrote:
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

I already reviewed this patch in v3 and gave my

Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

You make it a bit easier if you add the received tags for new
iterations.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--x6xuh3b7pchr56sb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmAHMYwACgkQwfwUeK3K
7Am37Af/XYu+pcSn5VpL3qw+4p3oSMKyA7rfVzksQ2nEe0rkaLgD35n84d1+uG8I
aQik3B8P0JxmxreM0J/CJ+D2R+kWWfbc5/SbzTCCXDYdz7vwhBbA5ry+9RahzkII
2DAWLTd6t1/+N6WF94o1dqVntZ/GlFbq0r+xluL9+aNnirGUnAi4gJajCyB79rI4
PKxBZpMga/uEGHmNAVI+QnL7RSgGvjNGj7Anv3HyFZrh5yxyeDHZHac1NbO8y1V4
saqiT/iHE4jrj2XUH276cbbQld/ZEXfZTpdrjNw/eFDmZlhpVqsLMUwG2+h4NDO6
kErBTD07e0d4kV2j6ZWpRYB8x3X/xw==
=+wY0
-----END PGP SIGNATURE-----

--x6xuh3b7pchr56sb--


--===============9114410017611131183==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============9114410017611131183==--

