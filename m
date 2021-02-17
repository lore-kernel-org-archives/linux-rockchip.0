Return-Path: <SRS0=wec+=HT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4BD5C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 08:39:08 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 79DAB64DFF
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 08:39:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 79DAB64DFF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Bb3EXjF22bdiZqSkFt6tj/4QiUpYwuOEmvhxZdxvEq0=; b=aSmojy9WAW6DiRIdanHQ/d6X4
	L/FDPJeb7ME55t/ZGjHTifNX38jH1ax7YHYVvfGKuQBs8iSKJ1T77oo9REZyHKiScGyXjiO/fdw8V
	h79K1/xqo60COKtLnIAXpJuxCjDPsGtryrMuQA4dlpSQGbOetcd2NWaAQZ9d2YlKTUbQOtV96KjIZ
	3vXbNgwfCPoCnMU+dAJ9tA+gAHzVxf5udI2D5W43YVo6Ft02aid1O9MbdUdn2XLGxQgB2iUJ0kVTb
	5FAIRqdUyRR9sYV0w2OGmREsSmQdE4tIt16z99ucZyP/3LpkDPmtMZ1n3v0CvcMPO09sSXpPxZQPZ
	p2oKirKBg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lCIMR-0005yi-Rz; Wed, 17 Feb 2021 08:39:03 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCIMM-0005wT-Bh; Wed, 17 Feb 2021 08:38:59 +0000
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 6DF5924000F;
 Wed, 17 Feb 2021 08:38:44 +0000 (UTC)
Date: Wed, 17 Feb 2021 09:38:43 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v1 00/18] Add HANTRO G2/HEVC decoder support for IMX8MQ
Message-ID: <YCzWE9VNK9yd+Db+@aptenodytes>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <YCzO7SRmBKzGeMUS@kroah.com>
 <04dfae0b-92e5-e02d-c687-ba4d28b7aaf2@collabora.com>
MIME-Version: 1.0
In-Reply-To: <04dfae0b-92e5-e02d-c687-ba4d28b7aaf2@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210217_033858_522902_4A240972 
X-CRM114-Status: GOOD (  18.15  )
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
Cc: peng.fan@nxp.com, kernel@collabora.com, festevam@gmail.com,
 devel@driverdev.osuosl.org, Anson.Huang@nxp.com, krzk@kernel.org,
 linux-rockchip@lists.infradead.org, wens@csie.org, linux-imx@nxp.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 p.zabel@pengutronix.de, s.hauer@pengutronix.de, mripard@kernel.org,
 robh+dt@kernel.org, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 jernej.skrabec@siol.net, Greg KH <gregkh@linuxfoundation.org>,
 adrian.ratiu@collabora.com, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, hverkuil-cisco@xs4all.nl, shawnguo@kernel.org,
 shengjiu.wang@nxp.com
Content-Type: multipart/mixed; boundary="===============6743427903370707851=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6743427903370707851==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7ow2nU972vRHVC8/"
Content-Disposition: inline


--7ow2nU972vRHVC8/
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Benjamin,

On Wed 17 Feb 21, 09:28, Benjamin Gaignard wrote:
> Le 17/02/2021 =C3=A0 09:08, Greg KH a =C3=A9crit=C2=A0:
> > On Wed, Feb 17, 2021 at 09:02:48AM +0100, Benjamin Gaignard wrote:
> > > The IMX8MQ got two VPUs but until now only G1 has been enabled.
> > > This series aim to add the second VPU (aka G2) and provide basic
> > > HEVC decoding support.
> > Why are you adding this directly to drivers/staging/media/ and not
> > drivers/media/?  Why can't this just go to the main location and not
> > live in staging?
>=20
> G2/HEVC is added inside the already exiting Hantro driver, it is "just"
> an other codec from Hantro driver point of view.
> In addition of that v4l2-hevc uAPI is still unstable.
> One goal of this series is to have one more consumer of this v4l2-hevc
> uAPI so maybe we can claim it to be stable enough to move away from stagi=
ng
> and then do the same for Hantro driver. That would be a great achievement=
 !

Thanks for working on Hantro G2 support!

As the initial author of the HEVC API, it definitely does not feel ready to
be destaged. The API has lots of issues and limitation and I think signific=
ant
work is still needed.

This initial implementation was kind of a proof of concept for simple cases.

Cheers,

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--7ow2nU972vRHVC8/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmAs1hMACgkQ3cLmz3+f
v9HIZQf/XT0QkO85qqIKOjBJc13qI9EuI0hqS/3DaKfoLDUlh/YYkNRNKq2LPJUO
Yn6zxwbKF7ztf8Xilpb+KN9Ab4Iiuo99wFFaPT+QicAiXnP4mPGTnsElI0vLXYtX
Cvj4oZa7Yt1d3tj6bdntUkickpI5N9jnTsfUGDgbY7UNiHPhkKrFXnm2k/YlSG0c
jThLGevtAfaArPhOdLRw2mbfxEXPWTIetrvFBsUBw82Zr1HUtB6ugUXKWwhZogly
3XU23bzYbrJQNXrwN93W2XIe6izSwknWrJeAB1UwaXkhVKnlCv/hjeLxKAf9/D/D
Q7TKg/z2kPWnZWqv5cir0FevaaaxwA==
=n/FC
-----END PGP SIGNATURE-----

--7ow2nU972vRHVC8/--


--===============6743427903370707851==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6743427903370707851==--

