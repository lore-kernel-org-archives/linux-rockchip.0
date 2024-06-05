Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06882C27C52
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 09:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/ZQXy+jPY1Ef9oJd9TIQk6Vg9sSFpNn85BQJEwvZRZI=; b=obv5APqAqs/+AQG7DxKZQVYZB0
	bMKEsEKpeSwTUlvJjOIrajnB8kt0xmu0Q/zCFQf/Ai54X8KvC915elc4swurarp4HRa34zp83Urx7
	kCQ7VuMaXaqwQnjKMEBsVohyJsIXUG9fYHdp8WF15fb13zsaqmp+2qCMluTGywJcwQ5D4kM1UrWKK
	T6q+sHaf2BdO7362H6JaakU2S2s5xh7CpTzJuGOeKC5j0iJKEIdew9CjYCMODAIbUx8SbOG/C+tmD
	/k6zQ9V5mC8xzD6oiQauWxF+JsQ1M1oN6k3Z8ih8sjp+XYqCAifiGpEu7eRWTepOY3B1lKfsYjF+J
	nqGe4liA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEn7f-00000005SEn-1KtK;
	Wed, 05 Jun 2024 09:39:59 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEn7b-00000005SBu-2u9b;
	Wed, 05 Jun 2024 09:39:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id AF5B0CE16F2;
	Wed,  5 Jun 2024 09:39:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76EC7C3277B;
	Wed,  5 Jun 2024 09:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717580391;
	bh=J7yRwF0afgwLgQZjPbXaZOXLYV2ukwM/posUTXQ8C5Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TlcUulu7IAzlmvbgh4sCqt7VcDrZrIkd7siZ3UYGrUQ2f9g+CNuiuVsCX7CDMG81C
	 6h2AWNO0uyGG+gq6YxEJd3yLCiPiSXamxkvWu8ZBZaSGUAQu0uOEIEUFodLJ5P0UFx
	 y8nD6ZpSdYt3t/RnSvbdhoFkBboFv83FR+XyyIwOS7QRacG3XNg9pUzAh0UdOdFb7l
	 tpQhuvO4VWVJ6nzSqybpve6CuXCq74yAjlDV5ME+T7PAfSHF5TO63NuNKaxzhjFM5I
	 HCukHj9uzXsUa2t94UMNuWGO5kRct2bQHn16RS/GeSjg+3f12/j/5LstjqJuzLthZy
	 JWaa4TnqcLi6w==
Date: Wed, 5 Jun 2024 11:39:48 +0200
From: Maxime Ripard <mripard@kernel.org>
To: neil.armstrong@linaro.org
Cc: Andy Yan <andyshrk@163.com>, 
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Heiko Stuebner <heiko@sntech.de>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Sandy Huang <hjc@rock-chips.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mark Yao <markyao0591@gmail.com>, Andy Yan <andy.yan@rock-chips.com>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>, 
	Luis de Arquer <ldearquer@gmail.com>, Algea Cao <algea.cao@rock-chips.com>
Subject: Re: [PATCH 00/14] Add initial support for the Rockchip RK3588 HDMI
 TX Controller
Message-ID: <20240605-logical-piculet-of-democracy-6bc732@houat>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
 <a4b22708-e85d-448a-8145-244b49bca053@linaro.org>
 <ab0a6372-091b-4293-8907-a4b3ff4845c0@rock-chips.com>
 <11359776.NyiUUSuA9g@phil>
 <ef60403f-078f-411a-867b-9b551e863f56@linaro.org>
 <b8066150-c147-4eb6-9f7a-2bd0268c274e@collabora.com>
 <4456bc5a.9b2d.18fe7b76790.Coremail.andyshrk@163.com>
 <01bde68a-88a7-46eb-860c-1375aa730bec@linaro.org>
MIME-Version: 1.0
In-Reply-To: <01bde68a-88a7-46eb-860c-1375aa730bec@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_023956_132915_0E7562DE 
X-CRM114-Status: GOOD (  45.57  )
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
Content-Type: multipart/mixed; boundary="===============6237642601260241312=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6237642601260241312==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="4lab3i7lwv5psiqg"
Content-Disposition: inline


--4lab3i7lwv5psiqg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 05, 2024 at 11:28:41AM GMT, neil.armstrong@linaro.org wrote:
> Hi,
>=20
> On 05/06/2024 11:25, Andy Yan wrote:
> >=20
> > Hi,
> >=20
> > At 2024-06-05 04:33:57, "Cristian Ciocaltea" <cristian.ciocaltea@collab=
ora.com> wrote:
> > > On 6/3/24 4:08 PM, neil.armstrong@linaro.org wrote:
> > > > Hi,
> > > >=20
> > > > On 03/06/2024 15:03, Heiko Stuebner wrote:
> > > > > Am Montag, 3. Juni 2024, 14:14:17 CEST schrieb Andy Yan:
> > > > > > Hi Neil:
> > > > > >=20
> > > > > > On 6/3/24 16:55, Neil Armstrong wrote:
> > > > > > > Hi Christian,
> > > > > > >=20
> > > > > > > On 01/06/2024 15:12, Cristian Ciocaltea wrote:
> > > > > > > > The RK3588 SoC family integrates a Quad-Pixel (QP) variant =
of the
> > > > > > > > Synopsys DesignWare HDMI TX controller used in the previous=
 SoCs.
> > > > > > > >=20
> > > > > > > > It is HDMI 2.1 compliant and supports the following feature=
s, among
> > > > > > > > others:
> > > > > > > >=20
> > > > > > > .
> > > > > > >=20
> > > > > > > ..
> > > > > > >=20
> > > > > > > > * SCDC I2C DDC access
> > > > > > > > * TMDS Scrambler enabling 2160p@60Hz with RGB/YCbCr4:4:4
> > > > > > > > * YCbCr4:2:0 enabling 2160p@60Hz at lower HDMI link speeds
> > > > > > > > * Multi-stream audio
> > > > > > > > * Enhanced Audio Return Channel (EARC)
> > > > > > > -> Those features were already supported by the HDMI 2.0a com=
pliant
> > > > > > > HW, just
> > > > > > > list the _new_ features for HDMI 2.1
> > > > > > >=20
> > > > > > > I did a quick review of your patchset and I don't understand =
why you
> > > > > > > need
> > > > > > > to add a separate dw-hdmi-qp.c since you only need simple var=
iants
> > > > > > > of the I2C
> > > > > > > bus, infoframe and bridge setup.
> > > > > > >=20
> > > > > > > Can you elaborate further ? isn't this Quad-Pixel (QP) TX con=
troller
> > > > > > > version
> > > > > > > detectable at runtime ?
> > > > > > >=20
> > > > > > > I would prefer to keep a single dw-hdmi driver if possible.
> > > > > >=20
> > > > > >=20
> > > > > >=20
> > > > > > The QP HDMI controller is a completely different variant with t=
otally
> > > > > > different
> > > > > > registers layout, see PATCH 13/14.
> > > > > > I think make it a separate driver will be easier for developmen=
t and
> > > > > > maintenance.
> > > > >=20
> > > > > I'm with Andy here. Trying to navigate a driver for two IP blocks=
 really
> > > > > sounds taxing especially when both are so different.
> > >=20
> > > Thank you all for the valuable feedback!
> > >=20
> > > > I agree, I just wanted more details than "variant of the
> > > > Synopsys DesignWare HDMI TX controller", if the register mapping is=
 100%
> > > > different, and does not match at all with the old IP, then it's ind=
eed time
> > > > to make a brand new driver, but instead of doing a mix up, it's tim=
e to
> > > > extract
> > > > the dw-hdmi code that could be common helpers into a dw-hdmi-common=
 module
> > > > and use them.
> > >=20
> > > Sounds good, will handle this in v2.
> > >=20
> > > > As I see, no "driver" code can be shared, only DRM plumbings, so pe=
rhaps
> > > > those
> > > > plumbing code should go into the DRM core ?
> > > >=20
> > > > In any case, please add more details on the cover letter, including=
 the
> > > > detailed
> > > > HW differrence and the design you chose so support this new IP.
> > >=20
> > > Andy, could you please help with a summary of the HW changes?
> > > The information I could provide is rather limited, since I don't have
> > > access to any DW IP datasheets and I'm also not familiar enough with =
the
> > > old variant.
> > >=20
> >   Accurately, we should refer to it as an entirely new IP=EF=BC=8Cit ha=
s nothing in common with
> > the current mainline dw-hdmi=E3=80=82 The only  commonality is that the=
y both come from
> > Synopsys DesignWare=EF=BC=9A
> > =EF=BC=881=EF=BC=89It has a 100% different register mapping
> > =EF=BC=882=EF=BC=89It supports FRL and DSC
> > =EF=BC=883=EF=BC=89different configuration flow in many places=E3=80=82
> >=20
> > So I have the same feeling with Heiko and Maxime=EF=BC=9A
> > The DW_HDMI_QP should have a  separate driver and with it's  own CONFIG=
  such as DRM_DW_HDMI_QP  in Kconfig.
> > and the rockchip part should also be split from dw_hdmi-rockchip.c.
> > I am sorry we mixed them in dw_hdmi-rockchip.c when we develop the bsp =
driver=EF=BC=8Cbut we really regretted this decision
> > when  we repeatedly broke compatibility with dw-hdmi on other socs=E3=
=80=82
>=20
> Yes please, and as I say, if there's code common with the old dw-hdmi, pl=
ease add a common
> module if this code can't be moved in core bridge helpers.

And chances are that the common code is actually there to deal with HDMI
spec itself and not really the hardware, which is solved by moving both
drivers to the HDMI helpers that just got merged.

Maxime

--4lab3i7lwv5psiqg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZmAyYAAKCRAnX84Zoj2+
dvaqAX4y01HbYFGYRCxGaafC276+nuXwpR95Ld6A8is239CcMgThYuCv5bGLZuLM
Y5UKnKkBf3NBz6lmlnwNKqUuPwmYn9qW/A7HeWtMIN7NIryQcd925sIKivtFZ0PF
L1JgyrfHwA==
=KSkS
-----END PGP SIGNATURE-----

--4lab3i7lwv5psiqg--


--===============6237642601260241312==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6237642601260241312==--

