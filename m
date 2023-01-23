Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B49EAC05027
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jan 2023 09:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kmJ2cVgZ6Ts/ScoZ28AtldHikwKITltSvOAh7c7A9o8=; b=KMrViwC8ll8VbRY4kXJcIyyjeS
	NVHrr1JteQLBpBFh5H4SixLX+VrjMQ+4aeXFEcHRHJ/n6/7POxhVNgbRXi2VgcEGNdSE3NAfjbST4
	Zgbzmsakdl3GaASG2zizjysB17pj+K66SoHjBFY6blBJAVvFgGVdbPoyG/aTQ8ThuEIrR71roIbug
	SRFw0uP0X2hnfC5ssjvofjH+FgrtrrwcXNLX29i3XelVX552Pr39xm4xPk5HUpF4W/qS+B9VUIvvK
	jcsawjVVurM7aKZ0kiYoM11E856zAlIX2YWw8gNg9ROYMfnZprSMNF38IliOcc57JUUjHLr3V3Bec
	FcMi5p9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJtSc-00GaIh-F4; Mon, 23 Jan 2023 09:49:54 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJtSZ-00GaH7-Bq
	for linux-rockchip@lists.infradead.org; Mon, 23 Jan 2023 09:49:53 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 1F23132001AB;
	Mon, 23 Jan 2023 04:49:44 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Mon, 23 Jan 2023 04:49:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1674467383; x=1674553783; bh=9daeLgzQA5
	spkB7BlIpXoW8mkSE83mMKgTyPRJ+rp8w=; b=KNxjl+a/JfWWZLcpU+hT4guP4n
	YSNi+Fsd7WTL15Z50EFzLm2EOViHPO8YPWErE4xYH9MwDXBdlHYYURHqET6l/trv
	MpJiPRyu9ycF16ZOev1Bt3bDaliDh/P20f0cWw0Yevmcnis3yHRTh2POZZTYzfbS
	E7RYrFev12njC56KTtuwDARfl4DJBv5B1XBsUeauHtWArO1S0PlvO5SwPAVvWRIO
	BNjeMKnTc/DGKmw/ufh3H6DjLEHun3uijOb2kfxfxrZOL7ziLabdqxyxQaX8iiRW
	WKX6J3zkD8Ry0obv9jYJw7oQzQhdZHWoDY1TyJECORq5A0HFgJLGfgUay9pw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1674467383; x=1674553783; bh=9daeLgzQA5spkB7BlIpXoW8mkSE8
	3mMKgTyPRJ+rp8w=; b=p+WQuYZnMUW+ZuYN+QeHnPVTmjTX8z13n5NZjExpKfgF
	piLQUd57BxVyEalcV034pjLrkwf7vx1D6QI99P2jyIv1VGfSgkoJDRVIPs935rnd
	4snwD84SBS+Ly8smt2ZvsaqLKlhUZF9ZYtFhmJfHcepSmvJq1fQN+oA4cMM7mvlp
	aO1Bj0eg0o5SKq8ppGDnI29KAN5Nu80U4Gn6LyNm+C2w0ZWwqffy/YIKM1vzxGZf
	mV65ewKPQHNcsuia+Bfi49GHJsZVvxIacqV/m0YHBG4XswXbHVqIEphpb7TYOOyP
	VZHLnjCR+yjgTCbrcbFkkawKC9Lkp0zp7G4wmCVc6A==
X-ME-Sender: <xms:N1jOY1oHJ8m_-yIKvoT2FsHgT1vV4ny6nxXtTDo-OVK02JiQD_OKgQ>
    <xme:N1jOY3oZJ9EjbmCMi4KSP2di22G9fxjuMFaT7LmzRMyAnUmyUGnr1ytYl6dsn3iwo
    DxB0Aclzc1lx5FzJzo>
X-ME-Received: <xmr:N1jOYyPNYW4Tretv0-LCs3fIqamxlXOdXpmOD8C0wDNux0j9GcVp280nbMnSrblOU5aKXWH3MGAc8xIlt3rIX9o1cjfY_tWvMp1on2UskxcQ9A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedruddukedgtdeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeetfefffefgkedtfefgledugfdtjeefjedvtddtkeetieffjedvgfehheff
    hfevudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:N1jOYw42GZmDuuOXhUy9q7pZPKJMbRynG5V5DK8LckJBAyDDpoLg8g>
    <xmx:N1jOY05ceAspTdr-PohO4IxKaD03BqP3wNeUNiEo9XXmeI3QdivpsQ>
    <xmx:N1jOY4j9-0G9QY_s6n8unCxT7vSchyjcdP5xWj6I0mrVvZE8czz3XQ>
    <xmx:N1jOYwFLvdVfhFh8Hg75TP86vigpVqt-ZgL-dEjNarFrn6d1SmfgXA>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 23 Jan 2023 04:49:42 -0500 (EST)
Date: Mon, 23 Jan 2023 10:49:40 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	tzimmermann@suse.de, maarten.lankhorst@linux.intel.com,
	heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
	sam@ravnborg.org, thierry.reding@gmail.com,
	linus.walleij@linaro.org, Maya Matuszczyk <maccraft123mc@gmail.com>
Subject: Re: [PATCH V11 1/4] drm: of: Add drm_of_get_dsi_bus helper function
Message-ID: <20230123094940.u7vmfel357ukii45@houat>
References: <20230118233135.1174859-1-macroalpha82@gmail.com>
 <20230118233135.1174859-2-macroalpha82@gmail.com>
 <20230119081542.lfgvaj6lwwdb2eaa@houat>
 <SN6PR06MB5342B2ABF5C08A2A62CF8715A5C49@SN6PR06MB5342.namprd06.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <SN6PR06MB5342B2ABF5C08A2A62CF8715A5C49@SN6PR06MB5342.namprd06.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_014952_028629_D7441FC6 
X-CRM114-Status: GOOD (  18.37  )
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
Content-Type: multipart/mixed; boundary="===============7118810550152566433=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7118810550152566433==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="r433cg4ampuo2b3o"
Content-Disposition: inline


--r433cg4ampuo2b3o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 19, 2023 at 09:09:03AM -0600, Chris Morgan wrote:
> On Thu, Jan 19, 2023 at 09:15:42AM +0100, Maxime Ripard wrote:
> > Hi,
> >=20
> > On Wed, Jan 18, 2023 at 05:31:32PM -0600, Chris Morgan wrote:
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > >=20
> > > Add helper function to find DSI host for devices where DSI panel is n=
ot
> > > a minor of a DSI bus (such as the Samsung AMS495QA01 panel or the
> > > official Raspberry Pi touchscreen display).
> > >=20
> > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > > Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> >=20
> > Sorry for not noticing this earlier, but this is a bit confusing.
> > Signed-off-by is there usually to follow either the authors or the
> > maintainers (or people that passed the patch along).
> >=20
> > Given the order, the SoB here indicates that it's Maya Matuszczyk that
> > committed/submitted that patch, while you are the author. Obviously,
> > that isn't the case since you are both the author and submitter.
>=20
> I borrowed a few lines of code from her, which is why she is listed
> here. If this is not correct let me know.
>=20
> Thank you.

I see, then the usage is that:
 * You add a Co-developed-by tag with their name
 * You add your Signed-off-by last

Maxime

--r433cg4ampuo2b3o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCY85YNAAKCRDj7w1vZxhR
xfTwAP93tvOHfCl9tQ/tKWGn0ogpYfym597KFZFGQnBjQArD4QD/Ybzx+I5Ludrs
PNrvf4AKONJJNHYB8o6vRbU9+yuClwE=
=EocB
-----END PGP SIGNATURE-----

--r433cg4ampuo2b3o--


--===============7118810550152566433==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7118810550152566433==--

