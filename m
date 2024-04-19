Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1ED9C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Apr 2024 11:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sWzFmlRJ7b3lukqefTKZ7td4Tjuq8K/PZCKBtgtLZWQ=; b=vAYG+qUMaHpQX/KlYt4LdUjbXQ
	gEwUpHkxfvuWlDwMLXmH5f+19SbrDd3W6ixKaALOIxqGlm9HXlckINd2XZlzp1eK+OzymdeB1nlW2
	CyD4pkznJuVDC2G7G2ydZ7JB5axV7agLFLzTv7RrKVi3bn7Kaql60Wri4TEe57JILixGer85wr431
	UZ9/7/lIzyKukDKfr17peZbsuwPSIuIHR9Tq+J/cAr4A1bSBP+UB8iyCa2QN3RNO5xiUicSRbXO/P
	//y9udahAsOPCIF5xF1AXzqlYpqO58Egg+T4FxIH2ubDvz42vrZykoMJ0Ocyl0jtlrQBLmP0q2pn/
	13bMqugg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxmXs-00000005TuR-2dl1;
	Fri, 19 Apr 2024 11:36:44 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxmXo-00000005TtV-17cu;
	Fri, 19 Apr 2024 11:36:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 39103CE1A28;
	Fri, 19 Apr 2024 11:36:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E67CAC072AA;
	Fri, 19 Apr 2024 11:36:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713526597;
	bh=RGBSiE3AtLVUYHvusd2OokOMgXmKs1k7wH7HEVhiQfg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SpnoKl85z8PRUnvUV94bspdas7JkiksyoW1AUSsd8W5fmoKjOprRdlJzjtY6JkGDo
	 F0P+F3/zUJxWmjy8oa50ws3MIqDHtYzGjVrG1jzikp5TGwnUoJn1cHGzczVzY7/vLn
	 a/6Bo33zheUhgEgSIl9SJk7FV/aPdJQByPCu0l97+mJU3etiiUh2gM4qLtPLgq+Hwx
	 /NVNq7ikFh7ooDTrQjG6s6bh766F3Lxjm8nHQEGC3zZR5LHt+dGGkyO3T7J68mVyU4
	 hlmj5QeaA/+KjRDCsa3scXjCF6fBijP+eJ79KqrxYBIPcMjklOk3F+BeHm/FiCn7jA
	 71LTAmbS+VjBQ==
Date: Fri, 19 Apr 2024 13:36:34 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Sebastian Wick <sebastian.wick@redhat.com>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, Pekka Paalanen <pekka.paalanen@collabora.com>
Subject: Re: [PATCH v11 17/28] drm/connector: hdmi: Add Broadcast RGB property
Message-ID: <20240419-intrepid-enthusiastic-spoonbill-3fb9f2@houat>
References: <20240326-kms-hdmi-connector-state-v11-0-c5680ffcf261@kernel.org>
 <20240326-kms-hdmi-connector-state-v11-17-c5680ffcf261@kernel.org>
 <Zh6EevKDKt60E8e9@intel.com>
MIME-Version: 1.0
In-Reply-To: <Zh6EevKDKt60E8e9@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240419_043640_509420_13F4D50A 
X-CRM114-Status: GOOD (  17.99  )
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
Content-Type: multipart/mixed; boundary="===============7937052200807167906=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7937052200807167906==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="twt2bamgclgwo5q2"
Content-Disposition: inline


--twt2bamgclgwo5q2
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 16, 2024 at 05:00:26PM +0300, Ville Syrj=E4l=E4 wrote:
> On Tue, Mar 26, 2024 at 04:40:21PM +0100, Maxime Ripard wrote:
> > The i915 driver has a property to force the RGB range of an HDMI output.
> > The vc4 driver then implemented the same property with the same
> > semantics. KWin has support for it, and a PR for mutter is also there to
> > support it.
>=20
> Is there a i915 patch to switch over to hdmi.broadcast_rgb? Though
> the "hdmi" name is perhaps not the best idea given this is also a
> thing for DP.

No, there's none yet. I can try to cook one as a follow-up, but I have
no way to test it

Maxime

--twt2bamgclgwo5q2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZiJXPQAKCRAnX84Zoj2+
dqW3AX4z9SPfNEYqLIrzCMiper2UznzSiItRQraVPOKwQb/7kJbeWynLWAgun2KI
ipBCYTIBgNmPOT2WW4J8MjsQTegdqZL5wVAo0erF9fB7LiOU6HNZ9VZCiYz2cjwl
d06WM355Fw==
=BZv7
-----END PGP SIGNATURE-----

--twt2bamgclgwo5q2--


--===============7937052200807167906==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7937052200807167906==--

