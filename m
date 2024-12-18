Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E929E77183
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Dec 2024 08:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xKjQmk0DujqlvvrJ3egu+s3ug3vLNwKemwDQvS6LCCw=; b=I6o8WpJ2RFynBK7oZD8aluciZN
	MDJRH9+zpbRIEn8X2+PuyXBZAXfWdHbf4JLZz/zNCwh9RVU1M9L/7j/vlzIPnSF5e/dpxhYwx8jBy
	Se223gGEdq3I7/+ivjWXjO3T/ZojTlX5sYyL00a54Y3TkZvRz+nM32a8zEZJeLDsegfzFaEaDKSZ8
	ZGSpV+9m8WEZm8tTZd52H5Pn/RtZeZY4EUWMUCq/07/5IgBF302DsDqyOGRdVecChKjK5y6xVXDzB
	ZTxRhkv2qlbE5hQAca8KnTHBPLLcgpytLqB4x2EUAtESt3XB2nP5ykDCQmyFHpyH7omrU6qPg70dB
	Fdo0UNwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNozK-0000000FsEQ-15wo;
	Wed, 18 Dec 2024 08:00:58 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNoyC-0000000Fs6V-2D0T;
	Wed, 18 Dec 2024 07:59:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 274365C5EA7;
	Wed, 18 Dec 2024 07:59:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65D16C4CECE;
	Wed, 18 Dec 2024 07:59:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734508786;
	bh=sqi+j1FWp7VAY/ARAadBpUhCp9Sk4hgOZxPX95wClrQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X0TEM8Koa59ree2WPetcR04rE84cgfBQw46LRKM3wLj29lxQ8tpTmoj2xBlumhjlT
	 71clqYVjOL0cNR465CyvpA/0Vn/WDPI8lgOHqCEcwen6xr76dhF+VcZ0hP3ZHlCrYs
	 bAvnJNlFQT+2AsgLx7mI4BapfT940lJWO/bRzmmQVDpEwKUnz7oG3eMtgEJqrVVDpK
	 e0KKdfj3cuXNvUVWPaqvY99mxU4hDBwaQ1qAIfy20mrsc497E/Ilk084B/ni5JlTB/
	 UirwcLtdloZe94am91hJbMF08vjJaH1fr+lQleSHJj9nqm0DCzBCDTN8toxM9zPP1r
	 XNvyI7qxTSosg==
Date: Wed, 18 Dec 2024 08:59:43 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>, 
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Phong LE <ple@baylibre.com>, 
	Inki Dae <inki.dae@samsung.com>, Seung-Woo Kim <sw0312.kim@samsung.com>, 
	Kyungmin Park <kyungmin.park@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Russell King <linux@armlinux.org.uk>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Alain Volmat <alain.volmat@foss.st.com>, Raphael Gallais-Pou <rgallaispou@gmail.com>, 
	Jani Nikula <jani.nikula@linux.intel.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 00/10] drm: add DRM HDMI Codec framework
Message-ID: <20241218-wild-red-manatee-bb2a34@houat>
References: <20241217-drm-bridge-hdmi-connector-v7-0-cb9df2b6a515@linaro.org>
 <20241217-vivacious-chameleon-of-swiftness-f1edc4@houat>
 <CAA8EJprjCyWBNkRrc4W24uCwPtf_kxZLqNeNP8EJffbutYQ21w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAA8EJprjCyWBNkRrc4W24uCwPtf_kxZLqNeNP8EJffbutYQ21w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241217_235948_650337_EBA83524 
X-CRM114-Status: GOOD (  31.99  )
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
Content-Type: multipart/mixed; boundary="===============1582850763829955961=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1582850763829955961==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="woythu4oziodei4y"
Content-Disposition: inline


--woythu4oziodei4y
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v7 00/10] drm: add DRM HDMI Codec framework
MIME-Version: 1.0

On Wed, Dec 18, 2024 at 07:24:23AM +0200, Dmitry Baryshkov wrote:
> On Tue, 17 Dec 2024 at 19:21, Maxime Ripard <mripard@kernel.org> wrote:
> > On Tue, Dec 17, 2024 at 02:40:22AM +0200, Dmitry Baryshkov wrote:
> > > While porting lt9611 DSI-to-HDMI bridge driver to use HDMI Connector
> > > framework, I stumbled upon an issue while handling the Audio InfoFram=
es.
> > > The HDMI codec callbacks weren't receiving the drm_atomic_state, so
> > > there was no simple way to get the drm_connector that stayed at the e=
nd
> > > of the bridge chain. At the same point the drm_hdmi_connector functio=
ns
> > > expected to get drm_connector instance.
> > >
> > > While looking for a way to solve the issue, I stumbled upon several
> > > deficiencies in existing hdmi_codec_ops implementations. Only few of =
the
> > > implementations were able to handle codec's 'plugged' callback. One
> > > third of the drivers didn't implement the get_eld() callback.
> > >
> > > Most of the issues can be solved if drm_connector handles
> > > hdmi-audio-codec on its own, delegating functionality to the actual
> > > implementation, be it a driver that implements drm_connector or
> > > drm_bridge.
> > >
> > > Implement such high-level framework, adding proper support for Audio
> > > InfoFrame generation to the LT9611 driver.
> > >
> > > Several design decisions to be kept in mind:
> > >
> > > - drm_connector_hdmi_codec is kept as simple as possible. It implemen=
ts
> > >   generic functionality (ELD, hotplug, registration).
> > >
> > > - drm_hdmi_connector sets up HDMI codec device if the connector
> > >   is setup correspondingly (either I2S or S/PDIF is marked as
> > >   supported).
> > >
> > > - drm_bridge_connector provides a way to link HDMI audio codec
> > >   funcionality in the drm_bridge with the drm_connector_hdmi_codec
> > >   framework.
> > >
> > > - It might be worth reverting the no_i2s_capture / no_spdif_capture
> > >   bits. Only TDA889x driver sets them, while it's safe to assume that
> > >   most of HDMI / DP devices do not support ARC / capture. I think the
> > >   drivers should opt-in capture support rather than having to opt-out=
 of
> > >   it.
> >
> > Sorry if this isn't clear to me and I'm quite late to the party, but did
> > you test this on vc4 with both a pi3 and pi4, or was it just compile
> > tested?
>=20
> LT9611 is actually tested, VC4 is only compile-tested. Should I put an RF=
T tag?

Yeah, we definitely need to test it on the pi3 (polling-based) and the
pi4 (irq-based) at least.

Dave, Maira, could you give it a try?

Maxime

--woythu4oziodei4y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ2KA6gAKCRAnX84Zoj2+
doM7AYDYL5BrruN7W/ACWXLqTjEYQHCFy+iryAfwh6yE4f0RPJ6YFzy8mnTd+X1L
Jm9FiCABgPBOTqSnWYqNQjCLhnY0tzsDweW5w5m2sSKXDd0eMFfMFWxI2AeBQJRe
UpFPPwBPkQ==
=R0UZ
-----END PGP SIGNATURE-----

--woythu4oziodei4y--


--===============1582850763829955961==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1582850763829955961==--

