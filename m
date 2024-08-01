Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6FB1C3DA64
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Aug 2024 08:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8NL6N7rE4vx+9KJX9nSdAw+fRoBXTzc0Z3m4CunztoQ=; b=wB0yVITdbqjf3BR7yuBmqheI/n
	V+vzAp+rvahS5tA/wkTDY4uZg31xWZbNjW8H6xVqoOPaPGm6fkI4wRSCsYP+UcwZGXifErgomew3V
	Kb//WZ7ZMH6y+NqANzqBhhgMgM7lkiJPjZwSbGIhofF30d3jrePxs+ymlAVnjhlpr17Fh6hVCLIx0
	6sxHjAPfsWCYp+QYm5OsYv1N4RMrDaYKHkyyE3EfWr0hQOvfgVhS0YAxt0wNL8p3H/nU8bM5LX/BE
	a+S5WBhJFqYfARopiPBhAkSDjgeNWHOls6H0JWU4S3maP1tNZkfERSQYFEcvk09nJ+qDu/XBEIbEB
	IDgQXDYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZR6O-00000004KqL-3DvY;
	Thu, 01 Aug 2024 08:24:00 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZR5s-00000004KcM-1RfR;
	Thu, 01 Aug 2024 08:23:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 3FFFACE18A8;
	Thu,  1 Aug 2024 08:23:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67EE0C4AF09;
	Thu,  1 Aug 2024 08:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722500604;
	bh=Z51j2yPPzqzqUbfDzj+Co7O6I0fAkjzKGVvNCuTWfG0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pLPPm9tY25L0+aND/5OqSFFujF5t/EgH5zvh599BAyny/hYainjuQBiogHSNCgAGO
	 Y7kzwEXsRDNBjv54Y/EEqw4BYKXaEFCn7v8OjHApMbOQHaqfcokUckHAbLhZHpKJe5
	 hd3tMOKqmpZDVv1s9l/YmjAwOMeZjPTUNRJQ8L7MZhaA5CUl2Xi2pKuygsj4hNtTxg
	 4pvoVD8Y9Q30b4LU+wzujooBFZ1aBPO2sHxy2t1ySYeoom2lG7hyga67Rpkh3+fR+A
	 rNWCSOBwmn/R7rA9x0qk8d9C7fR34HD8VujJRj+ZEbiHZzhonhHNAlXzDLw+9fMPxZ
	 5tbr1xSKq7UDw==
Date: Thu, 1 Aug 2024 10:23:22 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Andy Yan <andy.yan@rock-chips.com>, 
	Sebastian Wick <sebastian.wick@redhat.com>, Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, Dave Stevenson <dave.stevenson@raspberrypi.com>, 
	Sui Jingfeng <sui.jingfeng@linux.dev>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	Pekka Paalanen <pekka.paalanen@collabora.com>, =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>, 
	Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v15 00/29] drm/connector: Create HDMI Connector
 infrastructure
Message-ID: <20240801-fluffy-cuttlefish-of-abracadabra-389feb@houat>
References: <20240527-kms-hdmi-connector-state-v15-0-c5af16c3aae2@kernel.org>
 <e33dc3c4-9d7d-4c85-97db-b6fd94142131@xs4all.nl>
MIME-Version: 1.0
In-Reply-To: <e33dc3c4-9d7d-4c85-97db-b6fd94142131@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_012328_758746_7475A035 
X-CRM114-Status: GOOD (  19.72  )
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
Content-Type: multipart/mixed; boundary="===============6521268181337907467=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6521268181337907467==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="2k5tde7ytku6vb3x"
Content-Disposition: inline


--2k5tde7ytku6vb3x
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Hans,

On Wed, Jul 31, 2024 at 04:56:16PM GMT, Hans Verkuil wrote:
> Hi Maxime,
>=20
> On 27/05/2024 15:57, Maxime Ripard wrote:
> <snip>
>=20
> > Hans Verkuil also expressed interest in implementing a mechanism in v4l2
> > to retrieve infoframes from HDMI receiver and implementing a tool to
> > decode (and eventually check) infoframes. His current work on
> > edid-decode to enable that based on that series can be found here:
> > https://git.linuxtv.org/hverkuil/edid-decode.git/log/?h=3Dhverkuil
>=20
> Since this patch series is now merged in mainline I also pushed support
> for parsing InfoFrames to the edid-decode git repo.
>=20
> I believe the parsing part of the InfoFrames is complete, but the conform=
ity
> checks for the AVI and HDMI InfoFrames are still work-in-progress. But it
> should be easier to develop this now that is merged.
>=20
> The git repo for edid-decode is here: https://git.linuxtv.org/edid-decode=
=2Egit/
>=20
> I added test files to the test/if directory, and if you run:
>=20
> edid-decode -I audio.test -I avi.test -I vendor.test -I spd.test edid.tes=
t -c
>=20
> you'll get the output below.

That's awesome to hear, I'll send a patch for the KMS documentation to
mention it=20

Thanks!
Maxime

--2k5tde7ytku6vb3x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZqtF9QAKCRAnX84Zoj2+
dgiBAX4lptP5eciLgerJmky6HFfb4t9iXMA0gMwf454GyprB/6H1qL24e8eHqpXe
LgfVUI8BfRJ6NBLAdSH0nE87Xf5l/pBV5IacFmB10VRbZ+YSt/9xWQ37E0U2KJAl
R21moyCKpQ==
=3fHv
-----END PGP SIGNATURE-----

--2k5tde7ytku6vb3x--


--===============6521268181337907467==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6521268181337907467==--

