Return-Path: <SRS0=74Sm=FZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3F29C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Dec 2020 08:22:32 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 06EF922C9C
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Dec 2020 08:22:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 06EF922C9C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=38O3M0Nui8wZNXg1hvnrCZl7em4A0Joz9yG75fSTjzI=; b=punq0gBtdNfddg6Ar909L/e+p
	P0iqe8FkXTFRfz0pmBpXeQUTvJSk6CZNhrsJ0DB7D/aHmchTiyGZImQMcj5/ETvoBxATZIDQH+rPO
	VLAZwi/7dNHvRotKayrKaXK2hK2xdun7Q0ClreIvVB8mXa8SG6wBUzGqqPf1HZUUQwzPandtkT1qO
	lTj+ag82ZlIBEIdnM1Ed8ANRvTMITiLFEqr1mfxhYxxuEWDr97IWLAmmyfk+xcTnaCi8KXliCz0Fz
	Cs56jdSGill9wptEH7ToWfcXf8COzBRNu6lPBfw0XjV/vYPI34DwgVOx4TN9qqtS5q8MuSiI3iqEu
	vVarNoqvw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1krGSV-0007Hm-Mi; Mon, 21 Dec 2020 08:22:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1krGSS-0007H3-J8
 for linux-rockchip@lists.infradead.org; Mon, 21 Dec 2020 08:22:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1krGSI-0002hv-PF; Mon, 21 Dec 2020 09:22:10 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1krGSH-0001bX-6N; Mon, 21 Dec 2020 09:22:09 +0100
Date: Mon, 21 Dec 2020 09:22:09 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Simon South <simon@simonsouth.net>
Subject: Re: [PATCH v2 1/3] pwm: rockchip: Enable APB clock during register
 access while probing
Message-ID: <20201221082209.z4hkrcym4o7xhmmb@pengutronix.de>
References: <cover.1608407584.git.simon@simonsouth.net>
 <49ceda3def13f6186073745e99d7315c974bfa81.1608407584.git.simon@simonsouth.net>
MIME-Version: 1.0
In-Reply-To: <49ceda3def13f6186073745e99d7315c974bfa81.1608407584.git.simon@simonsouth.net>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201221_032220_643160_BA8D36E1 
X-CRM114-Status: GOOD (  16.00  )
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
Content-Type: multipart/mixed; boundary="===============2738210193940360394=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2738210193940360394==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p5sod6t4ua4wtkzs"
Content-Disposition: inline


--p5sod6t4ua4wtkzs
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Sat, Dec 19, 2020 at 03:44:08PM -0500, Simon South wrote:
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

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--p5sod6t4ua4wtkzs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl/gWy0ACgkQwfwUeK3K
7AkYKwf+PiKyvaFCQDuDh1Xr+SRJX5lmDg7ayx7+Oo2bCsDzFd/8w00TQ+2Uiww4
cKfiIuaoajQHEgbhOF2CTWO+4tqLvwR3ewDYn/O7r30oiRUqVpvzBm2bId8gudc+
g3L9JkXN8A2xcE1H0mozTS62Zt5TKD7LZmFzx6+dQlH50GUx/cLZ3pX+EAj4b7Mg
3NJKt989STjjmKNqtGga+FwFEF3xFp3tjfEDuWM+pkbd+MktElSZwW5+utmj7yKv
juSTid9duOy5pmjRjpsD3E4EAeePCVPXdYyptEXv6NgZRX34RGe4PCqKP8AhXqn1
lGHidsy2l4MjVX+guwwxp7q7Wh9pYA==
=S3YF
-----END PGP SIGNATURE-----

--p5sod6t4ua4wtkzs--


--===============2738210193940360394==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2738210193940360394==--

