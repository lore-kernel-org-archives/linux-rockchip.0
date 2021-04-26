Return-Path: <SRS0=k14b=JX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97350C433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Apr 2021 11:03:39 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0ACCA61075
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Apr 2021 11:03:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0ACCA61075
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ucw.cz
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ssdFqid7H2k3VSBAC73Jk/8yHK6jmCJtagDEfkb8AOs=; b=VxDFx/x8jE7fo16wVPcGMlTr0
	MR4QfbIfXVl0vbXC7kqa250gVNc4yOhKMTbfjFmX8Cg5HxJ1tzEJqu/PtmbxFu7uXF/fP/dQReMRc
	leEAE8SzH0QRBwoigulBS0iUvMzm09sxJiSsnu88VGN+DOZhn1riqXo/VDEkg6Hc1WanxmL7qCxWX
	8ag1JcEzM+tpwXTUUV6KRhVBD2CHfdAd0rWSR1oDXVoo8KVvpcPzv+LlwbUGLaVPzrKOStDdypBrp
	7F4spR1Uy3OGgf1jEvq0LSXG4S6pI429WCNV2oBJ9n/34/vyXbkRKszsRNDZfmhLUG/DfFHE9Nbuj
	rts842ekQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1laz1Z-007TMC-Vq; Mon, 26 Apr 2021 11:03:34 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laz1P-007TLb-LT; Mon, 26 Apr 2021 11:03:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Yk4+acGHwXOft0ds9D9EDBbrRT+I2kUSBSoYbosqB3s=; b=TwNLi5UffFjQVScTbZAJSNkGFN
 YBhwdu/Ftmyu5HmT9m5iEMl/llQQl6ddFdky6wF2dxeWXMf2IaWMLXaunRLkMtx9jNm85Z+qtbjRE
 j+FJR2r2yI/wTnWDHqDZv4HxKxe4iU/xcMnaMYeecA5V2Kt73zexTnZGYS2nV+RH0tPIGHn733pi6
 IZfgaEHuUiYUS888Pq3TmicA8TQmSUqB7rDcfZ8FZt0YOntiUnIwEVcDdBzt9V6VKugJdBIZH2yww
 +jiiC0XrM2uA6+AA0Gn2ctgoU5vAX9D7WFNC//f0unwlhV6MJtbH0D4BYd/NQS3bnlDOmXWaEYVRm
 92XdQP0g==;
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laz1M-00Fuib-Ha; Mon, 26 Apr 2021 11:03:22 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 9FDB21C0B77; Mon, 26 Apr 2021 13:03:16 +0200 (CEST)
Date: Mon, 26 Apr 2021 13:03:16 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Tianling Shen <cnsztl@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Marty Jones <mj8263788@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>,
 Jensen Huang <jensenhuang@friendlyarm.com>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 David Bauer <mail@david-bauer.net>, Johan Jonker <jbx6244@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Chen-Yu Tsai <wens@csie.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v6 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R4S
Message-ID: <20210426110316.GA13974@duo.ucw.cz>
References: <20210319051627.814-1-cnsztl@gmail.com>
 <161640742725.808893.3666594351389773587.b4-ty@sntech.de>
 <20210425213321.GF10996@amd>
 <CAOP2_ThcRMkgSm872q2By=gALoK-qAjq92FtNQkDO999pZR8kg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOP2_ThcRMkgSm872q2By=gALoK-qAjq92FtNQkDO999pZR8kg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210426_040320_757454_7BB9C036 
X-CRM114-Status: GOOD (  15.02  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: multipart/mixed; boundary="===============3215838979030549493=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3215838979030549493==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="huq684BweRXVnRxX"
Content-Disposition: inline


--huq684BweRXVnRxX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!
> > > > - Fixed format of LED nodes
> > > >
> > > > Changes in v5:
> > > > - Dropped the empty PCIe node
> > > > - Dropped useless `/delete-property/`
> > > > - Renamed LED nodes
> > > >
> > > > [...]
> > >
> > > Applied, thanks!
> > >
> > > [1/2] dt-bindings: Add doc for FriendlyARM NanoPi R4S
> > >       commit: 1003888415e83e15ddb63d1d96189b4f2c5f1d48
> > > [2/2] rockchip: rk3399: Add support for FriendlyARM NanoPi R4S
> > >       commit: db792e9adbf85ffc9d6b0b060ac3c8e3148c8992
> >
> > Sorry for late review, but:
> >
> >
> > +                       label =3D "red:sys";
> >
> > This should be red:power based on the discussion in earlier threads.
>=20
> However based on the introduction from FriendlyELEC[1], this is not
> the "power" lamp...
> "LEDs: 1 x power LED and 3 x GPIO Controlled LED (SYS, LAN, WAN)"

It is always on, and "sys" is not a valid function.

I'd suggest labeling it as "red:power". Feel free to make other
suggestion but lets keep existing functions.
								Pavel
--=20
http://www.livejournal.com/~pavelmachek

--huq684BweRXVnRxX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCYIad9AAKCRAw5/Bqldv6
8rTHAJ4nA4Fv8pKz5+41IbOTLBjIMzKo5wCgniy+wweKJ3Bq1M+lSS+ghFLC/5A=
=/ktb
-----END PGP SIGNATURE-----

--huq684BweRXVnRxX--


--===============3215838979030549493==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3215838979030549493==--

