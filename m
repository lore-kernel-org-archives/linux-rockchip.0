Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2311AC47258
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jan 2024 13:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b50/Xc7cemQD6hdYONt7z+f2SDnIO79qdbOFH6W6Hp4=; b=Qyki+7zs9Vvu0hdUmo/aZyMKhN
	k2TqDGGM81rYCkxr+ATev1Siv/yptvi7avTsAM4hBeLYnv9yHNiUls8rZEndl67wnjhEFGDzvnbbJ
	UY94dZKBMctWvwEhDr1flH99F0rIyyuvV9p3Out/vhoqGlnYM90IancDvj2oyxH/chI0151a3dh+6
	WwTVDCT2IvMrtJbGlDzLPx/8kkb8dRE6tbMoQtTV6UZtg3XPnPelOR2xkiJ27XHJ+kVapNS9eYAkF
	C/eFRUT0ATpSadLtrwpq/w/UV2VaTzko8bPGObvr5ypulTt0LZabaLbkYIYsm7YXLZ1ZJpV1rWslv
	0gp2O8xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ6Gs-00GhGn-1e;
	Wed, 17 Jan 2024 13:47:58 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ6Gp-00GhDM-1O;
	Wed, 17 Jan 2024 13:47:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 674DBCE1C22;
	Wed, 17 Jan 2024 13:47:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53BCEC433F1;
	Wed, 17 Jan 2024 13:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705499270;
	bh=I7vQBID3G5sv3NpLhtsULacwm+dYjsLRrcvjaJpRfbA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dkrqV21JZeN9qgXIJR2G+aY6Y+oJbhnCx6Nvx0jJ5s2JjH/twuRJEtgzJ/9E6g6L8
	 1EGg4xYEjyzgsew4qYqCC0y4R6EKZxVl5qTrS6SotGPC/BkItJIq9ZivWUnKZBA0He
	 M46edCDaA6pRAy6nslj8LI5aQnKb8iKnQiof6ofRPxgbn4MWPySB6LKAyX3AhzSI0g
	 ZHuc2SLLXObnB9IwL1AulZj1RL74JxsiNqUscCNbW7D1zXnHXb54kcx0eyVrLdPU/Q
	 cPyPSj1TSSAEllG2btUS9gR96knU92X1ZcDnUeynm+0cS4ACIyIgQKZanR0PkUUyLH
	 UyK6cmnA/Hnfg==
Date: Wed, 17 Jan 2024 14:47:48 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Alex Bee <knaerzche@gmail.com>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel test robot <lkp@intel.com>
Subject: Re: Re: (subset) [PATCH] drm/rockchip: inno_hdmi: Explicitly include
 drm_atomic.h
Message-ID: <iuorynvlxp6m6u5hz3yi5d2ibfd3w6pdsm5ajlztjcsjuaczzl@f7jl7vyux2cl>
References: <20240115092434.41695-2-knaerzche@gmail.com>
 <170548481754.96553.11502916321137598260.b4-ty@kernel.org>
 <3186012.MsWZr2WtbB@diego>
MIME-Version: 1.0
In-Reply-To: <3186012.MsWZr2WtbB@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_054755_671751_47296393 
X-CRM114-Status: GOOD (  15.72  )
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
Content-Type: multipart/mixed; boundary="===============0729258350273932370=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0729258350273932370==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u5lstoeossw6qgsw"
Content-Disposition: inline


--u5lstoeossw6qgsw
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 17, 2024 at 10:52:04AM +0100, Heiko St=FCbner wrote:
> Hi Maxime,
>=20
> Am Mittwoch, 17. Januar 2024, 10:46:57 CET schrieb Maxime Ripard:
> > On Mon, 15 Jan 2024 10:24:35 +0100, Alex Bee wrote:
> > > Commit d3e040f450ec ("drm/rockchip: inno_hdmi: Get rid of mode_set")
> > > started using drm_atomic_get_new_connector_state and
> > > drm_atomic_get_new_crtc_state which are defined in drm_atomic.h
> > > Building does currently only work if CONFIG_OF and CONFIG_DRM_PANEL_B=
RIDGE
> > > are enabled since this will include drm_atomic.h via drm_bridge.h (see
> > > drm_of.h).
> > >=20
> > > [...]
> >=20
> > Applied to drm/drm-misc (drm-misc-next).
>=20
> wouldn't have drm-misc-next-fixes been more appropriate?
> Because I _think_ the change causing the issue made it in during the
> current merge-window?

AFAIK, the offending commit is in drm-misc-next only

Maxime

--u5lstoeossw6qgsw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZafagwAKCRDj7w1vZxhR
xXhkAP9qKbp1PhY5sD3ZM1K8WsnxJlJs426f+1UdakIgqEihoQEAj9KiTUxV80b6
7rivJZ/b4AaKhqJN40Qlbi3MigyBHAg=
=6ZF3
-----END PGP SIGNATURE-----

--u5lstoeossw6qgsw--


--===============0729258350273932370==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0729258350273932370==--

