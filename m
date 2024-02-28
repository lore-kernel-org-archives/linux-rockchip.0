Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ADD9C5478C
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Feb 2024 16:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bukTiHN043XaDNt0OczXD53rmmcpDGqdVeauqnpDuZE=; b=m38m1ilsAH8jwxyFaUHV8MYsdw
	QQVC1/wTlbNzYny2dwBE3uF5eQISLAt1iKj0UKSTKwz283y4diZcj/hLhj7QtqUOkRBj6V7P+/ULm
	mo51/kS5zv8hRpt45X5WlFc/Ubrpd4dFLwkybXYlMG+YakN18MjznPchj9Lt5GldKIyzJeaGRBgcu
	+rDrQutFFKtDazFR4pTqfYUkFyVNWNt8jVa3YYsAfUfro+lGUgJHh1qUuFt3yHj1A171FmrR38G+R
	EewRJIKMoO1IqHS2UVJ5iQncN8RQoNTbspi3GsrldO2clQnid71ad+YAWZNNE4ulgSRMRN4p/2irX
	pJ9MMImA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfMc7-0000000A59I-3ec5;
	Wed, 28 Feb 2024 16:16:59 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfMc3-0000000A56m-3asv;
	Wed, 28 Feb 2024 16:16:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 776F4618D8;
	Wed, 28 Feb 2024 16:16:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB65FC433C7;
	Wed, 28 Feb 2024 16:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709137011;
	bh=fErWKInGULVeVxqgQI2zMH4IGVMKKtYkJXd20L7xtH0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sZmZYn/wQtnIX3Ao7DScrIzuZTZ3OmuPwAm6201EzNpKwrM7pobEvjOs+wRU2Rk/f
	 NYhJ69FIupcA1l5fjn3ecGzgrtRyNeFj2bPjLMHFsrXnNUlO+ifepw73K5DWTBVwiS
	 /8ltKWfS6D7ubOtpSSG06ul0hV/Jekp8/X2T0UTM8hCgiOLmRRLKIQII2ZbMPQkHwq
	 WVD7NzgaXHzXS4SfcgoP8RiknLVnNzZ+B+/ZqRBuHgbNNtwtYj775EGgo7PkmEN5pw
	 ykI0fXySHnqeNMg+b7D/GX3TQYIXLmf3yjvgnZOtfpEepUFYWLCkU0s64SjBCmPPRq
	 0/Rl4/cJstcDQ==
Date: Wed, 28 Feb 2024 17:16:48 +0100
From: Maxime Ripard <mripard@kernel.org>
To: =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>
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
Subject: Re: [PATCH v7 29/36] drm/vc4: tests: Remove vc4_dummy_plane structure
Message-ID: <20240228-nifty-flashy-shrew-905edc@houat>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
 <20240222-kms-hdmi-connector-state-v7-29-8f4af575fce2@kernel.org>
 <244fe6b9-f295-4c85-908a-014ada0033fa@igalia.com>
 <y7mxj2i56h7bcnonywjdf2eirdqil66k32drw3wb3z7juqr3ph@4u24mlrvxslc>
 <2693770c-0d27-4186-87e1-e55a0a5f17a5@igalia.com>
MIME-Version: 1.0
In-Reply-To: <2693770c-0d27-4186-87e1-e55a0a5f17a5@igalia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_081656_019360_7FD698F6 
X-CRM114-Status: GOOD (  21.94  )
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
Content-Type: multipart/mixed; boundary="===============3725142905020437712=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3725142905020437712==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bzsukvurqrxvmgmq"
Content-Disposition: inline


--bzsukvurqrxvmgmq
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 27, 2024 at 07:45:01PM -0300, Ma=EDra Canal wrote:
> Hi Maxime,
>=20
> On 2/27/24 10:02, Maxime Ripard wrote:
> > Hi Ma=EDra,
> >=20
> > Thanks for you reviews!
> >=20
> > On Mon, Feb 26, 2024 at 09:29:32AM -0300, Ma=EDra Canal wrote:
> > > On 2/22/24 15:14, Maxime Ripard wrote:
> > > > The vc4_dummy_plane structure is an exact equivalent to vc4_plane, =
so we
> > >=20
> > > Maybe I understood incorrectly, but isn't the vc4_dummy_plane structu=
re
> > > equivalent to drm_plane?
> >=20
> > Both statements are true :)
> >=20
> > vc4 itself uses vc4_plane to holds its plane-related content, but it
> > turns out that there's nothing in that structure anymore and vc4_plane
> > =3D=3D drm_plane.
> >=20
> > In our mock driver, we have another structure meant to store the
> > mock-plane-related content which doesn't have anything in it anymore,
> > and is thus equivalent to vc4_plane.
> >=20
> > So, basically, vc4_dummy_plane =3D=3D vc4_plane =3D=3D drm_plane.
> >=20
> > This patch is only about getting rid of vc4_dummy_plane though.
> >=20
> > Is it clearer?
> >=20
>=20
> Yeah, with that pointed out, you can add my:

I'll rephrase for the next version then

> Reviewed-by: Ma=EDra Canal <mcanal@igalia.com>

Thanks!
Maxime

--bzsukvurqrxvmgmq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZd9ccAAKCRDj7w1vZxhR
xQ/aAQDzU4vVfau883o71TzEeE+lysJ38XPUbtp9Q818fxbvSAD/TfNo9QsQjVLO
TjOhPuL8arGdUmexXtTS6jTunClBzAA=
=6H0O
-----END PGP SIGNATURE-----

--bzsukvurqrxvmgmq--


--===============3725142905020437712==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3725142905020437712==--

