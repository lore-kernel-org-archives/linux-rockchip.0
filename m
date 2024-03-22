Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 837A4C47DD9
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Mar 2024 10:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h7zvcok8CNvESoemXIQfs5/N35JIJkETz9lakhtRdi8=; b=D/pZEjpYrfO55+IDB0SRRX5CoK
	zwTTb/tB8ttdzDOX1UDGc2xCfNGnj0r4eU11pVIgaGj5ogT2SjmgHeoyFlEUZLMvkljxGygyOkEGG
	7k9GKFY6IQwiz9kUJrP+uVVc3uorCFONPLTWBmWvhDHqCFDb0RuvTGdVccp3hxxbivUlgzHz8epZ+
	5Semz1s+QHFJcJzXbMVZVb+mffTGEgDKFD4QuguY4Oj4VJM3MfRPzwpfQ84v/GIKI6YDSRomV1aMB
	3iBpAyfDEDoKsfWjguIQMmlZSR/sQ6iEYlezBCisRbp2QWH6fzwZVoVmSq4joBmAhJEoZELZp3dkn
	9xb9x5sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rncB8-00000006n9O-0O3b;
	Fri, 22 Mar 2024 10:31:14 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rncB5-00000006n7j-0gWb;
	Fri, 22 Mar 2024 10:31:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AA44C6120C;
	Fri, 22 Mar 2024 10:31:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D14AC433F1;
	Fri, 22 Mar 2024 10:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711103469;
	bh=UUEqLZY926OzvcyM4AzY60Au8Cf9w6FnpcBoTROOC0k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pebyrOqZ/kkpqhT9lPzfQtwwYMJZXvaiMu1gMatvg2tgMHJx9IioiiVWvx6uypQmY
	 G/+r7pU9Jgs3J0a7YPe+2veMpKADZtPs21Zw/oM9KFcS6Dcsgs/7ttzl3fMUxNa8Pr
	 dO8CrMuq+3EZ8rX1bSbqZlMQJwziz0ZsoPM8awtnIUckF0VzJVI9/BgUGId1UxPm88
	 gZ+Y9bPzhqklJGCKQ+I+JqI1RTFiwE9WRYQvFkqi6h7gaSgzxPQG2JqiPslpfJvebj
	 DF69NSp5qjQsF1r5o0lmY15dZuZGOCb8c5XIrewVUOfZA+1A5oWDhfnhAuYEYw1DOL
	 u81rcgOIJaHGg==
Date: Fri, 22 Mar 2024 11:31:06 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Sui Jingfeng <sui.jingfeng@linux.dev>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Sebastian Wick <sebastian.wick@redhat.com>, Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-sunxi@lists.linux.dev
Subject: Re: [v10,20/27] drm/connector: hdmi: Add Infoframes generation
Message-ID: <20240322-loose-resourceful-bullmastiff-92cfaf@houat>
References: <20240321-kms-hdmi-connector-state-v10-20-e6c178361898@kernel.org>
 <07125064-2a78-4515-bb48-655f2aec140f@linux.dev>
MIME-Version: 1.0
In-Reply-To: <07125064-2a78-4515-bb48-655f2aec140f@linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_033111_360959_B8673DD7 
X-CRM114-Status: GOOD (  21.06  )
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
Content-Type: multipart/mixed; boundary="===============8136971129691049581=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8136971129691049581==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5rd3vuyyvq3awglq"
Content-Disposition: inline


--5rd3vuyyvq3awglq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Mar 22, 2024 at 05:53:07AM +0800, Sui Jingfeng wrote:
> Hi,
>=20
>=20
> On 2024/3/21 23:29, Maxime Ripard wrote:
> > Infoframes in KMS is usually handled by a bunch of low-level helpers
> > that require quite some boilerplate for drivers. This leads to
> > discrepancies with how drivers generate them, and which are actually
> > sent.
> >=20
> > Now that we have everything needed to generate them in the HDMI
> > connector state, we can generate them in our common logic so that
> > drivers can simply reuse what we precomputed.
> >=20
> > Signed-off-by: Maxime Ripard <mripard@kernel.org>
> > ---
> >   drivers/gpu/drm/Kconfig                            |   1 +
> >   drivers/gpu/drm/drm_atomic_state_helper.c          | 338 ++++++++++++=
+++++++++
> >   drivers/gpu/drm/drm_connector.c                    |  14 +
> >   .../gpu/drm/tests/drm_atomic_state_helper_test.c   |   1 +
> >   drivers/gpu/drm/tests/drm_connector_test.c         |  12 +
> >   include/drm/drm_atomic_state_helper.h              |   8 +
> >   include/drm/drm_connector.h                        | 109 +++++++
> >   7 files changed, 483 insertions(+)
> >=20
> > diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
> > index 16029435b750..3d3193c7aa5f 100644
> > --- a/drivers/gpu/drm/Kconfig
> > +++ b/drivers/gpu/drm/Kconfig
> > @@ -97,10 +97,11 @@ config DRM_KUNIT_TEST
> >   	  If in doubt, say "N".
> >   config DRM_KMS_HELPER
> >   	tristate
> >   	depends on DRM
> > +	select DRM_DISPLAY_HDMI_HELPER
>=20
> Should we select DRM_DISPLAY_HELPER here? Otherwise there will have
> some compile error emerged with default config.

Which default config are you talking about? This compiles fine with all
drm-misc defconfig, x86 defconfig and allmodconfig.

Maxime

--5rd3vuyyvq3awglq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZf1d6QAKCRDj7w1vZxhR
xfhQAQCu0NBIAdBH+cxZxEu6wIBjCqIn1oD+nTHDxOSsluuItwEA9Oy60mNpP4Om
Xu9L4CIP02hqE9XIyC9VujJM0cW/LQA=
=XSYZ
-----END PGP SIGNATURE-----

--5rd3vuyyvq3awglq--


--===============8136971129691049581==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8136971129691049581==--

