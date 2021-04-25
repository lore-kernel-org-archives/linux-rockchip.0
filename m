Return-Path: <SRS0=ZyAL=JW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20A4CC433B4
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Apr 2021 21:33:45 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C427B60BBB
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Apr 2021 21:33:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C427B60BBB
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ucw.cz
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FfiZbab3mGn2DI7gegCETlrx4AVkzqFiTEE7qTxcSX0=; b=TunbdyJGPBk5LiPQ/UAul/yjy
	y3It6T6A+HtTAQxLIAHygI4K8oIh8Xk+RKpdMw2CM5kG4C/jk5JsfVHMqsPzQoGv0LLVhm4R35ZJe
	GLc3cKDmUnPZVIqFfqDK7khaVUROGXvny+GOcZID+TpSk5ppv7IGo9y2C3XO6dU78/gq8huMVq0eZ
	oOv0+uC/fEHPigdQvzt4Rk4lc7b7NsaRpfobzSJgKI+An3hBeUjBhR7wQ+0VWLC98RSv842KDA5Jw
	orAiML4wM0DyXiSQP9M1EahzwTWAAducT9A1ta9lKraSoIiUPY0U7EIROJ3VOdCivgPllmntng/jv
	ktTpzC9/Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lamNn-006Jni-Jc; Sun, 25 Apr 2021 21:33:39 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lamNb-006Jmi-Lp; Sun, 25 Apr 2021 21:33:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=GDH6k6SeK/uKY469OM/t57J3z/HbNd2dURdydrdDVUk=; b=FtHaTz+4Pn7h7xcdNCJRGIl2cB
 Togc/Jn1pwkaGnG7c7kRFMfuWNQ1NxABBAGdCJGjDTNxtTjYD+f0rBR/EI+SHLcoCYheTivpPh4r9
 6Vv5dOlzMiFModEBVAmqQA8Nftm7/vIHgpGiwyjXp73CXX/lfajQAk3y44unCiTnbzSUFa2JiiqTt
 aBlm/5R0BcnlsadwhtWkjLYJDZH1fJNfMiYhvEO1K3HQC+qTFaQWnHmQWPvV8fWPNz0gi9bK0CCP8
 qq36ZTrbzv6AITWjscJ+4RouENFfvm8zEi2w0/pI7xFNqL6qZPguf6TBeoegq2pap5b5v6Ovo+sTJ
 44yeEYlw==;
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lamNZ-00FbfO-03; Sun, 25 Apr 2021 21:33:26 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 426061C0B79; Sun, 25 Apr 2021 23:33:22 +0200 (CEST)
Date: Sun, 25 Apr 2021 23:33:21 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Marty Jones <mj8263788@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>,
 Jensen Huang <jensenhuang@friendlyarm.com>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 David Bauer <mail@david-bauer.net>, Johan Jonker <jbx6244@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Chen-Yu Tsai <wens@csie.org>, Tianling Shen <cnsztl@gmail.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v6 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R4S
Message-ID: <20210425213321.GF10996@amd>
References: <20210319051627.814-1-cnsztl@gmail.com>
 <161640742725.808893.3666594351389773587.b4-ty@sntech.de>
MIME-Version: 1.0
In-Reply-To: <161640742725.808893.3666594351389773587.b4-ty@sntech.de>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210425_143325_212338_7BB94D14 
X-CRM114-Status: GOOD (  13.32  )
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
Content-Type: multipart/mixed; boundary="===============6123470167092752572=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6123470167092752572==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="2FkSFaIQeDFoAt0B"
Content-Disposition: inline


--2FkSFaIQeDFoAt0B
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > Changes in v6:
> > - Fixed format of LED nodes
> >=20
> > Changes in v5:
> > - Dropped the empty PCIe node
> > - Dropped useless `/delete-property/`
> > - Renamed LED nodes
> >=20
> > [...]
>=20
> Applied, thanks!
>=20
> [1/2] dt-bindings: Add doc for FriendlyARM NanoPi R4S
>       commit: 1003888415e83e15ddb63d1d96189b4f2c5f1d48
> [2/2] rockchip: rk3399: Add support for FriendlyARM NanoPi R4S
>       commit: db792e9adbf85ffc9d6b0b060ac3c8e3148c8992

Sorry for late review, but:


+                       label =3D "red:sys";

This should be red:power based on the discussion in earlier threads.

Thanks,
									Pavel
--=20
http://www.livejournal.com/~pavelmachek

--2FkSFaIQeDFoAt0B
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAmCF4CEACgkQMOfwapXb+vJQ4QCgsESGSah/NLxeFhe7TcU4rW46
V3kAnRCDC3xFN6qYlETWQRVFFWa4iAEm
=/jIt
-----END PGP SIGNATURE-----

--2FkSFaIQeDFoAt0B--


--===============6123470167092752572==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6123470167092752572==--

