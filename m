Return-Path: <SRS0=j9H1=ET=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F213DC63697
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2020 09:36:06 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 73FE92145D
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2020 09:36:06 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Zmf4ml/P"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 73FE92145D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mQjuXiTqIfoG0XNE8vcm67tMHL0z/28SlBHy5NBfR0w=; b=Zmf4ml/P+fVlYoIzpoMcvXEO3
	zsW62UChe25GMPeoYovIMX0Na9pFi0nUCFv374wicR1W8o6MZLOX/krTaWOZbmXuJSe9xWVlKFbnE
	UQSy6ZlquW4WPnWU7Bb7f3o3plilEbi66wybjPQPAdTi6yBzwyQ1VB6oBOursIdk0T+cFEKTp0bXm
	KYAi/UXeSNOlevxCdeG91ElmO9X8hqyKJDWmV6LJcfSn+9jXPx7ggl7TXTjUcjCQOC64aVkDRAhQD
	qVMReXtCzBVxdJlbv3UCMdW3l7UbZ8Vm+jNu5q0Y455ZdCTNFL45dZD8yomRJWnzuFJFHOCpwLpAd
	LzvKKGeEg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kdVUr-0001rG-8B; Fri, 13 Nov 2020 09:35:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdVUn-0001q9-Me
 for linux-rockchip@lists.infradead.org; Fri, 13 Nov 2020 09:35:54 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1kdVUU-0003xq-0z; Fri, 13 Nov 2020 10:35:34 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1kdVUR-00027t-Jr; Fri, 13 Nov 2020 10:35:31 +0100
Date: Fri, 13 Nov 2020 10:35:29 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: Re: About devm_platform_ioremap_resource [Was: Re: [PATCH 01/32]
 pwm: sun4i: convert to devm_platform_ioremap_resource]
Message-ID: <20201113093529.xy63ncisl4wuesig@pengutronix.de>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
 <20201112161346.gp5nenuagx5wmwl2@pengutronix.de>
 <20201112190649.GA908613@ulmo>
 <20201112211429.kfyqzkmmchjo6pll@pengutronix.de>
 <20201113070343.lhcsbyvi5baxn3lq@pengutronix.de>
 <CAMpxmJXWqKwhNxgY7CKG6ZvszWLxrVo-JCy4riWoXN8y+bCLUA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMpxmJXWqKwhNxgY7CKG6ZvszWLxrVo-JCy4riWoXN8y+bCLUA@mail.gmail.com>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201113_043553_773667_CC11DAA8 
X-CRM114-Status: GOOD (  29.20  )
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 Yangtao Li <tiny.windzz@gmail.com>, Linus Walleij <linus.walleij@linaro.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>, linux-riscv@lists.infradead.org,
 Fabio Estevam <festevam@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>,
 shc_work@mail.ru, Kevin Hilman <khilman@baylibre.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, bcm-kernel-feedback-list@broadcom.com,
 dl-linux-imx <linux-imx@nxp.com>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 linux-pwm@vger.kernel.org, Ray Jui <rjui@broadcom.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Maxime Ripard <mripard@kernel.org>,
 Vladimir Zapolskiy <vz@mleia.com>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 linux-rpi-kernel@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-tegra@vger.kernel.org, linux-amlogic@lists.infradead.org,
 Lee Jones <lee.jones@linaro.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Sascha Hauer <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 claudiu.beznea@microchip.com, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: multipart/mixed; boundary="===============2080561289941076731=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2080561289941076731==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mk2yqeuqnozfxyjy"
Content-Disposition: inline


--mk2yqeuqnozfxyjy
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 13, 2020 at 10:12:46AM +0100, Bartosz Golaszewski wrote:
> On Fri, Nov 13, 2020 at 8:04 AM Uwe Kleine-K=F6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> >
> > Hello,
> >
> > [Added lkml and the people involved in commit 7945f929f1a7
> > ("drivers: provide devm_platform_ioremap_resource()") to Cc:. For the
> > new readers: This is about patches making use of
> > devm_platform_ioremap_resource() instead of open coding it. Full context
> > at https://lore.kernel.org/r/20201112190649.GA908613@ulmo]
> >
> > On Thu, Nov 12, 2020 at 10:14:29PM +0100, Uwe Kleine-K=F6nig wrote:
> > > On Thu, Nov 12, 2020 at 08:06:49PM +0100, Thierry Reding wrote:
> > > > I also think that it's overly narrow is scope, so you can't actually
> > > > "blindly" use this helper and I've seen quite a few cases where thi=
s was
> > > > unknowingly used for cases where it shouldn't have been used and th=
en
> > > > broke things (because some drivers must not do the request_mem_regi=
on()
> > > > for example).
> > >
> > > You have a link to such an accident?
> >
> > I got a hint in private here: https://lore.kernel.org/r/1555670144-2422=
0-1-git-send-email-aisheng.dong@nxp.com
> >
> > devm_platform_ioremap_resource() is platform_get_resource() +
> > devm_ioremap_resource() and here it was used to replace
> > platform_get_resource() + devm_ioremap().
> >
> > IMHO the unlucky thing in this situation is that devm_ioremap_resource()
> > and devm_ioremap() are different by more than just how they get the area
> > to remap. (i.e. devm_ioremap_resource() also does
> > devm_request_mem_region().)
> >
> > So the problem is not the added wrapper, but unclear semantics in the
> > functions it uses. In my eyes devm_ioremap() and
> > devm_platform_ioremap_resource() should better be named
> > devm_request_ioremap() and devm_platform_request_ioremap_resource()
> > respectively. Is it worth to rename these for clearity?
>=20
> But devm_ioremap() doesn't request the region. Did you mean
> devm_ioremap_resource() should become devm_request_ioremap_resource()?

Yes indeed. The last paragraph should be:

So the problem is not the added wrapper, but unclear semantics in the
functions it uses. In my eyes devm_ioremap_resource() and
devm_platform_ioremap_resource() should better be named
devm_request_ioremap_resource() and
devm_platform_request_ioremap_resource().

(Note that I created a patch series that implements this suggestion, but
you were not on Cc: as I extensively trimmed the recipents assuming most
people are not interested. See https://lore.kernel.org/r/20201113085327.125=
041-1-u.kleine-koenig@pengutronix.de)

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--mk2yqeuqnozfxyjy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl+uU14ACgkQwfwUeK3K
7AlU7QgAoZhawnyVQOW4iLHTE9/NQxowSwJSANvLVm53S0/6e+o77Hwa0KM5cta2
t3wyndXM7qElPrW4Bx2J23P/m4jGyoSN4Nb/f1dH8T/pmXy7tPOqqnO+slxOTs4Y
nNoFSVWSUiDCp5dgRH11sKOCp5P7hxZZ/05DhqyLYsdwUmaTzXoc28xnvmFjydxP
acgIc0UGMEYWNMUOSuF+rQros8xH2r2IQZDhG58L7fD2RAMCzj+UV72056PIqrmB
AVlebjEzBpYtxjhOaosAA7DY53/wHpwVTBzmFxZUXf8JlM8j8A9fVM7uwPE0xWZ+
kmF704/YfebQRL8T1P/z6v9SjuT/Vw==
=fO+P
-----END PGP SIGNATURE-----

--mk2yqeuqnozfxyjy--


--===============2080561289941076731==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2080561289941076731==--

