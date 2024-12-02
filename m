Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FE39D7831E
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Dec 2024 13:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3ZahzCNxZv/vjH6Cu0xweMKNYK++EwRo3485EY0rS8s=; b=Dn3XZpTqvgmxtzEFdR+KV44zHG
	janLR3QrD6PEUBRzpJsTvHRr5dzvjdJDT6lq/8SMOPK4Y68mshlKWrvhLr8kTuDJhfMX3kPAhoOZO
	2bDpEj0Y2oNKznzP8vwsrhw9MNJ+OBapq32funYFrKt9/synnTKdJukHDKgFiyNN9mGWUm86PRWlm
	/rHY8IQJMqDwDRXR/XNe7yrAkH8K0X6oe+6aYIeMA3R/FFSQ4fFWTvg0e9zEQr07dMkz2ck7bk7jp
	Rgz4ZlK1UGMidUIHVqWOJITSAs0LVixGyqi8G/NCSXQ+WrGYLfkUKFTbmI3tw1kyVGqfm/nYnWbtL
	5HipDHEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI6Tv-00000006F0D-0Yhr;
	Mon, 02 Dec 2024 13:28:55 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI6Sv-00000006EsX-0V5k;
	Mon, 02 Dec 2024 13:27:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C2034A40BA9;
	Mon,  2 Dec 2024 13:25:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CA79C4CED9;
	Mon,  2 Dec 2024 13:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733146071;
	bh=KiXJWPoIAFp9VW8Wp81Eon9RxfYCjyDx9DTkjVp31GE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EyJgIR+5km5eYBiOcnl4Xd0qxh5NcL09MRzRE8iaObRYaKvxyPhgd6vLysyjYMGSU
	 3I92YLyq93EErMpJowvzmdcqUNTfu/nXqDUZyOzvlzL9h63ZXUffg6V+yBZZ8FmCS2
	 YtKicdtr1EWqPxEzLqRSHQtCWEQ5HpXwDTaGicQxuBDsPKuVlgmlkYzALFjZXdWsiS
	 k5GaGuqwN1KsG8pp5V1VZzgg4bB+4YPKqkJ8dLmsNklTGUvbecH6Z3d5IG0BiFrQfv
	 ZHbas7b2ccomblsCiJECsZ73qK97J6PxGmyPgffVHbOP2jBaLdfeCQ21KgJVq2wls+
	 RmhqOq6jHy0VQ==
Date: Mon, 2 Dec 2024 14:27:49 +0100
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
Subject: Re: [PATCH v5 9/9] drm/vc4: hdmi: use
 drm_atomic_helper_connector_hdmi_update_edid()
Message-ID: <20241202-married-bald-raven-7acd83@houat>
References: <20241201-drm-bridge-hdmi-connector-v5-0-b5316e82f61a@linaro.org>
 <20241201-drm-bridge-hdmi-connector-v5-9-b5316e82f61a@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20241201-drm-bridge-hdmi-connector-v5-9-b5316e82f61a@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_052753_285346_21B48673 
X-CRM114-Status: GOOD (  21.11  )
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
Content-Type: multipart/mixed; boundary="===============8267085724981494923=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8267085724981494923==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="sr6qnc7nl34mpskl"
Content-Disposition: inline


--sr6qnc7nl34mpskl
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v5 9/9] drm/vc4: hdmi: use
 drm_atomic_helper_connector_hdmi_update_edid()
MIME-Version: 1.0

Hi,

On Sun, Dec 01, 2024 at 02:44:13AM +0200, Dmitry Baryshkov wrote:
> Use the helper function to update the connector's information. This
> makes sure that HDMI-related events are handled in a generic way.
> Currently it is limited to the HDMI state reporting to the sound system.
>=20
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/gpu/drm/vc4/vc4_hdmi.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdm=
i.c
> index d0a9aff7ad43016647493263c00d593296a1e3ad..d83f587ab69f4b8f7d5c37a00=
777f11da8301bc1 100644
> --- a/drivers/gpu/drm/vc4/vc4_hdmi.c
> +++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
> @@ -401,13 +401,16 @@ static void vc4_hdmi_handle_hotplug(struct vc4_hdmi=
 *vc4_hdmi,
>  	 */
> =20
>  	if (status =3D=3D connector_status_disconnected) {
> +		drm_atomic_helper_connector_hdmi_update_edid(connector, NULL);
>  		cec_phys_addr_invalidate(vc4_hdmi->cec_adap);
>  		return;
>  	}
> =20
>  	drm_edid =3D drm_edid_read_ddc(connector, vc4_hdmi->ddc);
> =20
> -	drm_edid_connector_update(connector, drm_edid);
> +	// TODO: use drm_atomic_helper_connector_hdmi_update() once it gains
> +	// CEC support
> +	drm_atomic_helper_connector_hdmi_update_edid(connector, drm_edid);

So, it's not just about EDID, and I think we shouldn't really focus on
that either.

As that patch points out, even if we only consider EDID's, we have
different path depending on the connector status. It shouldn't be up to
the drivers to get this right.

What I had in mind was something like a
drm_atomic_helper_connector_hdmi_hotplug function that would obviously
deal with EDID only here, but would expand to CEC, scrambling, etc.
later on.

And would cover both the connected/disconnected cases.

Maxime

--sr6qnc7nl34mpskl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ0211QAKCRAnX84Zoj2+
dn5LAYD+jqdGwkC0H4iYlSaYETAxZCK9kHnKkNn2ev/+nMCHDbBE52F7rnC+3dq7
dYCcnzsBf2FnxN2dGnbsJhfLKxYoZJ4Z5apDoHE9vrcc7fB6iJ+TU/Q2sOPTfXFD
RjebkV+GjQ==
=UIM2
-----END PGP SIGNATURE-----

--sr6qnc7nl34mpskl--


--===============8267085724981494923==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8267085724981494923==--

