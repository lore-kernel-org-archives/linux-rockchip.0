Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8E3DE77179
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Dec 2024 14:36:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HqSbetO7x2BpkVOavvk8vPoCZ3lPF5zOaD8OPK9tLtE=; b=ufujx3NpccS9m94QnUguG/kCGk
	/VxR3YkD74Q9JHPDKgKp1tRalrJhMBBMmVtaf81A8TN4P7ZwhfFk5VAQQvUo4rvl0JIbBcuQLVQOa
	VJwfQ2ooVgyir/IlizLRxdpFwN2DdYiqh3t1xOgjD2K4ImVK4NFERsGuhXxjCJVGUwBOJpB0h53q2
	SfUhdbQu8i3jy3psn0/1DfXQWm2EbU2A9jxsbt4vOwWc6R4Dh/FhXOS895a7yIeZ7uaw6kGO70QyJ
	JxrbuY1JqN7VNzBh6rofBvTbieE1NEcOLgE4d9+hYzOdVlcDexu9Y4F6G8Kw1LbUyntLHt7FFGW8S
	QxM6U2gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJZR3-00000001sQW-2F3i;
	Fri, 06 Dec 2024 14:36:01 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJZPz-00000001sEK-49sW;
	Fri, 06 Dec 2024 14:34:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 845D55C6E72;
	Fri,  6 Dec 2024 14:34:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A50DC4CED1;
	Fri,  6 Dec 2024 14:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733495695;
	bh=nF5LxKv8T81leJMO/CuStFlxQDPRXw0NlSd9f5JANYc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WgHxdjMuh7TGdSDG78OQk4528JQqnx5KRlevVafqybA+nndhgJb7Q70hQ36QphC7m
	 5J5HKk9E6TZ9duXn4GHfgApO3OHuIlAXffiDZU129EnvSz9FhND87VGhejelBxsIvq
	 sBLNi5O3GT4ArsiTXb+a95mquANa9oVe/eoZ27dirHsZm5LDxjFWrLYgljpvRikiYq
	 MmlKV31TVnfvcurjE5rt1OKQoZIgxIH/EK+7WsaTtS1YWbu9imqs3Y+eKs3FPMTZX8
	 Jx9N7bJkAiOxjE4cCX1Ke6WmOWBeRNiKX9xzpl/XzHbUaojbajwdOG+z2tSb05GFEz
	 EBCHb6D1nP7SA==
Date: Fri, 6 Dec 2024 15:34:52 +0100
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
Subject: Re: [PATCH v6 09/10] drm/vc4: hdmi: stop rereading EDID in
 get_modes()
Message-ID: <20241206-caped-proficient-rattlesnake-c882f3@houat>
References: <20241206-drm-bridge-hdmi-connector-v6-0-50dc145a9c06@linaro.org>
 <20241206-drm-bridge-hdmi-connector-v6-9-50dc145a9c06@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20241206-drm-bridge-hdmi-connector-v6-9-50dc145a9c06@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_063456_113047_BC2AA8B3 
X-CRM114-Status: GOOD (  22.84  )
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
Content-Type: multipart/mixed; boundary="===============5433198654883583871=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5433198654883583871==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="6occl6gdwf4rqri7"
Content-Disposition: inline


--6occl6gdwf4rqri7
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v6 09/10] drm/vc4: hdmi: stop rereading EDID in
 get_modes()
MIME-Version: 1.0

Hi,

On Fri, Dec 06, 2024 at 12:16:03PM +0200, Dmitry Baryshkov wrote:
> The vc4_hdmi_connector_detect_ctx() via vc4_hdmi_handle_hotplug()
> already reads EDID and propagates it to the drm_connector. Stop
> rereading EDID as a part of the .get_modes() callback and just update
> the list of modes. This matches the behaviour of the i915 driver.
>=20
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/gpu/drm/vc4/vc4_hdmi.c | 21 ---------------------
>  1 file changed, 21 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdm=
i.c
> index e5ab42f72f618b90f956482db6c9c8074c1e3bf1..3364ef90968dad3074800f029=
26300ffceb75c69 100644
> --- a/drivers/gpu/drm/vc4/vc4_hdmi.c
> +++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
> @@ -470,31 +470,10 @@ static int vc4_hdmi_connector_detect_ctx(struct drm=
_connector *connector,
> =20
>  static int vc4_hdmi_connector_get_modes(struct drm_connector *connector)
>  {
> -	struct vc4_hdmi *vc4_hdmi =3D connector_to_vc4_hdmi(connector);
>  	struct vc4_dev *vc4 =3D to_vc4_dev(connector->dev);
> -	const struct drm_edid *drm_edid;
>  	int ret =3D 0;
> =20
> -	/*
> -	 * NOTE: This function should really take vc4_hdmi->mutex, but doing so
> -	 * results in reentrancy issues since cec_s_phys_addr() might call
> -	 * .adap_enable, which leads to that funtion being called with our mutex
> -	 * held.
> -	 *
> -	 * Concurrency isn't an issue at the moment since we don't share
> -	 * any state with any of the other frameworks so we can ignore
> -	 * the lock for now.
> -	 */
> -
> -	drm_edid =3D drm_edid_read_ddc(connector, vc4_hdmi->ddc);
> -	drm_edid_connector_update(connector, drm_edid);
> -	cec_s_phys_addr(vc4_hdmi->cec_adap,
> -			connector->display_info.source_physical_address, false);
> -	if (!drm_edid)
> -		return 0;
> -
>  	ret =3D drm_edid_connector_add_modes(connector);
> -	drm_edid_free(drm_edid);

I don't think that works though, for mostly two reasons:

 1) We're not sure we'll even have an hotplug interrupt if the system
    boots with the connector plugged in for example.

 2) afaik, the get_modes ioctl directly calls get_modes too.

Maxime

--6occl6gdwf4rqri7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ1MLiwAKCRAnX84Zoj2+
dtSXAX4hYRG+Z6tKfkagtuQh3eXutsb5V7CXdnzsxAuDpcnlgOGnrNWvE/pOo221
IbNrcU0BgKUK8Zc+sRgjwT4hMHCUzqNxA3vJPT21KIFeOFWVKptImryaMUOS4zgh
qNsNOpDWOQ==
=07j8
-----END PGP SIGNATURE-----

--6occl6gdwf4rqri7--


--===============5433198654883583871==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5433198654883583871==--

