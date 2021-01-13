Return-Path: <SRS0=CIwj=GQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28B54C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jan 2021 07:31:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AC13D23139
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jan 2021 07:31:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AC13D23139
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=czUs0tREqh0kqwFPwGTwbb4BWwuv2d0GQrH5YaPKl/M=; b=mH8OPFOZmrvFvFqeNVumb1okI
	GWZuKWnoo41a7ZhWzK1mX3ANNu3qAyc46IfTvIT3hmSYbb3Z6QrLlHDavyUUkCeaTUA+FlKiGn9W+
	EoafOsekL9zXtr+7lboqJvKjuCWQABfkFycYSqfK9myxKaCgtDBCKLVy5cC9ip7Tyw5aP3uOtZKS6
	AHA0MGY+AOP4nxwst1RYmlDi7zF2S3FqMQPNbdfa1+ISXv77pwaKyGR4D1Ua/xJlKU9/gR0wuVJ+M
	PDQu6qyIfoM3gQZdpXKZ21C0cp8CKXLWWkVZJYSQDgB6pxTudCrVqQ2VmCxCS+8/TI510IH40Q+DE
	lnX4l8FgA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kzad1-0006wH-5l; Wed, 13 Jan 2021 07:31:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kzacv-0006uM-Sq
 for linux-rockchip@lists.infradead.org; Wed, 13 Jan 2021 07:31:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1kzacp-0007SI-0e; Wed, 13 Jan 2021 08:31:27 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1kzacn-0003Kr-RX; Wed, 13 Jan 2021 08:31:25 +0100
Date: Wed, 13 Jan 2021 08:31:25 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Simon South <simon@simonsouth.net>
Subject: Re: [PATCH v3 2/7] pwm: rockchip: rockchip_pwm_probe(): Remove
 superfluous clk_unprepare()
Message-ID: <20210113073125.tmrdy4g3eanwib5y@pengutronix.de>
References: <cover.1608735481.git.simon@simonsouth.net>
 <fe86b3ad145c5df3b16b09a83769f078bb4a9d1f.1608735481.git.simon@simonsouth.net>
MIME-Version: 1.0
In-Reply-To: <fe86b3ad145c5df3b16b09a83769f078bb4a9d1f.1608735481.git.simon@simonsouth.net>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210113_023133_937952_FA4400C6 
X-CRM114-Status: GOOD (  12.28  )
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
Content-Type: multipart/mixed; boundary="===============8935604327591296048=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8935604327591296048==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u2aypliebvi7mkea"
Content-Disposition: inline


--u2aypliebvi7mkea
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Simon,

On Wed, Dec 23, 2020 at 11:01:04AM -0500, Simon South wrote:
> If rockchip_pwm_probe() fails to register a PWM device it calls
> clk_unprepare() for the device's PWM clock, without having first disabled
> the clock and before jumping to an error handler that also unprepares
> it.

The "without having first disabled the clock" part is wrong without the
first patch. I suggest to swap the order of the first and second patch.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--u2aypliebvi7mkea
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl/+ocoACgkQwfwUeK3K
7AlmJgf9EyraVtNyxfarVEjBYdpjtMKzSO85S95LjJ1WXcAISuykepRbirLEbl4o
2qo7WVi60Dfl4KJli37Ho/kYvifaSN8rxUO9QWxDKCvb3ikDGC+gvtkutWN4oyaI
Ecp65uEQiWPPIEk/aevts6bqfEaB2XfsaVRtx8o9vrmSEKC2dc56BYKGGkjH7QzN
/+bS5GHrYIgP8dR6b9MpNL5FntcWnIWOjRZmPdd6YBtlz3wduEUeSLnR0ilMLtcJ
gxWoolQL+c9dhs2yxda5nSrdKZeRXyGndh41fsmNJU3/T43Xvv0EJzUAMneThRqw
7HVBwq/rbIbIgXfdHPSZI/vFruFQNQ==
=18uE
-----END PGP SIGNATURE-----

--u2aypliebvi7mkea--


--===============8935604327591296048==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8935604327591296048==--

