Return-Path: <SRS0=74Sm=FZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BC58C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Dec 2020 08:51:04 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9D2DC22C7E
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Dec 2020 08:51:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9D2DC22C7E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dcAHgCs/0U+7wm3w96aSNPU74UFnHpBhONoZQcBe3jo=; b=ngIB3bK+uA00T4r2Gy3vvJ+7/
	xwxRLJ0ZNYx5z0xZZtr0fCp0BsgXaGTdGo4lMgGe3bspnsaXkfczs8j74fNVW6PvetQenEFDPf4yR
	d3QWLBvLcXoFiHxZQcp9Zv1SQ9jUtAjF1xkBzLMqPX7SW7asOPEhv178/VytTF8PX86BxbhPPRw9n
	2xaMkqTNOqv6VzN7+42lIRjblyALmqOq/PwhJfNuDL3mv4Bd5H2T5kLyYz50bHcE5YCOiMKIe0SCP
	273lmee15jAAcEbaOoRqNNpbv5dII3Jhfnky49c+Dna1GxyucCA/HLVVhp1jCTGzTZsi4FB6gaE6X
	i3rv6GvjA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1krGu9-0002Y6-N6; Mon, 21 Dec 2020 08:50:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1krGu6-0002XV-CJ
 for linux-rockchip@lists.infradead.org; Mon, 21 Dec 2020 08:50:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1krGu0-0005Hf-8X; Mon, 21 Dec 2020 09:50:48 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1krGtz-0003F8-OQ; Mon, 21 Dec 2020 09:50:47 +0100
Date: Mon, 21 Dec 2020 09:50:47 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Simon South <simon@simonsouth.net>
Subject: Re: [PATCH v2 2/3] pwm: rockchip: Eliminate potential race condition
 when probing
Message-ID: <20201221085047.nyl7hacd4imp37qi@pengutronix.de>
References: <cover.1608407584.git.simon@simonsouth.net>
 <fcfb96fd2fd860ae3f08cb563c74eb864cdab41a.1608407584.git.simon@simonsouth.net>
MIME-Version: 1.0
In-Reply-To: <fcfb96fd2fd860ae3f08cb563c74eb864cdab41a.1608407584.git.simon@simonsouth.net>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201221_035054_464996_C0A78587 
X-CRM114-Status: GOOD (  20.95  )
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
 linux-rockchip@lists.infradead.org, thierry.reding@gmail.com,
 tpiepho@gmail.com, lee.jones@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2331532633469341615=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2331532633469341615==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="slyuushxrwegpfgo"
Content-Disposition: inline


--slyuushxrwegpfgo
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Sat, Dec 19, 2020 at 03:44:09PM -0500, Simon South wrote:
> Commit 48cf973cae33 ("pwm: rockchip: Avoid glitches on already running
> PWMs") introduced a potential race condition in rockchip_pwm_probe() as t=
he
> function could disable the clock of a PWM device after having registered =
it
> through a call to pwmchip_add().
>=20
> Eliminate this possibility by moving the code that disables the clock of a
> non-enabled PWM ahead of the code that registers the device.

OK, I think I understood the problem. The code in the probe function
looks as follows (simplified):

	pwmchip_add(...);

	if (pwm_is_not_running):
		clk_disable(pc->clk);

The intention is that if probe is called when the PWM is already running
it should not stop (which is good).

However calling pwmchip_add allows for consumers to modify the state and
the check after pwmchip_add then checks the modified state. The result
(if the race happens) is that either the clk is enabled once too much
(if the consumer enabled the PWM) or it disables the clk twice after
enabling only once (if the consumer stopped the running hardware).

So the effect is that either the clk isn't stopped even though it is
unused, or we might hit:

	if (WARN(core->enable_count =3D=3D 0, "%s already disabled\n", core->name))
		return;

in drivers/clk/clk.c, right?

I wonder if the commit log should be more detailed about this, after
reading it I thought the effect of the bug would be that the PWM stops
even though it should oscillate.

> Also refactor the code slightly to eliminate goto targets as the error
> handlers no longer share any recovery steps.

This however makes it hard to review the patch. Maybe this refactoring
can be split out?

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--slyuushxrwegpfgo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl/gYeQACgkQwfwUeK3K
7AlODQgAnTuzBU+rjJx3Vf0xh6TXx1jyo1prcV8hTn50SWpe60Ctv4S4QR8jFbtB
iId0DvGFXIdW0X4AiqVXYe9EXtiaj+Au8oMtbz7F36KPijdREE9Av6MMJbgeLPZr
w9bkyKeVGTQ1GtZRfxTFhBptwQ3ZfId5P8bVEJkfCnUo1wUjejTN2AdEwTXkqKxw
XuonauhbO0QSnfpb6Jvua0hHFZf6LIj+rJ6bjlbFiNfbZcA+sqPSWXpmanWgyt+S
ueaRg/TLARiKDU8sJEcVqSF9OlSOI2kUPSo+r8vjpq5T8a0Hh76LM5lvGjX7zr6F
6RV2feDI5M8xIdFD+iIqP8PqASWx4Q==
=g6CV
-----END PGP SIGNATURE-----

--slyuushxrwegpfgo--


--===============2331532633469341615==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2331532633469341615==--

