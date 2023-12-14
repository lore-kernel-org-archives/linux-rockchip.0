Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A022C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 08:06:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y6bIqGKqm1B/vsfmKtM+MgFuVKUROzjJ+FXayFHGtQ8=; b=mZfbVK3+Jb8p59Vl6ERh+B8L7S
	I+e0iiRYBk8g6+eRHEgEP2l7PH5AlDHLhpLbmlRROoJfGIG0LuMSlEnXT/5HIjs/fE8G1C57zU1g9
	IudMec1n6YIoQ3cDiqttrvNTOw3XNs8xCfYTW+fV9OF16U5ngDEMm8SYg7fZGsz6lSLF1hZYlJUvB
	oDpI3PzK9OuIwJUyX4P61ai7kqdcx1kkLWkjxk+UucmNQFFe6ZMKCkUca+oZXho7GhXTLfjpoh7jQ
	L5lofHZeAfc18lTaoDFiGcj1i8Cf9Jpcv6iiS/9FHv19V1+9JA7q0MTJp3gAzny5a08DwEklblBFw
	aBZrlMmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDgjV-00HCXQ-1h;
	Thu, 14 Dec 2023 08:06:13 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDgjR-00HCVw-1Z;
	Thu, 14 Dec 2023 08:06:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id BB571B81CD9;
	Thu, 14 Dec 2023 08:06:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1301C433C7;
	Thu, 14 Dec 2023 08:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702541161;
	bh=sYEhTF8PFiCP41kQDsfl473xLEZ+XXLgBpyKrt1TpZ0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LY2zHWvRamfUM7o1LtV8JnaxofEdItKMw+27NQM3lch6E+1MGPOJA2pCQIWppcvMG
	 641jfW0dbA4X9MXirOWme2ggJCA0rQ8mmNvRy0jcsT8DzQOPDSqbSQmt3B33vsLAtA
	 dkC7IR5y7QsI/N95hOp6G+IN+NT0puCHHp7TKCZX07X6qCjfIKq4NAKG75MJjS51RL
	 iJgrkK5kDLyFe33Hu2/pDXFAYwhf47d15DvnU2B2+f8FYqzMluDW5k4XZPqK4U8RK4
	 8ZEM+z10IqeH9ge1ozkfw6/noYBww1USJSTWzRMaZdVCLzwZnhZsAbqMeU6kS+NE0y
	 3qE2qdKH84cDA==
Date: Thu, 14 Dec 2023 09:05:58 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andyshrk@163.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 07/11] drm/rockchip: inno_hdmi: Add basic mode validation
Message-ID: <wz4e43ateg3gb7745mz22wwyruwavevvpfbqsdxeynejcjxhzn@qbqldsnkktei>
References: <20231213195125.212923-1-knaerzche@gmail.com>
 <20231213195125.212923-8-knaerzche@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20231213195125.212923-8-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_000609_792160_56834BAE 
X-CRM114-Status: GOOD (  28.71  )
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
Content-Type: multipart/mixed; boundary="===============7085156354997148819=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7085156354997148819==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="b7pooqjn5gbbri2j"
Content-Disposition: inline


--b7pooqjn5gbbri2j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Dec 13, 2023 at 08:51:21PM +0100, Alex Bee wrote:
> As per TRM this controller supports pixelclocks starting from 25 MHz. The
> maximum supported pixelclocks are defined by the phy configurations we
> have. Also it can't support modes that require doubled clocks.
> If there is a phy reference clock we can additionally validate against
> VESA DMT's recommendations.
> Those checks are added to the mode_valid hook of the connector and
> encoder's mode_fixup hook.
>=20
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
>  drivers/gpu/drm/rockchip/inno_hdmi.c | 38 ++++++++++++++++++++++++++--
>  1 file changed, 36 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockc=
hip/inno_hdmi.c
> index f7f0bec725f9..2f839ff31c1c 100644
> --- a/drivers/gpu/drm/rockchip/inno_hdmi.c
> +++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
> @@ -38,6 +38,8 @@ struct inno_hdmi_variant {
>  	struct inno_hdmi_phy_config *default_phy_config;
>  };
> =20
> +#define INNO_HDMI_MIN_TMDS_CLOCK  25000000U
> +
>  struct hdmi_data_info {
>  	int vic;
>  	bool sink_has_audio;
> @@ -572,6 +574,34 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
>  	return 0;
>  }
> =20
> +static enum drm_mode_status inno_hdmi_mode_valid(struct inno_hdmi *hdmi,
> +						 struct drm_display_mode *mode)
> +{

So, mode_valid is only called to filter out the modes retrieved by
get_modes, but it won't be called when userspace programs a mode. That's
atomic_check's job.

So you probably want to create a shared function between atomic_check
and mode_valid, and call it from both places (or call mode_valid from
atomic_check).

> +	/* No support for double-clock modes */
> +	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
> +		return MODE_BAD;
> +
> +	unsigned int mpixelclk =3D mode->clock * 1000;

Variables should be declared at the top of the function.

> +	if (mpixelclk < INNO_HDMI_MIN_TMDS_CLOCK)
> +		return MODE_CLOCK_LOW;

You probably want to check the max TMDS clock too?

> +	if (inno_hdmi_find_phy_config(hdmi, mpixelclk) < 0)
> +		return MODE_CLOCK_HIGH;
> +
> +	if (hdmi->refclk) {
> +		long refclk =3D clk_round_rate(hdmi->refclk, mpixelclk);
> +		unsigned int max_tolerance =3D mpixelclk / 5000;
> +
> +		/* Vesa DMT standard mentions +/- 0.5% max tolerance */
> +		if (abs(refclk - mpixelclk) > max_tolerance ||
> +		    mpixelclk - refclk > max_tolerance;
> +			return MODE_NOCLOCK;

You should use abs_diff here. abs() will get confused by the unsigned vs
signed comparison.

> +	}
> +
> +	return MODE_OK;
> +}
> +
>  static void inno_hdmi_encoder_mode_set(struct drm_encoder *encoder,
>  				       struct drm_display_mode *mode,
>  				       struct drm_display_mode *adj_mode)
> @@ -602,7 +632,9 @@ static bool inno_hdmi_encoder_mode_fixup(struct drm_e=
ncoder *encoder,
>  					 const struct drm_display_mode *mode,
>  					 struct drm_display_mode *adj_mode)
>  {
> -	return true;
> +	struct inno_hdmi *hdmi =3D encoder_to_inno_hdmi(encoder);
> +
> +	return inno_hdmi_mode_valid(hdmi, adj_mode) =3D=3D MODE_OK;
>  }

Why do you call mode_valid in mode_fixup?

Maxime

--b7pooqjn5gbbri2j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZXq3ZgAKCRDj7w1vZxhR
xaVDAP9cv6mFeTDpg7RgRea+Sf7bjeLk6ZsJ3l3oNXqnHls6gAD/cxaEFtITXR/A
ujMQfG/WE5YLTNoxJiT+lbA9A4vu3QA=
=ufKw
-----END PGP SIGNATURE-----

--b7pooqjn5gbbri2j--


--===============7085156354997148819==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7085156354997148819==--

