Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D20CE7717F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Dec 2024 17:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xDf2jglHbNYpwZZ8CACYDBVfmI9iFgHKKexeRK7v/H8=; b=th7ANCxgQipwrzjkMQlvppoSRB
	Q+4ppZI2PwbZbearkZrU7VpzsQt94k5MlLlizQdY9rq9ZJKRCzjZTeQGYlYWeu0rfZwSNMnexEit9
	apfOH4HVOrD6pUD3SE9CMdgjP04LvtnDMBtt+H63XV4d9PgDQRuNFFF8fz7wjj+UpfGqu1OLEbUp4
	7TmwK0b94YtzAx9VRW1gRtVpNTORPE97US0LndDMMor3G4pPqeZi/oYamtKxyzTYzvANJzaJE2ATn
	IE5XtKZP7bLnn5Wq3QKVcuFSxyxvadyvdGPi9RKDYswXIed6C9mMWCBDPS7gheVM3+8G3ioYJ7BJ4
	z5BOctiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNbHg-0000000EJiL-1j9H;
	Tue, 17 Dec 2024 17:23:00 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNbFy-0000000EJTF-1SKb;
	Tue, 17 Dec 2024 17:21:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 73BC15C66A2;
	Tue, 17 Dec 2024 17:20:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A627EC4CEDF;
	Tue, 17 Dec 2024 17:21:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734456073;
	bh=gSxnS9OdKpfAXVd8d7j5pZW75+bllE3VDBoL+UPSVRs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QTo3p09H4cMOYL0FydQyXHFf7eXEVuGWQHoPrBAwbMTGZ9yOmld+WlMig8fKO0ucg
	 BhmmWEXrchYEe8MjLZrX3hkOkUdqQgtzBg+L6ArV5uW8MOI1IFo/868cNTyyuNDNvw
	 tQZsBU5V3Oa8NSnz8O2TVMns+i4tn3frVx2jWiH+9sGKjur5C9cXXGGl018nk2Q36o
	 B9fEZsOQ7Pdc+GiY0DH+0IjVLdX1tA3YZwcnGzLKBrhTWo3ixw9O1TZKjDkaJ5lC4n
	 rteOmT/nwZYJaDNDv5IeE6K2btbB8PlFTSvAPNLMYf/UUpv+MrrQwgfHB974muo3bc
	 WagjPbTiHXOnw==
Date: Tue, 17 Dec 2024 18:21:10 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
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
	Dave Stevenson <dave.stevenson@raspberrypi.com>, =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>, 
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 00/10] drm: add DRM HDMI Codec framework
Message-ID: <20241217-vivacious-chameleon-of-swiftness-f1edc4@houat>
References: <20241217-drm-bridge-hdmi-connector-v7-0-cb9df2b6a515@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20241217-drm-bridge-hdmi-connector-v7-0-cb9df2b6a515@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241217_092114_486016_21B0E992 
X-CRM114-Status: GOOD (  23.36  )
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
Content-Type: multipart/mixed; boundary="===============0779788729386886437=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0779788729386886437==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="mn7xe23uuqeljxgv"
Content-Disposition: inline


--mn7xe23uuqeljxgv
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v7 00/10] drm: add DRM HDMI Codec framework
MIME-Version: 1.0

Hi,

On Tue, Dec 17, 2024 at 02:40:22AM +0200, Dmitry Baryshkov wrote:
> While porting lt9611 DSI-to-HDMI bridge driver to use HDMI Connector
> framework, I stumbled upon an issue while handling the Audio InfoFrames.
> The HDMI codec callbacks weren't receiving the drm_atomic_state, so
> there was no simple way to get the drm_connector that stayed at the end
> of the bridge chain. At the same point the drm_hdmi_connector functions
> expected to get drm_connector instance.
>=20
> While looking for a way to solve the issue, I stumbled upon several
> deficiencies in existing hdmi_codec_ops implementations. Only few of the
> implementations were able to handle codec's 'plugged' callback. One
> third of the drivers didn't implement the get_eld() callback.
>=20
> Most of the issues can be solved if drm_connector handles
> hdmi-audio-codec on its own, delegating functionality to the actual
> implementation, be it a driver that implements drm_connector or
> drm_bridge.
>=20
> Implement such high-level framework, adding proper support for Audio
> InfoFrame generation to the LT9611 driver.
>=20
> Several design decisions to be kept in mind:
>=20
> - drm_connector_hdmi_codec is kept as simple as possible. It implements
>   generic functionality (ELD, hotplug, registration).
>=20
> - drm_hdmi_connector sets up HDMI codec device if the connector
>   is setup correspondingly (either I2S or S/PDIF is marked as
>   supported).
>=20
> - drm_bridge_connector provides a way to link HDMI audio codec
>   funcionality in the drm_bridge with the drm_connector_hdmi_codec
>   framework.
>=20
> - It might be worth reverting the no_i2s_capture / no_spdif_capture
>   bits. Only TDA889x driver sets them, while it's safe to assume that
>   most of HDMI / DP devices do not support ARC / capture. I think the
>   drivers should opt-in capture support rather than having to opt-out of
>   it.

Sorry if this isn't clear to me and I'm quite late to the party, but did
you test this on vc4 with both a pi3 and pi4, or was it just compile
tested?

Maxime

--mn7xe23uuqeljxgv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ2GzBgAKCRAnX84Zoj2+
doz7AYD+E+d4erzl9Bf5sWASu56Udkv+Nd2LpLqsDi351KTvI53a2703lFD4C28T
bGfQBG0BfiHdABYx41nUCejaduluIOxnFrtPmutUYSE5mvh38CG3Ej7/08luvURz
jbdIEtzSlQ==
=zUgb
-----END PGP SIGNATURE-----

--mn7xe23uuqeljxgv--


--===============0779788729386886437==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0779788729386886437==--

