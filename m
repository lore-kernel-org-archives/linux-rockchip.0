Return-Path: <SRS0=ZyAL=JW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51B8EC433ED
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Apr 2021 21:26:04 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C0B7B60BBB
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Apr 2021 21:26:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C0B7B60BBB
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ucw.cz
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NwgeGwxecLq2YuHO2P5Ek6DPFeK0SEmJurseUASqNrM=; b=EWm/6PMSm87R+9r9xyP9BEWtW
	DntbFikwxf/iJkWMXZhoLQs1Jr/tcPWp6A1FpJ+EjuiMste5CXafRnUpeDAtcDwCgc2YsCeuNl7XL
	yjeQTn96vCAY+vbf3NNe/TI4qQ03yfCEevx635llt43j4Ppcttfczaz6wSedmnt55mHJQqx2sKscU
	DNcYOipA6+G89gdibUKBSHtUnMuO8pr4bT6kArAHji43JaTPzv9H/R9socqCh6mHuj/iHMF51zht1
	9/k0UIGpVYH+ABCS0EdmIoEvU40BMDdm+CZsORy0sfwgPbaqTOocqmlI7mpQMWYImifPnNf7pvPZ/
	/2H4bqnfA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lamGL-006JAN-97; Sun, 25 Apr 2021 21:25:57 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lamG9-006J9b-DS; Sun, 25 Apr 2021 21:25:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=xGp36ZrP9hgrVT4BDhVJfvsGexJcms3I1jR6DFg1/KI=; b=sMyTaN8TM2BwCl2V33ZfUcc136
 X1iNRsVWm4VFw7koTxwOcwo4FHGzS4NagcMai54TBSIP1eeI5WLeWMcSmV1ji+GqL6gQ9DR7VglNC
 895+zh0QCjwvZkfWW9169S6wJX9HpAA2yYHCMcOY2xwOv0lWd6CLTZ24JNmdHa2Uf9Q4lhxRVr/ex
 4ZdIZZreb4VI4vlDOWZIDP0vCSFOte6B/AqRD3XHAzePxZp8DFCdPHlZtGfIsLucUZs04mFrSmPK8
 HtLwCxLoNOoliDZEMaNR5z84yjDfnwNrrizvrkHGm4D9e45uXoHdVtyE2ZXIKo5MGTX23nQniG7gm
 Sze063vg==;
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lamG6-00FbWq-NH; Sun, 25 Apr 2021 21:25:44 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id EA4EA1C0B77; Sun, 25 Apr 2021 23:25:39 +0200 (CEST)
Date: Sun, 25 Apr 2021 23:25:39 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Tianling Shen <cnsztl@gmail.com>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jagan Teki <jagan@amarulasolutions.com>, Chen-Yu Tsai <wens@csie.org>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>,
 Johan Jonker <jbx6244@gmail.com>, David Bauer <mail@david-bauer.net>,
 Jensen Huang <jensenhuang@friendlyarm.com>,
 Marty Jones <mj8263788@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Subject: Re: [PATCH v3 2/2] rockchip: rk3399: Add support for FriendlyARM
 NanoPi R4S
Message-ID: <20210425212539.GE10996@amd>
References: <CAMuHMdWYrS=YT7F7erM-e6xhDME4judx-T7rdFGi7CpW1_iqkg@mail.gmail.com>
 <20210316150033.15987-1-cnsztl@gmail.com>
 <CAMuHMdU+agaOdf4hQhn5JQDHCbuWm3dETJu01baxfDAY=nikow@mail.gmail.com>
 <20210316193839.GA28184@duo.ucw.cz>
 <CAOP2_TjFtBqBP8wOY-wxSd89yYuYF4bwqWCP4c6FXNMNH=2t-w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOP2_TjFtBqBP8wOY-wxSd89yYuYF4bwqWCP4c6FXNMNH=2t-w@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210425_142542_937505_11B13A5B 
X-CRM114-Status: GOOD (  13.17  )
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
Content-Type: multipart/mixed; boundary="===============6126798835256536365=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6126798835256536365==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="SNIs70sCzqvszXB4"
Content-Disposition: inline


--SNIs70sCzqvszXB4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> However, Documentation/leds/leds-class.rst says the form of naming is
> "devicename:color:function",
> and according to the given examples, as well as other dts(i), would it
> be okay to use `green:lan`
> etc. as the lable?

Yes, that sounds right.

Best regards,
								Pavel
--=20
http://www.livejournal.com/~pavelmachek

--SNIs70sCzqvszXB4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAmCF3lMACgkQMOfwapXb+vIQIQCeJAnhQaD+6C5WI8aWAXre7RwC
aoIAoI4TlvVGlbltGWFqqE4qwOwY4Ajg
=pphU
-----END PGP SIGNATURE-----

--SNIs70sCzqvszXB4--


--===============6126798835256536365==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6126798835256536365==--

