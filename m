Return-Path: <SRS0=CIwj=GQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17733C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jan 2021 07:38:36 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AE84522C7B
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jan 2021 07:38:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AE84522C7B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v6wDWJpi8uXkcynPgywd931ZKhAdbSt4NAnzY2ELP44=; b=0ZEf5GzRF+IVAyNpna2bufKbA
	dF4fsEnS7lfmlpu8KbUgP7tY/3OUmTkO+earxbiufr8rv1EPip1vt9BATfPcJZ62EdWkeo1gcMNjw
	3VvC0/qr8aZd1EfefpyCI9aaADSfZkeIkGYcIYasBNKo8NsMf33CFAjAo5BYfr5OTjW/xgQDfOCOL
	FeusWje2VnlAAFsyFz0kU5Wzx+xATFnxyjxKJkmdQtvjCem+iyH1UAsYmXd5EDESDoD4mAfpqvO2n
	Hof/K6I3/omauZxVxj2Z42h2bBECIYlXREWf7A8qcZU/spgqfQFMKeBpLEpjklWyiK3gGySs23tsP
	83nzeyqGA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kzajg-0008S5-Qh; Wed, 13 Jan 2021 07:38:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kzajd-0008Qp-8X
 for linux-rockchip@lists.infradead.org; Wed, 13 Jan 2021 07:38:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1kzajX-00082I-Fx; Wed, 13 Jan 2021 08:38:23 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1kzajW-0003bK-Vh; Wed, 13 Jan 2021 08:38:22 +0100
Date: Wed, 13 Jan 2021 08:38:22 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Simon South <simon@simonsouth.net>
Subject: Re: [PATCH v3 5/7] pwm: rockchip: rockchip_pwm_probe(): Remove
 unneeded goto target
Message-ID: <20210113073822.37og4yhxiem2j7ju@pengutronix.de>
References: <cover.1608735481.git.simon@simonsouth.net>
 <0637b8ebea49b30e5e675385225d59d028077421.1608735481.git.simon@simonsouth.net>
MIME-Version: 1.0
In-Reply-To: <0637b8ebea49b30e5e675385225d59d028077421.1608735481.git.simon@simonsouth.net>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210113_023829_317871_D733F196 
X-CRM114-Status: GOOD (  11.62  )
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
Content-Type: multipart/mixed; boundary="===============8153653967499958894=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8153653967499958894==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eqwgwgugwdz66k4x"
Content-Disposition: inline


--eqwgwgugwdz66k4x
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 23, 2020 at 11:01:07AM -0500, Simon South wrote:
> Eliminate the remaining goto target in rockchip_pwm_probe() by moving the
> code that follows it to the point where it is invoked.
>=20
> The target no longer serves any purpose as the error-handling portions of
> this function no longer share any recovery steps.

If you adapt patch 4 as I suggested, this patch becomes obsolete.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--eqwgwgugwdz66k4x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl/+o2wACgkQwfwUeK3K
7An3aAf+OOubUjwdA7fnEnUfDg74Osw7XAolVEIywwpFfGeuGHMZ9ZSscB0iVPP/
do88ld0zbEGxK/htBRNVVIx1KHpyMC/jRpapR8Vl73whPSEl+YIpk8/3KYp1XvEJ
lzHIqp60HOoBzyVrn+z0plaHLlmf2AwfUCS424N5IjGP2GGCS0BGnGMy7oeTQStv
32LXd4dL4rfV1W5nNTUv/V0vYI/lwh+SOcZ4CKHy4282Kdm8KnRRnmQQhlNjbOrl
C3SvZHSjtZvV3PY2Z6E7wRxq+8x+7z2SmBuodlVgOiWLeRtkHFEWfI64QrD9b5Al
yedh0zhBbgvtFpVIumMbdhThEwki+A==
=i1nK
-----END PGP SIGNATURE-----

--eqwgwgugwdz66k4x--


--===============8153653967499958894==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8153653967499958894==--

