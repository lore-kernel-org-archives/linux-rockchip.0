Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17450E728E1
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Sep 2023 19:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vNvHMbhYF6glrGyFCqDPbjVJIPpIwo9//KhyWRjlxro=; b=jmGK+rMQffolAYRpOzX+WTX5YK
	MrJwYhxHXEzD5MeAe1BgXxLptLFZHIxihVPw+wTzgaSzGT3VeNgrd3XJ4ERFZktu80jiiKba4rchU
	VwfmO2UnNHqGUUcEaTduRCHo/dupmPjGoWaZfbpP/eBejDttQTbe/HopvINiy9MOavtb9T7C6htTR
	ScAXG1tfK2QKwhA/S/+tYgXXiDgVJJwBViNx+MSPvaCFPwrGW8oB3jj4jkspcwHJjA0KVH/RlsEFv
	y3Bs1BOcHK2WhDMYiadLVHM90tUBzhbqPfClgAkuyNpzg4WdeDWygGCK3NCc/+3nBbnLiXlZLlMdY
	Yoekt2Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qmfjH-00A48Q-0S;
	Sat, 30 Sep 2023 19:34:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qmfjE-00A47p-0R
	for linux-rockchip@lists.infradead.org;
	Sat, 30 Sep 2023 19:34:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qmfj4-00042n-Ll; Sat, 30 Sep 2023 21:34:06 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qmfj3-00A7Oc-8H; Sat, 30 Sep 2023 21:34:05 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qmfj2-006cq8-Sn; Sat, 30 Sep 2023 21:34:04 +0200
Date: Sat, 30 Sep 2023 21:34:04 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-pwm@vger.kernel.org,
	Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 01/13] dt-bindings: pwm: rockchip: Document rv1126-pwm
Message-ID: <20230930193404.cmr7c4rwprjkk6z7@pengutronix.de>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
 <20230731103518.2906147-2-jagan@edgeble.ai>
 <20230731145129.mrrkb6tcuvlpmxan@pengutronix.de>
 <5533260.88bMQJbFj6@phil>
 <3efc0e28-3a5a-bfc7-57e3-e7e3d5ae1740@linaro.org>
MIME-Version: 1.0
In-Reply-To: <3efc0e28-3a5a-bfc7-57e3-e7e3d5ae1740@linaro.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230930_123416_174976_9DBFF48E 
X-CRM114-Status: GOOD (  21.22  )
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
Content-Type: multipart/mixed; boundary="===============8025991796706942778=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8025991796706942778==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ubitorhfqz2eres4"
Content-Disposition: inline


--ubitorhfqz2eres4
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Heiko,

On Tue, Aug 15, 2023 at 10:59:57PM +0200, Krzysztof Kozlowski wrote:
> On 09/08/2023 16:02, Heiko Stuebner wrote:
> > Am Montag, 31. Juli 2023, 16:51:29 CEST schrieb Uwe Kleine-K=F6nig:
> >> On Mon, Jul 31, 2023 at 04:05:06PM +0530, Jagan Teki wrote:
> >>> Document pwm compatible for rv1126 which is fallback compatible
> >>> of rk3328-pwm group.
> >>>
> >>> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> >>
> >> Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> >>
> >> Should this go in via the pwm tree, or together with the other patches
> >> via rockchip?
> >=20
> > I have no clue, sadly. I _can_ pick it up, but I guess that would
> > require an Ack from Thierry? Otherwise I guess we'll need to wait
> > for him.
>=20
> General preference is that binding goes via subsystem (so Thierry), but
> there are no driver changes here and your DTS branch would benefit from
> it (less dtbs_check warnings). Therefore I propose - just grab it -
> unless Thierry wants other way.

There are no other changes on the list to that file, so I don't think
we'll run into conflicts. I guess Thierry doesn't feel strong here, so
I'm with Krzysztof here: Pick up this patch together with patches #2 to
#5.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--ubitorhfqz2eres4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmUYeCsACgkQj4D7WH0S
/k60AAf/RHvVEkErr8WLnxhT5b2uMA4OBD63CyJTpWXV51pjHtuo64WKA4pAKpSZ
ROgtKqDjV4WE+vJAJfFu7eBLaX42J9G7On+w3sxOi1kNA90BdBQC9Org1Uqnn9Ig
XUbq05OwRf/2nKWhCq79kbdQgXVoIRTvyxlt5gciQ7nW96RayA0sIoBj5HrxgLC5
x1iN23uWo0fVM57lMGClHyNQacwXV4D0/p0+ScdgTj1sqC3kbearRNu/epNM+A/B
76I8Lh4TcKpvL7S4p9sBUB4yXx3mQVOEFuxUWS7Uc2WXNkGtqCBA15qtmdknhMbJ
3GP4wd6pDarFGTJjmNmO2/fRSIFn5w==
=Q19Z
-----END PGP SIGNATURE-----

--ubitorhfqz2eres4--


--===============8025991796706942778==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8025991796706942778==--

