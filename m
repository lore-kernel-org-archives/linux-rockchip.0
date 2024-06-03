Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25104C25B76
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Jun 2024 09:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UTyOfxRDv9ZaCOYt2qn4aEzjCae45GI7npfs7j9JIeY=; b=n6lQJxJQcWHFz95af/BCseQ9k7
	9f/9FTscHadjWeyiITyQ9diEl6XxgZ17Ttpf0dwDxr+X8cP63gm/hVaUTm2wOPzPbTIiyCWo2Qq7E
	W6+750fLA8oxh05cIKFfeGETL9B0XBsvMX7Edn3a9RigZVU0pawAE70CXXrHh9tYYZMarBSDzckn6
	E2xdi6/GekdZhTF0dIzQ2xa9VuX7l8j+oZq03y3ZsUDco/RaYTKLIdTVQP7IyYEv6tERM4s2ClS86
	B08bo8Ggh0R8JXSPrNpFsf+1EOywSvby02dX8/vzSKJSuiHk58j2PsHMjLPEIlPkbDKkKpBx0eSwg
	K9k9ZSQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE3qY-0000000GAgU-2C1a;
	Mon, 03 Jun 2024 09:19:18 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE3qU-0000000GAeM-2HCP;
	Mon, 03 Jun 2024 09:19:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1DB0160C96;
	Mon,  3 Jun 2024 09:19:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53725C2BD10;
	Mon,  3 Jun 2024 09:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717406352;
	bh=8xgDdE1s0Sy7MSL/lvwJ5vd91bhOXjXzA/bKRupcguk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NKWfADtTehZuSolnbCX4vpsNlZ7jbsxupSZd4OJekHLJoq5v46n8U4bLUwjSuVGhP
	 yHhW+Fr3gs3RjmXj0ctGg/HqXwmXF8N8oQ8ic4hwW+q2XrTYwmoX1go5s7WJVULgbA
	 K1xOIoq2LrQAwb/zVdnUSnmRMLhyUDmH3z0IhwPxIRXr7HyVU3E6iFQh5cUmE+ep3h
	 nldVKWnC7OeSLj3E4quZram4nv3gkRqS+NDgRB+M6KvOvluAdoGIo7YrTc+yRbVzz4
	 5R6LfuFWKVYuhynKmG/Y2a/z5bwzwa3eeVc+DVhL0NfxxlF6gVa6LOwtF+P0SzYYHP
	 vPJKPDho5gMxA==
Date: Mon, 3 Jun 2024 11:19:10 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Andy Yan <andy.yan@rock-chips.com>, 
	Hans Verkuil <hverkuil@xs4all.nl>, Sebastian Wick <sebastian.wick@redhat.com>, 
	Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, Sui Jingfeng <sui.jingfeng@linux.dev>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Pekka Paalanen <pekka.paalanen@collabora.com>, 
	=?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>, Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v15 00/29] drm/connector: Create HDMI Connector
 infrastructure
Message-ID: <20240603-nippy-ludicrous-caracara-e02e3c@houat>
References: <20240527-kms-hdmi-connector-state-v15-0-c5af16c3aae2@kernel.org>
 <874jadesaj.fsf@intel.com>
MIME-Version: 1.0
In-Reply-To: <874jadesaj.fsf@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240603_021914_741213_782EFCCD 
X-CRM114-Status: GOOD (  15.13  )
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
Content-Type: multipart/mixed; boundary="===============5274939006625056726=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5274939006625056726==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="vh7l4xzntgu42oo4"
Content-Disposition: inline


--vh7l4xzntgu42oo4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Jani,

On Fri, May 31, 2024 at 09:43:16PM GMT, Jani Nikula wrote:
> On Mon, 27 May 2024, Maxime Ripard <mripard@kernel.org> wrote:
> > Let me know what you think,
>=20
> Sorry to report that this series generates a bunch of kernel-doc
> warnings in include/drm/drm_connector.h. Documenting nested struct
> members doesn't work as smoothly as you'd expect:
>
> ../include/drm/drm_connector.h:1138: warning: Excess struct member 'broad=
cast_rgb' description in 'drm_connector_state'
> ../include/drm/drm_connector.h:1138: warning: Excess struct member 'infof=
rames' description in 'drm_connector_state'
> ../include/drm/drm_connector.h:1138: warning: Excess struct member 'avi' =
description in 'drm_connector_state'
> ../include/drm/drm_connector.h:1138: warning: Excess struct member 'hdr_d=
rm' description in 'drm_connector_state'
> ../include/drm/drm_connector.h:1138: warning: Excess struct member 'spd' =
description in 'drm_connector_state'
> ../include/drm/drm_connector.h:1138: warning: Excess struct member 'vendo=
r' description in 'drm_connector_state'
> ../include/drm/drm_connector.h:1138: warning: Excess struct member 'is_li=
mited_range' description in 'drm_connector_state'
> ../include/drm/drm_connector.h:1138: warning: Excess struct member 'outpu=
t_bpc' description in 'drm_connector_state'
> ../include/drm/drm_connector.h:1138: warning: Excess struct member 'outpu=
t_format' description in 'drm_connector_state'
> ../include/drm/drm_connector.h:1138: warning: Excess struct member 'tmds_=
char_rate' description in 'drm_connector_state'
> ../include/drm/drm_connector.h:2112: warning: Excess struct member 'vendo=
r' description in 'drm_connector'
> ../include/drm/drm_connector.h:2112: warning: Excess struct member 'produ=
ct' description in 'drm_connector'
> ../include/drm/drm_connector.h:2112: warning: Excess struct member 'suppo=
rted_formats' description in 'drm_connector'
> ../include/drm/drm_connector.h:2112: warning: Excess struct member 'infof=
rames' description in 'drm_connector'
> ../include/drm/drm_connector.h:2112: warning: Excess struct member 'lock'=
 description in 'drm_connector'
> ../include/drm/drm_connector.h:2112: warning: Excess struct member 'audio=
' description in 'drm_connector'
>=20
> Noticed this when I was rebasing [1]. Having that merged would find
> issues in headers at build time instead of 'make htmldocs'.
>=20
> In the mean time, this is the quick reproducer:
>=20
> $ scripts/kernel-doc -none include/drm/drm_connector.h

Thanks for the report and the reproducer. I have to admit I have no idea
how to fix it, do you have a suggestion?

Maxime

--vh7l4xzntgu42oo4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZl2KjgAKCRAnX84Zoj2+
dnjdAYCh58HSx5UyDwrdyTzw/8fwdR9giynUz0iYzk+dNWJEo48JrCLQ4Oc8ASYX
u5pApZIBf0v8uDQCp2JLsoeGPjt70PJzOz8ltjERxngYWkCqY3lGDMjCu5zl4oIm
efWmURI3ow==
=SmU7
-----END PGP SIGNATURE-----

--vh7l4xzntgu42oo4--


--===============5274939006625056726==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5274939006625056726==--

