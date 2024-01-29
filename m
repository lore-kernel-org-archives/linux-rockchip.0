Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55EFCC47422
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jan 2024 11:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w0c9cO7OKjx7L+9sdxfU46DUo+Pec9LAULXO3A0qUkk=; b=aC5C3JbrvnpPlrzaYXwutmzgVk
	dUbyhcsq4ERJ3OByMaIx8gjSow9cTvOVxJ38j2ELJH4jbWZgomLH3PY0c7CjiQnneQY2YUqD//tJE
	mgRNbAKzPT3hMJkD183PBs9BxoB8turtkHWm3/DYzFy1uMHwQtvZmMCsLplI587zYoaumcOahLciI
	lJWs8OO2m+pxXaeNrrKn9cCGFh66L2pSYEIJJGptrLQC2IeEsN1GyO9gFCZjno6j49U6eUEXYlUqR
	6iJ/D2OObH7P8oMIpaVilpYfhscMZq4702TNlUNq5Y7bjg8Epe2pvg0WfzrwMAWGEstt0+694K0k3
	MH+nez7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUQ1T-0000000CQcy-2J2c;
	Mon, 29 Jan 2024 11:41:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUQ1R-0000000CQbw-04gy
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Jan 2024 11:41:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rUQ1K-0006sh-Ut; Mon, 29 Jan 2024 12:41:46 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rUQ1K-0039xJ-1f; Mon, 29 Jan 2024 12:41:46 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rUQ1J-00As6C-35;
	Mon, 29 Jan 2024 12:41:45 +0100
Date: Mon, 29 Jan 2024 12:41:45 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Johan Jonker <jbx6244@yandex.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	linux-pwm@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, kernel@pengutronix.de
Subject: Re: [PATCH] dt-bindings: pwm: rockchip: Allow "interrupts" prooperty
Message-ID: <dsq5f77dkwfzjegisz6waaqln4b4hbyhoafeygsisdhfzjy2ud@v4pdwvkkupbh>
References: <20240106142654.1262758-2-u.kleine-koenig@pengutronix.de>
 <7dea73a6-d733-4cd2-b2d5-02f09e2a6dd9@linaro.org>
 <94ad0f59-4095-40ee-963d-4ac379fc8852@yandex.com>
 <cvvifoctmgdsgqfadqbhgywfw2ff57fz33w26hghf5kyo5j5sw@mj75xtvczr2h>
 <210132de-a46b-4f9f-8546-0c36d8a34665@linaro.org>
 <5swqcqpc5zwa3bfhuoyjnymozyzy3lgurnbsurebybj2c7fck3@ycwk2ugo2ouf>
 <b03fc42e-653a-49b2-8835-6cfb7a7bb39e@yandex.com>
MIME-Version: 1.0
In-Reply-To: <b03fc42e-653a-49b2-8835-6cfb7a7bb39e@yandex.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240129_034153_102525_EE699748 
X-CRM114-Status: GOOD (  16.56  )
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
Content-Type: multipart/mixed; boundary="===============1106085602061370043=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1106085602061370043==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p7u3kwx5lvuf6mxa"
Content-Disposition: inline


--p7u3kwx5lvuf6mxa
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Johan,

On Wed, Jan 24, 2024 at 10:40:15AM +0100, Johan Jonker wrote:
> The interrupt registers are located outside the PWM range and have nothin=
g to do with the PWM driver.
> Adding them to a PWM binding is just bogus.
> They are a left over from the manufacturer tree that use them in a IR det=
ection driver.
> Heiko keeps them because someone outside mainline kernel might use them?
> They should be removed and remodeled in a new sort of MFD node that handl=
es all operating 3 modes.

After some more feedback on irc, I sent a patch removing the interrupts
property. However I failed to Cc: you on it. This first patch catched
your attention even without you being explicitly Cc:d, so I hoped the
new patch also hit your inbox. Find it at

	https://lore.kernel.org/linux-pwm/20240129113205.2453029-2-u.kleine-koenig=
@pengutronix.de

and tell me if you want a bounce.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--p7u3kwx5lvuf6mxa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmW3jvgACgkQj4D7WH0S
/k7cyQf+KF/024MjeRRDq7JoTp/gABQjsEkdql+YPSGnbFims+m61aWadom2WbqE
7IcSORlT/w7ttWXcxIFT6YidFwhUVrmNSoDkMNigX6epHthh8gtb5gxf/v9s8aUr
Zgw8xt9+n8xo5Bcod5719qMm3wE28ke7pbP2Lb30iy/K9hUia7uprlCdWH/RpNos
/sA2QUvMonssEiE7blvZ1ipy7TOmG+duWbrOy++BqGQHhG6uSeI5yBlrS7a6L6sl
QC39LKKfAVxLoA+517BjxlOGjI9DAXZn8HXi4K/ZQZ8seMOI4yITzYJ0SJKssraa
e9L5x42WcyuSgxoU+W7JfE41L329bA==
=8zBU
-----END PGP SIGNATURE-----

--p7u3kwx5lvuf6mxa--


--===============1106085602061370043==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1106085602061370043==--

