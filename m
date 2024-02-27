Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 482D1C54798
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 13:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VMfdWB5KHeUNz2YTrtWeQ/Qv+A5temeGTgeq2qOB4Ic=; b=mppUozUvTCLMpeNpTTcr1+70CE
	QAvcokNSISFKxwPulFS8y6Iv7uv87afNCSUG2TAiGuvF4mG3PpSd9L7oNLNcspOk4GzbTY7MPmaVo
	Y6DCObmJlf3OB/TbVOyGIL+hw3a2YxBkWtXxjGiBK77cimS9y6Uofr/TW2ICeGZESAhD28UezOA8t
	2C/oT+OgWEylgxZLbDpSr1DC4gIR2NzewpdtiiVHugU5isrQ/FaUlJAemGPYPAcaPI+D+8CH5wLw2
	vbkNsubcpeLM2PYI3wyAk5pPz9yNw5F6aVJFz1WPhS2UFXafcI9UNma8aw2WJ+VMMz0b1PVwDkGgW
	QhwbTKRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rex6q-00000005IZP-2UUz;
	Tue, 27 Feb 2024 13:03:00 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rex6m-00000005IXg-225Y;
	Tue, 27 Feb 2024 13:02:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C02CF614E5;
	Tue, 27 Feb 2024 13:02:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EFF9C433C7;
	Tue, 27 Feb 2024 13:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709038975;
	bh=K8zljY/jOjHfxijTuYAHOGluUedQxnvvUsTqJTxkXzg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HpmbbDRj7DsgN7C+l0Nsac1JlsRLWmqQFqIGFCkbGxKteJFERSFF+sy5GSXwIUKOl
	 1kkVc2T/o/MNqrMmzbg17m2eYF6giueFjm/iXh9pf2CTrYHd47O+0DLs4CEziLmag8
	 lqW9T5vGj5jb4I/IQrlatzFgMDOEdJ/eRHcrhERUkTuHuE8WE+FOtIFVQzNJgQI/lj
	 OFaxV54oZfzgTYDOWj2C6vzyr4cJuzXRtb/dJdW0m/t2DP1h4rYOn8Igyw+lT1MbkT
	 /xuvt7TFgTDGlZKwg3dCxaPdPdNMiNJuceUy7f/c67/fGV4PZe0iHlh4EjMBSjdirU
	 qpD4wU3U97/2A==
Date: Tue, 27 Feb 2024 14:02:52 +0100
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
Message-ID: <y7mxj2i56h7bcnonywjdf2eirdqil66k32drw3wb3z7juqr3ph@4u24mlrvxslc>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
 <20240222-kms-hdmi-connector-state-v7-29-8f4af575fce2@kernel.org>
 <244fe6b9-f295-4c85-908a-014ada0033fa@igalia.com>
MIME-Version: 1.0
In-Reply-To: <244fe6b9-f295-4c85-908a-014ada0033fa@igalia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_050256_590037_3D0C86AF 
X-CRM114-Status: GOOD (  14.04  )
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
Content-Type: multipart/mixed; boundary="===============0901212091133321579=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0901212091133321579==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cwsjmzyidxiy2r5i"
Content-Disposition: inline


--cwsjmzyidxiy2r5i
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Ma=EDra,

Thanks for you reviews!

On Mon, Feb 26, 2024 at 09:29:32AM -0300, Ma=EDra Canal wrote:
> On 2/22/24 15:14, Maxime Ripard wrote:
> > The vc4_dummy_plane structure is an exact equivalent to vc4_plane, so we
>=20
> Maybe I understood incorrectly, but isn't the vc4_dummy_plane structure
> equivalent to drm_plane?

Both statements are true :)

vc4 itself uses vc4_plane to holds its plane-related content, but it
turns out that there's nothing in that structure anymore and vc4_plane
=3D=3D drm_plane.

In our mock driver, we have another structure meant to store the
mock-plane-related content which doesn't have anything in it anymore,
and is thus equivalent to vc4_plane.

So, basically, vc4_dummy_plane =3D=3D vc4_plane =3D=3D drm_plane.

This patch is only about getting rid of vc4_dummy_plane though.

Is it clearer?

Maxime

--cwsjmzyidxiy2r5i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZd3dfAAKCRDj7w1vZxhR
xQB3AQCM6yIbUIAvcz/rSyKw6mmw6G4nrZh7GPft2T1APOLu4wEAylXMYpdYV8KH
P8oZ7t3+gt3/8m9lr6IwSflU4vD4bwI=
=qSeA
-----END PGP SIGNATURE-----

--cwsjmzyidxiy2r5i--


--===============0901212091133321579==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0901212091133321579==--

