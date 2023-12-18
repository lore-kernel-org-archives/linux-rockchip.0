Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F454C35274
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 10:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LYTNYyYHPsfEz2uOdXaz84RBQVa8tOKr71rxrBZobzM=; b=aJNyZ0DkP/CTGMWhdodIqVho5C
	6f7/YcFHiBw0z0s1AJDUg6C23SPhpygruQaS2PORc1qta0gTz1nwSpS53Bspy40yFMhmqaEQm7Yzk
	PzUXCe2jp0PvCYMlymDcUJjWgRAj3y67PK9SF5ONS2Lj/8o+7xNUoT1JKVPMFf/eB7LRQka4H/Wqo
	lxcmLHfuk0kjG3qdlTOshDMa/9vWV4O+kLA3DX9zxy3a7a8nWWE8ON/Rs4DmgZxVvqNqw+YHR6pDb
	5I8ink9cFNv7AwQ0vUDugGQ/mWwXdwUnzG9I9zsFJtO89IhVxOLykZnlRTeBbKbBXUOID3Bu28MYG
	X8yT4ibA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFAWP-009lrU-1Y;
	Mon, 18 Dec 2023 10:06:49 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFAWL-009lqX-16;
	Mon, 18 Dec 2023 10:06:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id BA36AB80CC3;
	Mon, 18 Dec 2023 10:06:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A9E9C433C7;
	Mon, 18 Dec 2023 10:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702894003;
	bh=AwkgUvmIIlJRw6wjNIJtQ8AvdNLkhMFC6d/fk8gMjrg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JIjgKonPzMclEyKuNHco7lMvBubuPnpljdHzARGSMzyAU/Y3QrM9WAK6UHc0beTod
	 XAItiK9jQmcXA/kxrT6nfsofZkyxVqsBfvjD1bsHKkj8kkUdavPyfuXdSajnszuI9y
	 emEqal23SmNKd8XvZlsNLHsOSH/8gf55GZptxKODZvyiHpOi8FnFI+FqLKiSu298Od
	 V57+fD7DlS8SqRxHQM2ZevCl76nw5gsgOu38Ov6oCThXEMvOSdz4ybt/nyBwBIG9I6
	 Lu/eI/HB0pj/JlXOkRoTG+1McuQ9KHDefdAnBBByckN8pqE2U/pWGCXZeKToYCqmHY
	 EW4wEutjQYSXw==
Date: Mon, 18 Dec 2023 11:06:40 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andyshrk@163.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 19/27] drm/rockchip: inno_hdmi: Move tmds rate to
 connector state subclass
Message-ID: <xte5vjc3o77wnlozz6sy5yysiezdxbzvbwdblhbqb5s2nwnnv5@xxknftdeo6uk>
References: <20231216162639.125215-1-knaerzche@gmail.com>
 <20231216162639.125215-20-knaerzche@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20231216162639.125215-20-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_020645_676859_65ABC58B 
X-CRM114-Status: GOOD (  36.65  )
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
Content-Type: multipart/mixed; boundary="===============4827812796451822646=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4827812796451822646==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ktn4oocwkdhkmjca"
Content-Disposition: inline


--ktn4oocwkdhkmjca
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Dec 16, 2023 at 05:26:30PM +0100, Alex Bee wrote:
> Similar to the othter members of inno_hdmi_connector_state the tmds_rate =
is
> not a property of the device, but of the connector state. Move it to
> inno_hdmi_connector_state and make it a long to comply with the clock
> framework. To get arround the issue of not having the connector state when
> inno_hdmi_i2c_init is called in the bind path, getting the tmds rate is
> wrapped in function which returns the fallback rate if the connector
> doesn't have a state yet.
>=20
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
> changes in v2:
>  - new patch
>=20
>  drivers/gpu/drm/rockchip/inno_hdmi.c | 36 +++++++++++++++++++---------
>  1 file changed, 25 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockc=
hip/inno_hdmi.c
> index f9bfae1e97a2..6799d24501b8 100644
> --- a/drivers/gpu/drm/rockchip/inno_hdmi.c
> +++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
> @@ -47,14 +47,13 @@ struct inno_hdmi {
> =20
>  	struct inno_hdmi_i2c *i2c;
>  	struct i2c_adapter *ddc;
> -
> -	unsigned int tmds_rate;
>  };
> =20
>  struct inno_hdmi_connector_state {
>  	struct drm_connector_state	base;
>  	unsigned int			enc_out_format;
>  	unsigned int			colorimetry;
> +	unsigned long			tmds_rate;
>  };
> =20
>  static struct inno_hdmi *encoder_to_inno_hdmi(struct drm_encoder *encode=
r)
> @@ -133,11 +132,33 @@ static inline void hdmi_modb(struct inno_hdmi *hdmi=
, u16 offset,
>  	hdmi_writeb(hdmi, offset, temp);
>  }
> =20
> +static unsigned long inno_hdmi_tmds_rate(struct inno_hdmi *hdmi)
> +{
> +	struct drm_connector *connector =3D &hdmi->connector;
> +	struct drm_connector_state *conn_state =3D  connector->state;
> +	struct inno_hdmi_connector_state *inno_conn_state;
> +
> +	if (conn_state) {
> +		inno_conn_state =3D to_inno_hdmi_conn_state(conn_state);
> +		return inno_conn_state->tmds_rate;
> +	}
> +
> +	/*
> +	 * When IP controller haven't configured to an accurate video
> +	 * timing, then the TMDS clock source would be switched to
> +	 * PCLK_HDMI, so we need to init the TMDS rate to PCLK rate,
> +	 * and reconfigure the DDC clock.
> +	 */
> +
> +	return clk_get_rate(hdmi->pclk);
> +}
> +
>  static void inno_hdmi_i2c_init(struct inno_hdmi *hdmi)
>  {
>  	int ddc_bus_freq;
> +	unsigned long tmds_rate =3D inno_hdmi_tmds_rate(hdmi);
> =20
> -	ddc_bus_freq =3D (hdmi->tmds_rate >> 2) / HDMI_SCL_RATE;
> +	ddc_bus_freq =3D (tmds_rate >> 2) / HDMI_SCL_RATE;
> =20
>  	hdmi_writeb(hdmi, DDC_BUS_FREQ_L, ddc_bus_freq & 0xFF);
>  	hdmi_writeb(hdmi, DDC_BUS_FREQ_H, (ddc_bus_freq >> 8) & 0xFF);
> @@ -431,7 +452,7 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
>  	 * DCLK_LCDC, so we need to init the TMDS rate to mode pixel
>  	 * clock rate, and reconfigure the DDC clock.
>  	 */
> -	hdmi->tmds_rate =3D mode->clock * 1000;
> +	inno_conn_state->tmds_rate =3D mode->clock * 1000;
>  	inno_hdmi_i2c_init(hdmi);
> =20
>  	/* Unmute video and audio output */
> @@ -823,13 +844,6 @@ static int inno_hdmi_bind(struct device *dev, struct=
 device *master,
>  		goto err_disable_clk;
>  	}
> =20
> -	/*
> -	 * When IP controller haven't configured to an accurate video
> -	 * timing, then the TMDS clock source would be switched to
> -	 * PCLK_HDMI, so we need to init the TMDS rate to PCLK rate,
> -	 * and reconfigure the DDC clock.
> -	 */
> -	hdmi->tmds_rate =3D clk_get_rate(hdmi->pclk);
>  	inno_hdmi_i2c_init(hdmi);

I still think my patch is better there.

There's two places that use the inno_hdmi.tmds_rate field: the two
callers of inno_hdmi_i2c_init(). One is at bind time and needs to
initialise it with a sane default since we don't have a mode set yet,
the other is to update the internal clock rate while we have a mode set.

Since there's a single "modeset" user, there's no need to store it in
the state structure at all: it can be a local variable.

And in the bind function, you're not going to use the state structure
either since there's no state, and it's just a default that has no
relation to the modeset code at all.

Your function on the other end tries to reconcile and handle the two.
But there's no reason to, it just makes the code harder to follow. Just
pass the parent rate you want to init with as an argument and it's easy
to read and maintain.

Maxime

--ktn4oocwkdhkmjca
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZYAZsAAKCRDj7w1vZxhR
xeeqAP9jWaSu4gtrIA1SHbjksa/UTSfOXdNX566r/ULPL2MxMgD/Sy+flPKM3KE5
PyZ9MW6Ch2GTdiZgVVTIWW2RsnmW9wA=
=+y1P
-----END PGP SIGNATURE-----

--ktn4oocwkdhkmjca--


--===============4827812796451822646==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4827812796451822646==--

