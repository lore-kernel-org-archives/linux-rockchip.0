Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BCB0C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 16:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ne/oqnOYZQlNzPsQU80KhVZuCxu8PYRKwG5eTcxYOZI=; b=T1xc6E9zTuHz1e5rUDaZe+t9pL
	mS5XDMtroZSeJssaATZx+OWMfu9XsdY5LxRTmBwY6UhAL3o1OnZHkgTvOeIlVRbiKFtcZIJ1CLmj7
	djrnIMu1espGq/8Rw2+H80TBfSsptGypPR4jQQR7F6ox+nuATSJeHM8bPO9a3pMq7IqrOQ5wPMXu4
	xrSUN4YDeRwu1/hw83CuSqDn4T7yb+DjuhNDFS+q8jmGqySqvHOMlXtxDChTJnlL8Hhj2FFaMooXe
	bWUZDv4ikb/PeOs9mHmE0otv05PpNclrNTtxcULSLXqOAvDqZWxUeJ8TSAGvxCrRMi4VfkZQfU6qA
	JNYxkrrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcTx2-00E3Mk-1a;
	Wed, 15 Mar 2023 16:26:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcTwz-00E3LB-0t
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Mar 2023 16:26:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pcTwp-0005Mq-1t; Wed, 15 Mar 2023 17:25:55 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pcTwl-004LiI-Ql; Wed, 15 Mar 2023 17:25:51 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pcTwk-005933-TO; Wed, 15 Mar 2023 17:25:50 +0100
Date: Wed, 15 Mar 2023 17:25:47 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
	kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 120/173] ASoC: rockchip: rockchip_i2s_tdm: Convert to
 platform remove callback returning void
Message-ID: <20230315162547.5ccghwu5kblefcao@pengutronix.de>
References: <20230315150745.67084-1-u.kleine-koenig@pengutronix.de>
 <20230315150745.67084-121-u.kleine-koenig@pengutronix.de>
 <3717794.rJMogTuNcH@archbook>
MIME-Version: 1.0
In-Reply-To: <3717794.rJMogTuNcH@archbook>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_092605_338470_0559BBAF 
X-CRM114-Status: GOOD (  24.36  )
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
Content-Type: multipart/mixed; boundary="===============3124207722511271053=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3124207722511271053==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bfjtlbmpqubgku6t"
Content-Disposition: inline


--bfjtlbmpqubgku6t
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 15, 2023 at 05:00:49PM +0100, Nicolas Frattaroli wrote:
> On Mittwoch, 15. M=E4rz 2023 16:06:52 CET Uwe Kleine-K=F6nig wrote:
> > The .remove() callback for a platform driver returns an int which makes
> > many driver authors wrongly assume it's possible to do error handling by
> > returning an error code. However the value returned is (mostly) ignored
> > and this typically results in resource leaks. To improve here there is a
> > quest to make the remove callback return void. In the first step of this
> > quest all drivers are converted to .remove_new() which already returns
> > void.
> >=20
> > Trivially convert this driver from always returning zero in the remove
> > callback to the void returning variant.
> >=20
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
>=20
> Hello,
>=20
> this looks fine, but the commit prefix should either be
> "ASoC: rockchip: i2s_tdm:" or "ASoC: rockchip: i2s-tdm" to align
> with previous commits. We've already broken convention once before,
> hence the two names, and I'd rather not have this convention broken
> again.

I fixed that in my tree. I assume Mark will skip this patch when
applying and when I come around cleaning up the fall-out I will resend
this one with the subject fixed. (I picked the variant with _ now as
this seems to be the more recent one.)

Thanks for the feedback
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--bfjtlbmpqubgku6t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmQR8YgACgkQwfwUeK3K
7AlK/Af+NWFZfi8QLk2cKG4X0JaQKjI1gcIExYzIW+fzuj91q5eOaqZn8o7Cwr0w
iCShZRaieuefb5do5+AhU5OFC1kG8mL8gXoq9vOp0yFhgdFssknREzIFuAqQQ+fs
ICwyeJ6M0VNd12hvpYf9uWR6yk/E53ktvYi4ybhW1dflOE108bMsjmZ3NIDpouML
vULhI+Lh1ik18b3tpBUzb2umC0hLo41X7GuAtYPv3U+quntBkNuTGyJCe6VgFoR2
h/m8YZXTBf311MDJ6MmGQW430q47F6C/DBBYBO+5vom0iVU0lmMS4Khs77kn4PXp
kHuDcRfRLfyIT8CFSSLlogvxz+NTMg==
=G6QF
-----END PGP SIGNATURE-----

--bfjtlbmpqubgku6t--


--===============3124207722511271053==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3124207722511271053==--

