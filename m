Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB871D1CDC6
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Dec 2025 14:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=84dY+IKjpP9QnTFwRSId3MFjvBKBtwaPtvuq0u5Tzhs=; b=5AMNYC+NLLpbhTVqbTNVf0+E6d
	6B09ivg+27bzLT/uYDR8PZS6WdG3e7W6ZG8Erht3jtpzf6I0scIGfp1jGs9V9xq46UoczZ2dI8dB1
	ZY41uF2Qq8P1k0kAdzl+R1QnhgCLXKl7CjxzsziskqNQe1sRVLUZWoYaePD9jIeaLt49k+CB3gX6E
	qh5ShdmuHI6MXO82VUsOOVsq9QtQ0IMA1a9PIYktEk479Zj4fgXLKacWAnIhMTTShtkdWJPgB3cXu
	RfX4xLmIIbO43JE4q7b27tIagDAfvdD8STH5K2ck1NdPebYymyZVI9lkPcuyX6tHSK0k5RKpfg+kw
	utsTp16A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSyWW-0000000EOBp-2uYH;
	Tue, 09 Dec 2025 14:17:04 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSyWU-0000000EOBO-1IZK;
	Tue, 09 Dec 2025 14:17:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 60275600B0;
	Tue,  9 Dec 2025 14:17:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B91FC4CEF5;
	Tue,  9 Dec 2025 14:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765289821;
	bh=re7ktCouPs6agxyacY1S9Dr4ldvps2d8xXP04n6KHZk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lULy/rf85/iEt1JTXX9f4FuZ+PdypwhtX8K1Dmg/yFbRtzEZSFigk4p5Sci4VJogg
	 XFtyt1jVPPJE1yPOro6odzd3mJWEKpAbJIS2tJt7zSfDSfE0XtQTabYq5NBLahMbub
	 YgtJWvGyqsEJqwo1Ip0+Ow12KAEjCMixLh5MMaKlvCEvh8iVTzkRSzCdjuzZVrj3eI
	 MmIOUN/y++lshSZeTYjNS47j3l0ycf1YohGgUVg8GKhYQZqaqyXf0E68ohAfsadqU2
	 foc2HYUGmY78txauG2xcHhHDg4wzf5kimGxgygf6m/6WsYgvGFmZvUKIynQv30Odpq
	 UIrPoG1MiVnhA==
Date: Tue, 9 Dec 2025 15:16:58 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
	Rodrigo Siqueira <siqueira@igalia.com>, Alex Deucher <alexander.deucher@amd.com>, 
	Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Jani Nikula <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, 
	Dmitry Baryshkov <lumag@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Rob Herring <robh@kernel.org>, kernel@collabora.com, amd-gfx@lists.freedesktop.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v5 05/17] drm/display: hdmi-state-helper: Act on color
 format DRM property
Message-ID: <20251209-uptight-radical-chupacabra-ac3d6d@houat>
References: <20251128-color-format-v5-0-63e82f1db1e1@collabora.com>
 <20251128-color-format-v5-5-63e82f1db1e1@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20251128-color-format-v5-5-63e82f1db1e1@collabora.com>
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
Content-Type: multipart/mixed; boundary="===============7754939300040991317=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7754939300040991317==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="7dtovcletdpwfi6p"
Content-Disposition: inline


--7dtovcletdpwfi6p
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v5 05/17] drm/display: hdmi-state-helper: Act on color
 format DRM property
MIME-Version: 1.0

On Fri, Nov 28, 2025 at 10:05:41PM +0100, Nicolas Frattaroli wrote:
> With the introduction of the "color format" DRM property, which allows
> userspace to request a specific color format, the HDMI state helper
> should implement this.
>=20
> Implement it by checking whether the property is set and set to
> something other than auto. If so, pass the requested color format, and
> otherwise set RGB.
>=20
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/gpu/drm/display/drm_hdmi_state_helper.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/display/drm_hdmi_state_helper.c b/drivers/gp=
u/drm/display/drm_hdmi_state_helper.c
> index a561f124be99..5da956bdd68c 100644
> --- a/drivers/gpu/drm/display/drm_hdmi_state_helper.c
> +++ b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
> @@ -649,11 +649,21 @@ hdmi_compute_config(const struct drm_connector *con=
nector,
>  	unsigned int max_bpc =3D clamp_t(unsigned int,
>  				       conn_state->max_bpc,
>  				       8, connector->max_bpc);
> +	enum hdmi_colorspace hdmi_colorspace =3D
> +		drm_color_format_to_hdmi_colorspace(conn_state->color_format);
>  	int ret;
> =20
>  	ret =3D hdmi_compute_format_bpc(connector, conn_state, mode, max_bpc,
> -				      HDMI_COLORSPACE_RGB);
> +				      hdmi_colorspace);
>  	if (ret) {
> +		/* If a color format was explicitly requested, don't fall back */
> +		if (conn_state->color_format) {
> +			drm_dbg_kms(connector->dev,
> +				    "Explicitly set color format '%s' doesn't work.\n",
> +				    drm_get_color_format_name(conn_state->color_format));
> +			return ret;
> +		}
> +

I think the following would be more readable:


if (conn_state->color_format && conn_state->color_format !=3D DRM_COLOR_FOR=
MAT_AUTO) {
    enum hdmi_colorspace hdmi_colorspace =3D
        drm_color_format_to_hdmi_colorspace(conn_state->color_format);

    return hdmi_compute_format_bpc(connector, conn_state, mode, max_bpc, hd=
mi_colorspace)
}

ret =3D ret =3D hdmi_compute_format_bpc(connector, conn_state, mode, max_bp=
c,
                                    HDMI_COLORSPACE_RGB);

=2E..

Maxime

--7dtovcletdpwfi6p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaTgvWQAKCRAnX84Zoj2+
dsTYAYCnsq4IINrpmEbQVfvZqzEXkFALMdooT+3vTv5FYb6D28/FDX4dwiypkgVc
Zd6A6m4Bf3JYjaDiWfKCks0opK33MCwdhIj7KM2EqsBB4p86nA4zPE0+JmVqVbyI
pjLOkixd2A==
=Wym1
-----END PGP SIGNATURE-----

--7dtovcletdpwfi6p--


--===============7754939300040991317==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7754939300040991317==--

