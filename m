Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE0B8C54E71
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Mar 2024 12:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HIuexmbSvDpER6m+kJnug0ExVeNC/VXivl70RjQ34r4=; b=dyPEMkwyPI5mjVFdVwQg3RoTnC
	P3uag5gJkJGUjti++iYLlBRFP52LmzjDDeq91T7kjEpNspv3rDu4P00Gw9wrlNZqbkFfL8nU/BjQB
	5wZwAnkKnFh84JH+sscY3ej2UZYAt1tfIfM2vFUzWKBYrKgMYtxzn+f7YGlE6G3KjjyZzNINM8k1x
	qD9QoZsqo8NBZch+ALGvaiebnSqy9ARnh/4b6xvNSdjlqt8M4GBkEBmyocu6VlWKKRCMBgzfZaUt/
	9q5TlwVlrwIYBXX+v42RpsKk/l5/85GD0ivRPNgwXkxv4gZVrOqV4iZvCA8re5sHJYAJGmkJdJlOE
	IlO9WE6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rne3u-000000078Nc-2DpE;
	Fri, 22 Mar 2024 12:31:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rne3r-000000078Ly-1M7g;
	Fri, 22 Mar 2024 12:31:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B09FF6134B;
	Fri, 22 Mar 2024 12:31:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09A77C433C7;
	Fri, 22 Mar 2024 12:31:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711110710;
	bh=QlyE6XyvtK5YH4auzoYHbK4QQ96PMKT1SN7P95GQyFY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GQncd7zOWU2lzxFreJmwqfG9yf1KhjFzLXGssQ1hhk5T0UKSaYEGZ6ary5hJPu1HU
	 olKpkrPJ0gCBlwJ2yKEoHXBrlEbhWKNXF0R/oKjV5ZKtkd9l0hiiSuc2CVWPYyDmuv
	 ITIfayGHMp/DzLD4GvK/BDJ9HR+FL+2mlPJPZpcAJAOcrzIXapdM82MMCdlRm/B4cm
	 UYLTu308/ix2n/Xw6ZoJhp3FGCxTmqqraSjn9JyzqfG7c00V9Xz0iD7aztkwK5zE0J
	 Nsby0PX8HX3EvkNXf4u+5v++RAgAThY13/Otrjznwg3v+tEVrU+qORoLhtthyf7QZV
	 hn2yy43ReMKTA==
Date: Fri, 22 Mar 2024 13:31:48 +0100
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
Message-ID: <20240322-steadfast-tanuki-from-mars-b5ea5f@houat>
References: <20240321-kms-hdmi-connector-state-v10-20-e6c178361898@kernel.org>
 <07125064-2a78-4515-bb48-655f2aec140f@linux.dev>
 <20240322-loose-resourceful-bullmastiff-92cfaf@houat>
 <7835e928-7d09-446e-91dd-13a0fa549bc2@linux.dev>
MIME-Version: 1.0
In-Reply-To: <7835e928-7d09-446e-91dd-13a0fa549bc2@linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_053151_424824_1B7603F3 
X-CRM114-Status: GOOD (  12.50  )
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
Content-Type: multipart/mixed; boundary="===============1172106347187070870=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1172106347187070870==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ygdzto2cjdjjo7zs"
Content-Disposition: inline


--ygdzto2cjdjjo7zs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 22, 2024 at 07:13:54PM +0800, Sui Jingfeng wrote:
> Hi,
>=20
>=20
> On 2024/3/22 18:31, Maxime Ripard wrote:
> > Which default config are you talking about? This compiles fine with all
> > drm-misc defconfig, x86 defconfig and allmodconfig.
>=20
> The drm_hdmi_avi_infoframe_colorimetry() function is belong to the drm_di=
splay_helper.ko
> kernel module, it get called from hdmi_generate_avi_infoframe() in drm_at=
omic_state_helper.c.
> While drm_atomic_state_helper.c belongs to drm_kms_helper.ko. Therefore d=
rm_kms_helper.ko
> is dependent on drm_display_helper.ko implicitly. So we probably should s=
elect it.

Right. I was asking which config are you using to generate that build error

Maxime

--ygdzto2cjdjjo7zs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZf16MwAKCRDj7w1vZxhR
xVPkAP9G35ser3LI9Mkz4UPsJ7hdxEY40m/H7avmJllz/P8YowD+LcjpoKgFLzQ2
L2LkEn9vRNdhZy+7qFgJZ6RKstIwPAM=
=B6jC
-----END PGP SIGNATURE-----

--ygdzto2cjdjjo7zs--


--===============1172106347187070870==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1172106347187070870==--

