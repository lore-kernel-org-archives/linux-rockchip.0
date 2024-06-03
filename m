Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 052DDC25B75
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Jun 2024 16:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NlZ/dmtndWSThCM9+ussbKEJoUfb9QRCfGcJzQS1Sxo=; b=IS/iJdSrWEL/42HEAgrcJRhHLZ
	Eht4ckIgW00Y41afBH1bVC1jyN0HuzNroICP5UAM0c41HxsTJa1ezp9htwl2/WxJ61M8/JV2wiB5U
	x+jDe3NM6OF41ztPSQErIawtuN/PdkKyGAGbRCTRQ/MYKNIOBd3fyUb7cm3I9a/vYPRJkGRO+gjfq
	dkMFA5wrr7fxNptwYsg47CjvenZ9bmIxF+zbjtQKL8gZqqKleI0y+d0ckYeljrOSj7slXSeJguIn0
	18zLJyV5G3oEUCG1+CLOpF1/9PEc1iZzDg1qy/So0kOpYpjeaWvgwQoE1qsSqffCjGYY/sYNGpUuf
	lZrpqtcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEARp-0000000HMUh-09fT;
	Mon, 03 Jun 2024 16:22:13 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEARl-0000000HMSi-13IW;
	Mon, 03 Jun 2024 16:22:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 45E7B60ED6;
	Mon,  3 Jun 2024 16:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75055C32786;
	Mon,  3 Jun 2024 16:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717431728;
	bh=J9BtwLiH5m/8yi2TzzknIpSb4dbESwBD7BOkieFUAmo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Bu+lz/1XWvQlr8sMasYuBapx64iWXKhYYuE32EKqwkwTOey+HseXz0BB7MFLlI85O
	 kPe8OuoeQLtatj+0dQnBSE11+aHY/uHissu22mA7QPGEup2Hllay2U8y+LkCtZp4DG
	 3aefv6kQfoqF4xAaZe7pVlIWmWF9Y+GsLK2MFHFI5c7JgUKtJ0WrFs/K8XnjqwOkkr
	 QQUfznd4Do66OiqXK5PtilHsFIryvPsWf1JLlvAjJh9pUXy6R4D1bjcz5BAa/bb2oq
	 5pJ2MF5f1AcMYkEi5sQdEjOy3hr3+xaolC+z5Rg7kItsSw7297BoxsKLfJ0vkFmy3K
	 V+pk2YU6AvVRw==
Date: Mon, 3 Jun 2024 18:22:05 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: neil.armstrong@linaro.org, 
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Sandy Huang <hjc@rock-chips.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mark Yao <markyao0591@gmail.com>, Andy Yan <andy.yan@rock-chips.com>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>, 
	Luis de Arquer <ldearquer@gmail.com>, Algea Cao <algea.cao@rock-chips.com>
Subject: Re: [PATCH 00/14] Add initial support for the Rockchip RK3588 HDMI
 TX Controller
Message-ID: <20240603-noisy-convivial-boa-d3d862@houat>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
 <a4b22708-e85d-448a-8145-244b49bca053@linaro.org>
 <ab0a6372-091b-4293-8907-a4b3ff4845c0@rock-chips.com>
 <11359776.NyiUUSuA9g@phil>
MIME-Version: 1.0
In-Reply-To: <11359776.NyiUUSuA9g@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240603_092209_413400_4250BB38 
X-CRM114-Status: GOOD (  23.52  )
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
Content-Type: multipart/mixed; boundary="===============6869872305067147722=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6869872305067147722==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="hjyaj4zwc26gvppm"
Content-Disposition: inline


--hjyaj4zwc26gvppm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 03, 2024 at 03:03:12PM GMT, Heiko Stuebner wrote:
> Am Montag, 3. Juni 2024, 14:14:17 CEST schrieb Andy Yan:
> > Hi Neil:
> >=20
> > On 6/3/24 16:55, Neil Armstrong wrote:
> > > Hi Christian,
> > >=20
> > > On 01/06/2024 15:12, Cristian Ciocaltea wrote:
> > >> The RK3588 SoC family integrates a Quad-Pixel (QP) variant of the
> > >> Synopsys DesignWare HDMI TX controller used in the previous SoCs.
> > >>
> > >> It is HDMI 2.1 compliant and supports the following features, among
> > >> others:
> > >>
> > > .
> > >=20
> > > ..
> > >=20
> > >> * SCDC I2C DDC access
> > >> * TMDS Scrambler enabling 2160p@60Hz with RGB/YCbCr4:4:4
> > >> * YCbCr4:2:0 enabling 2160p@60Hz at lower HDMI link speeds
> > >> * Multi-stream audio
> > >> * Enhanced Audio Return Channel (EARC)
> > > -> Those features were already supported by the HDMI 2.0a compliant H=
W, just
> > > list the _new_ features for HDMI 2.1
> > >=20
> > > I did a quick review of your patchset and I don't understand why you =
need
> > > to add a separate dw-hdmi-qp.c since you only need simple variants of=
 the I2C
> > > bus, infoframe and bridge setup.
> > >=20
> > > Can you elaborate further ? isn't this Quad-Pixel (QP) TX controller =
version
> > > detectable at runtime ?
> > >=20
> > > I would prefer to keep a single dw-hdmi driver if possible.
> >
> > The QP HDMI controller is a completely different variant with totally d=
ifferent
> > registers layout, see PATCH 13/14.
> > I think make it a separate driver will be easier for development and ma=
intenance.
>=20
> I'm with Andy here. Trying to navigate a driver for two IP blocks really
> sounds taxing especially when both are so different.

If it's a completely new controller, I agree that it needs a new driver,
but then why do we need to share code between the two?

Maxime

--hjyaj4zwc26gvppm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZl3tqAAKCRAnX84Zoj2+
dtR8AYCrl/MU0AvHJWAGUIyy2KX4WDHpvmSlO0r/dHofLBLuPbECLxs/Y4Xrv9aj
dKaN4FEBgKcHcNQQuLzVnSmBEdP8BYecOgEiTEgRvexLG3nvcO9BpScGHjOp+i9W
SoX1pl9lAQ==
=Yfg6
-----END PGP SIGNATURE-----

--hjyaj4zwc26gvppm--


--===============6869872305067147722==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6869872305067147722==--

