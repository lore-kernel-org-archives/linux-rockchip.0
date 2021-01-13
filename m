Return-Path: <SRS0=CIwj=GQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA9FC433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jan 2021 07:33:59 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4BD5323139
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jan 2021 07:33:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4BD5323139
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TvF2O/qyaXl6vVuAONvLhJVXYU6lUGGlmhZf/tD0XrA=; b=hRd54Dg8uKOP7es7DRFm+ZjOv
	xZx/R9h8gkmoNZRITd5sPIWGsyLMA7S9wwDtr0KIzPBMiqe0LNXuEU18dDEstu4JTImzuyt5azgW2
	H6SRYQgvNo1blxhTmb+kEG88U21E6PkN+q6uevDcPB1LbnWqe68hnMURJ4a0ju5oVlKLe1JJiHLCn
	6S67/CHW5JPI6CodvMNHf22n5oN/MmQtLDeIl7/n63qcU+5qaYJRH+0lChdiUUs5nl1X4x4h0Msp1
	ifeXFTrsEiypSZRm4tTz+y5hYdRGpqqC9T8YHVyrg7QN9AnoYX8XUrJe4dajCH1WrOpeLIjn9GCvr
	XnUKrzhEg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kzafE-0007Kp-41; Wed, 13 Jan 2021 07:33:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kzafA-0007Jk-EF
 for linux-rockchip@lists.infradead.org; Wed, 13 Jan 2021 07:33:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1kzaf4-0007Yo-BF; Wed, 13 Jan 2021 08:33:46 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1kzaf3-0003MI-RH; Wed, 13 Jan 2021 08:33:45 +0100
Date: Wed, 13 Jan 2021 08:33:45 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Simon South <simon@simonsouth.net>
Subject: Re: [PATCH v3 3/7] pwm: rockchip: Replace "bus clk" with "PWM clk"
Message-ID: <20210113073345.hsd57lowyiev5wmf@pengutronix.de>
References: <cover.1608735481.git.simon@simonsouth.net>
 <1c2f85dafab03d6f5cdbcac37e7288de8f90e6d8.1608735481.git.simon@simonsouth.net>
MIME-Version: 1.0
In-Reply-To: <1c2f85dafab03d6f5cdbcac37e7288de8f90e6d8.1608735481.git.simon@simonsouth.net>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210113_023352_492314_83455C50 
X-CRM114-Status: GOOD (  12.43  )
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
Content-Type: multipart/mixed; boundary="===============0090943047691998034=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0090943047691998034==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zn4wy2rshgfchd2i"
Content-Disposition: inline


--zn4wy2rshgfchd2i
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Simon,

On Wed, Dec 23, 2020 at 11:01:05AM -0500, Simon South wrote:
> Clarify the Rockchip PWM driver's error messages by referring to the clock
> that operates a PWM device as the "PWM" clock, rather than the "bus"
> clock (which is especially misleading in the case of devices that also use
> a separate clock for bus access).

Maybe mention that this is the clock that is named "pwm" in the
devicetree and so matches to that, too.

Other than that the patch is fine.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--zn4wy2rshgfchd2i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl/+olcACgkQwfwUeK3K
7Ak2Rwf+NtPPnqewogx4sLf5pmYt5Foi1nz7pQI1IiF94evAfRu0Xv63rm1D1bZl
TjyYzJe2ZS1Yqnrs62x9pPuCYSzrQZ4hZZyXkaIbfqwreSVFKt364ufe5DwY1caW
ssGSzZ2sAtKYDB0J7uKiCm+GlLUzRJw2Vmx5Q1ItkEOzGtJjoW3VRjzWLK3t4w0M
cF9cNr0ybg48TJWlvmyslD2EuBq3h5ykRH5PwhUM0EevnuYUnSoc0mtxjs2ByAd5
7gj9m8Zw7qBKzi8ReljxIjQogLrRALKQsHax8Ub9pBfVifUiHn6p7WF3BB7AMFQ6
vey5vWoRJetCI4JsMrUUXetEaEtjQg==
=EBfT
-----END PGP SIGNATURE-----

--zn4wy2rshgfchd2i--


--===============0090943047691998034==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0090943047691998034==--

