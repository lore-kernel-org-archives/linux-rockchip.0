Return-Path: <SRS0=3L0h=CL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 854FBC433E2
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 07:16:12 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 54F58206F0
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 07:16:12 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Sy/BZkv1"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 54F58206F0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8ephfEpuDpWVEi2SdjGjzIKgDZkJRFGlp1ngoFQkfSQ=; b=Sy/BZkv1wDy82QS7RtNL6okWL
	+TWZfcT0Cchsv/T3Hexobx522yE92UbC+o56b0gZLXLvaMcO5mq/UK3+IVk3grdbELCIR47kyYxF9
	wZII3RkV6S7DOpnH96uHrvallr/BIy2Um9sK2mLCsOVOsORAdvww/NcBT6alnxR0c9j82Z6MSDEOl
	p5WF6j0G+i2BdiXZI7NUi9zWjVVWV0tzd4ZZ7TQmach3d62HNbRWHaYi6c4nw9fh8jjt1HYlvjSAL
	+UM2dF4JrFk8nEM95qnvgzx/5dWZWX4kzSFF+kVpTp0bT+yhurIfawcuPtRxKF4t4wEzVe7xLxd/C
	NgUdeSUIQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kDN05-0007lq-IA; Wed, 02 Sep 2020 07:16:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDN00-0007jB-Qk
 for linux-rockchip@lists.infradead.org; Wed, 02 Sep 2020 07:16:06 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1kDMzo-0004HT-9F; Wed, 02 Sep 2020 09:15:52 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1kDMzn-00086v-LA; Wed, 02 Sep 2020 09:15:51 +0200
Date: Wed, 2 Sep 2020 09:15:51 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 6/6] pwm: sun4i: Simplify with dev_err_probe()
Message-ID: <20200902071551.vvxohzcymplhiapx@pengutronix.de>
References: <20200826144747.9436-1-krzk@kernel.org>
 <20200826144747.9436-6-krzk@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200826144747.9436-6-krzk@kernel.org>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200902_031604_904038_A98D4259 
X-CRM114-Status: GOOD (  13.74  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Paul Cercueil <paul@crapouillou.net>,
 Thierry Reding <thierry.reding@gmail.com>, linux-riscv@lists.infradead.org,
 Lee Jones <lee.jones@linaro.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, bcm-kernel-feedback-list@broadcom.com,
 Orson Zhai <orsonzhai@gmail.com>, linux-pwm@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, Maxime Ripard <mripard@kernel.org>,
 linux-rpi-kernel@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Baolin Wang <baolin.wang7@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: multipart/mixed; boundary="===============7413308016854314237=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7413308016854314237==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jfczrdov2v7v4mp2"
Content-Disposition: inline


--jfczrdov2v7v4mp2
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 26, 2020 at 04:47:47PM +0200, Krzysztof Kozlowski wrote:
> Common pattern of handling deferred probe can be simplified with
> dev_err_probe().  Less code and also it prints the error value.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Thanks
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--jfczrdov2v7v4mp2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl9PRqQACgkQwfwUeK3K
7AlvXwf+IN42e5ZLa5OHoBGAshX6T/xm5Fc6M+qdSKPH7B5ukJJpmx+H6RQtILHj
pLkF3k0th9q+k1VabVbHugjyowNxFy2JlSZq0wxYSQu6ucVo3foFzjiF27KYtY+U
SawqHvSds0HXHl5O1/VVM3xKnLUXQNUFeS6cp7+3TjQLYOyQcgIQrci0ra98NnZ5
fNCP9RKh1zFlOkQfHQIRHXdf4cvMKGNo1gwgs8EzKVbLLmsqXlRY7GWCCZBI3cYT
gdu1ZcOK5nue2E6lvqpa0D0lcwz0ON/lqf0Eih6RIEhzTLN847qNAB+jS8vFhPfi
21FO0wijzj3Ysmp5CXqo9UW4/pwrAA==
=6Weq
-----END PGP SIGNATURE-----

--jfczrdov2v7v4mp2--


--===============7413308016854314237==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7413308016854314237==--

