Return-Path: <SRS0=CIwj=GQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB62BC433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jan 2021 07:24:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DDA03221E2
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jan 2021 07:24:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DDA03221E2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pUd4P8FKWdxAEEIFhltrGE29duw+lVcfUcQmTprhgmY=; b=Mvo4QFPbMHJUT02pE3VnRFU7O
	ag7ol0RShPQP96WSmoWNsOMbWPRHV2cC4mu2IAS8B7283nAmvE2qbYmmrJsygfb9Msf35+HD3XLAX
	WdPeUIT0sLFfufHfevgdj/S0QD3SG8T0xayTwPA1qJBq8+OvO8jmQlnP3HuKr9AkcrY8Tw1fkCXXA
	UYm9zlUOC4lPVgRyaJyy1GbxMykBQEvwtpsfxLV1G088QAmEsNOGLl5OFdWsS6wIp67OOXqLah+Jk
	Bj/rxDITPW0WzAnul/TQfdA11aYXjJLvONYIWx8QJ6xmL0FAzS/3CFt+ewfmLXxwdUeCBwjcoiDsT
	OTYfghgLA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kzaVp-0005ow-87; Wed, 13 Jan 2021 07:24:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kzaVk-0005nm-R0
 for linux-rockchip@lists.infradead.org; Wed, 13 Jan 2021 07:24:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1kzaVc-0006Yj-QS; Wed, 13 Jan 2021 08:24:00 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1kzaVa-00033W-MR; Wed, 13 Jan 2021 08:23:58 +0100
Date: Wed, 13 Jan 2021 08:23:58 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Simon South <simon@simonsouth.net>
Subject: Re: [PATCH v3 1/7] pwm: rockchip: Enable APB clock during register
 access while probing
Message-ID: <20210113072358.7ozcznyjyhuh2mt4@pengutronix.de>
References: <cover.1608735481.git.simon@simonsouth.net>
 <49ceda3def13f6186073745e99d7315c974bfa81.1608735481.git.simon@simonsouth.net>
MIME-Version: 1.0
In-Reply-To: <49ceda3def13f6186073745e99d7315c974bfa81.1608735481.git.simon@simonsouth.net>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210113_022408_996047_83F651CF 
X-CRM114-Status: GOOD (  15.42  )
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
Content-Type: multipart/mixed; boundary="===============2476995161389882261=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2476995161389882261==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bm5todtkkso6pnn6"
Content-Disposition: inline


--bm5todtkkso6pnn6
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Simon,

On Wed, Dec 23, 2020 at 11:01:03AM -0500, Simon South wrote:
> Commit 457f74abbed0 ("pwm: rockchip: Keep enabled PWMs running while
> probing") modified rockchip_pwm_probe() to access a PWM device's registers
> directly to check whether or not the device is running, but did not also
> change the function to first enable the device's APB clock to be certain
> the device can respond. This risks hanging the kernel on systems with PWM
> devices that use more than a single clock.
>=20
> Avoid this by enabling the device's APB clock before accessing its
> registers (and disabling the clock when register access is complete).
>=20
> Fixes: 457f74abbed0 ("pwm: rockchip: Keep enabled PWMs running while prob=
ing")
> Reported-by: Thierry Reding <thierry.reding@gmail.com>
> Suggested-by: Trent Piepho <tpiepho@gmail.com>
> Signed-off-by: Simon South <simon@simonsouth.net>

Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Thanks
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--bm5todtkkso6pnn6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl/+oAsACgkQwfwUeK3K
7AmGCwf+Kf7kFu7rEDsPuXQ0t/Mv+Ml4/sd2e7dUbGs8vnSZ8y8YpNxUAHnPpiF0
4ZtrSpCim5ZOZ93c2H3IUoMrqN8XBx6TIqYfffpmp6Zi8pibJerrr8mg2kxM7mMb
SnX6uIj/WZds6Y2goMdTjuYuj5Yw2nNozNFttMu/iO3n+f5YAdcqXZ0w9sVSdrgK
6jOLukSKnJRIE2i5D/fL1zIn1yY2LgotzmxW6Q5TUtFsLXryr94XAjaQ95HsmBGJ
dMiGwqRqyA6OIF5fXBa4EZTubxJ2VEGVMT8HKTTEk7PxVbZYzv3PbbBjzsDTodQy
u9BQbOl+c7/tcSbXwq702pEFlSDAmA==
=YfRY
-----END PGP SIGNATURE-----

--bm5todtkkso6pnn6--


--===============2476995161389882261==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2476995161389882261==--

