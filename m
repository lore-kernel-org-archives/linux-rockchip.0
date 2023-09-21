Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21ADFE706F0
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Sep 2023 08:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nKtTU2+hRNaENrNKxM6ncpfulCQcSwZx7SXyR9VtXE8=; b=LG3KOeVMQnkfNVD1FRWT9iIRuY
	WjIxRJHAEaxzhoDz+13RDyeDFls8mSK5dcEGbNpdKhYVDenMD4sWXfhHGMohM0P26U6cnWXk67dvc
	b4zPHn2tV0tfIX60r5MjOw/WgI6AsCIN2F0MIz7K7aFED4Af9FCaL+8GPC493iTLvvKHREo29Tj0h
	ZYw8WRp4Xjif3exBNtEuT7Mv/fV0V8dRMAHsX55XsGcK1Ai1skR32Ch8ti9dt59PwICNrbAGFLa5p
	7XzBJniFRzt7vzcok1zT6piBXZ9hTsa+ja5irY02lEtpajYjsMV0A5tJeLV4hp2AQlbtWrVincndx
	31tnEG5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjFDl-005VWS-0F;
	Thu, 21 Sep 2023 08:39:37 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjFDh-005VVT-12;
	Thu, 21 Sep 2023 08:39:35 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2bffdf50212so10661601fa.1;
        Thu, 21 Sep 2023 01:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695285569; x=1695890369; darn=lists.infradead.org;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=do13wE1NZGvZdh+vY8gzmZTIIEx/P59A/WkG5M6tfxM=;
        b=dmMddjQ8oXBDMErBGKO42/LdZvSF8D96HJbcDtlI9t3fck4B2bBzghQ7ENlY2cjoPO
         CzghHBAiv5H4xyfzIO7tmilcc15zVerfn6JWCfzY03MZNzuDj1RHD7mgP79eytTpoH0y
         vWtVMzo92XjrqnLGBK0PyhkEcGY75N1ZpfgLIk5m0d8D7gCePVzYpB62qyAKvK+11XLz
         Wwbuh+OmC4KdmEjZklFe9OcTE6FVhyi2WTLRwco3lAWX8O/SVJOtEe2xuVUnvf7oi6DZ
         2Vg329OlG4ytMO5zRVbvwrPgym8SJGqwiwYEhbNL2YY6ajdge4TKth3r3pwJFnWJypuD
         dpaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695285569; x=1695890369;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=do13wE1NZGvZdh+vY8gzmZTIIEx/P59A/WkG5M6tfxM=;
        b=dsm+53bVDrVIP7aigRaS5yquBv30+oBzFhNcLP8I6kJy31mwScny7oPM1s13DsrlQV
         FlndTY1ZpQdY/aEN18KvxOYh/03Re6PkHdgrZOr07K9TrPzlN/oSa9O6A+WS1yavVdip
         KanfzwYJn53ZTA79E3NUZcckyOtIQWH0kCPglHWcRXEaRZXGSkjiCDjwNGhf4ySgHqKY
         DIrcayolnMlYB/rpK9zWW7KGFvUPePk4toxBZvTmiBvcvtquovdmINlX30aqqXcLQ3W5
         sTPKfs7sVPz8tMMS7EWLKf1yJUeEaLXbnd5mlc0LaXG97oBrWaB3on/+GzhuwQbPnOXm
         3PHg==
X-Gm-Message-State: AOJu0YwFlVNlEWLarsI+NZwCkJxBV3Ocz1f4N3IMB8QhvJUEnTnOG5DW
	EL9QE6YGjp9M36mfYNtdq4M=
X-Google-Smtp-Source: AGHT+IEg+Q5URv4DOIHpsqZ5z/w2kZYXI9iypMN4HV1bJyRLV6UA2HEdGUB18nSebb4ZlpNiEyGH2w==
X-Received: by 2002:a2e:8ed4:0:b0:2bf:fa16:2787 with SMTP id e20-20020a2e8ed4000000b002bffa162787mr3966289ljl.39.1695285568444;
        Thu, 21 Sep 2023 01:39:28 -0700 (PDT)
Received: from eldfell ([194.136.85.206])
        by smtp.gmail.com with ESMTPSA id a24-20020a05651c011800b002b9de06f119sm224076ljb.67.2023.09.21.01.39.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 01:39:27 -0700 (PDT)
Date: Thu, 21 Sep 2023 11:39:11 +0300
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter
 <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, Jonathan Corbet
 <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, Heiko =?UTF-8?B?U3Q=?=
 =?UTF-8?B?w7xibmVy?= <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland
 <samuel@sholland.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-sunxi@lists.linux.dev
Subject: Re: [PATCH RFC v2 03/37] drm/connector: hdmi: Add Broadcast RGB
 property
Message-ID: <20230921113911.7799583d@eldfell>
In-Reply-To: <20230920-kms-hdmi-connector-state-v2-3-17932daddd7d@kernel.org>
References: <20230920-kms-hdmi-connector-state-v2-0-17932daddd7d@kernel.org>
	<20230920-kms-hdmi-connector-state-v2-3-17932daddd7d@kernel.org>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_013933_380794_B4CBA4AF 
X-CRM114-Status: GOOD (  40.49  )
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
Content-Type: multipart/mixed; boundary="===============1660166781939687065=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1660166781939687065==
Content-Type: multipart/signed; boundary="Sig_/whNYN0BaPvA7+2Dd9n3sm9G";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/whNYN0BaPvA7+2Dd9n3sm9G
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, 20 Sep 2023 16:35:18 +0200
Maxime Ripard <mripard@kernel.org> wrote:

> The i915 driver has a property to force the RGB range of an HDMI output.
> The vc4 driver then implemented the same property with the same
> semantics. KWin has support for it, and a PR for mutter is also there to
> support it.
>=20
> Both drivers implementing the same property with the same semantics,
> plus the userspace having support for it, is proof enough that it's
> pretty much a de-facto standard now and we can provide helpers for it.
>=20
> Let's plumb it into the newly created HDMI connector.
>=20
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  Documentation/gpu/kms-properties.csv      |  1 -
>  drivers/gpu/drm/drm_atomic.c              |  5 +++
>  drivers/gpu/drm/drm_atomic_state_helper.c | 17 +++++++
>  drivers/gpu/drm/drm_atomic_uapi.c         |  4 ++
>  drivers/gpu/drm/drm_connector.c           | 74 +++++++++++++++++++++++++=
++++++
>  include/drm/drm_connector.h               | 39 ++++++++++++++++
>  6 files changed, 139 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/gpu/kms-properties.csv b/Documentation/gpu/kms=
-properties.csv
> index 0f9590834829..caef14c532d4 100644
> --- a/Documentation/gpu/kms-properties.csv
> +++ b/Documentation/gpu/kms-properties.csv
> @@ -17,7 +17,6 @@ Owner Module/Drivers,Group,Property Name,Type,Property =
Values,Object attached,De
>  ,Virtual GPU,=E2=80=9Csuggested X=E2=80=9D,RANGE,"Min=3D0, Max=3D0xfffff=
fff",Connector,property to suggest an X offset for a connector
>  ,,=E2=80=9Csuggested Y=E2=80=9D,RANGE,"Min=3D0, Max=3D0xffffffff",Connec=
tor,property to suggest an Y offset for a connector
>  ,Optional,"""aspect ratio""",ENUM,"{ ""None"", ""4:3"", ""16:9"" }",Conn=
ector,TDB
> -i915,Generic,"""Broadcast RGB""",ENUM,"{ ""Automatic"", ""Full"", ""Limi=
ted 16:235"" }",Connector,"When this property is set to Limited 16:235 and =
CTM is set, the hardware will be programmed with the result of the multipli=
cation of CTM by the limited range matrix to ensure the pixels normally in =
the range 0..1.0 are remapped to the range 16/255..235/255."

Hi,

have a look at this old doc for the property, and...

>  ,,=E2=80=9Caudio=E2=80=9D,ENUM,"{ ""force-dvi"", ""off"", ""auto"", ""on=
"" }",Connector,TBD
>  ,SDVO-TV,=E2=80=9Cmode=E2=80=9D,ENUM,"{ ""NTSC_M"", ""NTSC_J"", ""NTSC_4=
43"", ""PAL_B"" } etc.",Connector,TBD
>  ,,"""left_margin""",RANGE,"Min=3D0, Max=3D SDVO dependent",Connector,TBD

...

> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connec=
tor.c
> index d9a7e101e4e5..b45471d540ac 100644
> --- a/drivers/gpu/drm/drm_connector.c
> +++ b/drivers/gpu/drm/drm_connector.c
> @@ -1174,6 +1174,29 @@ static const u32 dp_colorspaces =3D
>  	BIT(DRM_MODE_COLORIMETRY_BT2020_CYCC) |
>  	BIT(DRM_MODE_COLORIMETRY_BT2020_YCC);
> =20
> +static const struct drm_prop_enum_list broadcast_rgb_names[] =3D {
> +	{ DRM_HDMI_BROADCAST_RGB_AUTO, "Automatic" },
> +	{ DRM_HDMI_BROADCAST_RGB_FULL, "Full" },
> +	{ DRM_HDMI_BROADCAST_RGB_LIMITED, "Limited 16:235" },
> +};
> +
> +/*
> + * drm_hdmi_connector_get_broadcast_rgb_name - Return a string for HDMI =
connector RGB broadcast selection
> + * @broadcast_rgb: Broadcast RGB selection to compute name of
> + *
> + * Returns: the name of the Broadcast RGB selection, or NULL if the type
> + * is not valid.
> + */
> +const char *
> +drm_hdmi_connector_get_broadcast_rgb_name(enum drm_hdmi_broadcast_rgb br=
oadcast_rgb)
> +{
> +	if (broadcast_rgb > DRM_HDMI_BROADCAST_RGB_LIMITED)
> +		return NULL;
> +
> +	return broadcast_rgb_names[broadcast_rgb].name;
> +}
> +EXPORT_SYMBOL(drm_hdmi_connector_get_broadcast_rgb_name);
> +
>  /**
>   * DOC: standard connector properties
>   *
> @@ -1640,6 +1663,24 @@ EXPORT_SYMBOL(drm_connector_attach_dp_subconnector=
_property);
>  /**
>   * DOC: HDMI connector properties
>   *
> + * Broadcast RGB (HDMI Specific):
> + *      Indicates the RGB Range (Full vs Limited) used.
> + *
> + *      The value of this property can be one of the following:
> + *
> + *      Automatic:
> + *              RGB Range is selected automatically based on the mode
> + *              according to the HDMI specifications.
> + *
> + *      Full:
> + *              Full RGB Range is forced.
> + *
> + *      Limited 16:235:
> + *              Limited RGB Range is forced.
> + *
> + *      Drivers can set up this property by calling
> + *      drm_connector_attach_broadcast_rgb_property().

...compare it to this. There is one crucial detail lost: setting this
property does two or three things: it clips conversion input values to
[0.0, 1.0] range, programs a conversion matrix to convert full-range
RGB to destination RGB, and sends infoframes to indicate the chosen
destination RGB.

The distinction is important, because use cases like PLUGE calibration
(Rec. ITU-R BT.814-4) rely on indicating limited range while pixel
values are still able to carry sub-black values. Other procedures might
also want to use super-whites. This is impossible with the existing
"Broadcast RGB" property, but that is a different matter.

The old doc didn't exactly say it sets the infoframe fields either, but
I presume it does.

I feel the documentation needs to be much more explicit here.

> + *
>   * content type (HDMI specific):
>   *	Indicates content type setting to be used in HDMI infoframes to indic=
ate
>   *	content type for the external device, so that it adjusts its display
> @@ -2500,6 +2541,39 @@ int drm_connector_attach_hdr_output_metadata_prope=
rty(struct drm_connector *conn
>  }
>  EXPORT_SYMBOL(drm_connector_attach_hdr_output_metadata_property);
> =20
> +/**
> + * drm_connector_attach_broadcast_rgb_property - attach "Broadcast RGB" =
property
> + * @connector: connector to attach max bpc property on.

"max bpc" pasta.

> + *
> + * This is used to add support for forcing the RGB range on a connector
> + *
> + * Returns:
> + * Zero on success, negative errno on failure.
> + */
> +int drm_connector_attach_broadcast_rgb_property(struct drm_connector *co=
nnector)
> +{
> +	struct drm_device *dev =3D connector->dev;
> +	struct drm_property *prop;
> +
> +	prop =3D connector->broadcast_rgb_property;
> +	if (!prop) {
> +		prop =3D drm_property_create_enum(dev, DRM_MODE_PROP_ENUM,
> +						"Broadcast RGB",
> +						broadcast_rgb_names,
> +						ARRAY_SIZE(broadcast_rgb_names));
> +		if (!prop)
> +			return -EINVAL;
> +
> +		connector->broadcast_rgb_property =3D prop;
> +	}
> +
> +	drm_object_attach_property(&connector->base, prop,
> +				   DRM_HDMI_BROADCAST_RGB_AUTO);
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(drm_connector_attach_broadcast_rgb_property);
> +
>  /**
>   * drm_connector_attach_colorspace_property - attach "Colorspace" proper=
ty
>   * @connector: connector to attach the property on.
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index 5961f2ad48b1..fdcf64ab91a9 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -368,6 +368,33 @@ enum drm_panel_orientation {
>  	DRM_MODE_PANEL_ORIENTATION_RIGHT_UP,
>  };
> =20
> +/**
> + * enum drm_hdmi_broadcast_rgb - Broadcast RGB Selection for a @drm_hdmi=
_connector
> + *
> + * This enum is used to track broadcast RGB selection. There are no
> + * separate #defines for the uapi!

Why the "no separate defines" comment? That's the norm.

The KMS property UAPI works by string names for enum values. Some enum
properties might expose C enums for the values, but that is an
exception that cannot be fixed due to stable UAPI.


Thanks,
pq

> + */
> +enum drm_hdmi_broadcast_rgb {
> +	/**
> +	 * @DRM_HDMI_BROADCAST_RGB_AUTO: The RGB range is selected
> +	 * automatically based on the mode.
> +	 */
> +	DRM_HDMI_BROADCAST_RGB_AUTO,
> +
> +	/**
> +	 * @DRM_HDMI_BROADCAST_RGB_FULL: Full range RGB is forced.
> +	 */
> +	DRM_HDMI_BROADCAST_RGB_FULL,
> +
> +	/**
> +	 * @DRM_HDMI_BROADCAST_RGB_LIMITED: Limited range RGB is forced.
> +	 */
> +	DRM_HDMI_BROADCAST_RGB_LIMITED,
> +};

--Sig_/whNYN0BaPvA7+2Dd9n3sm9G
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmUMAS8ACgkQI1/ltBGq
qqc3XA/9ECTVC9T0gCqODWNk5wpTe/rrNuuHwqZsSzh3lDAK8NrTGSnuIuMXWGSj
vljtNwo3HH3V9o/dn5AsgBH6W2TQkFAeth05KqFVSXbcNO4eNSNNxmFlWl+fZ8HA
ePTbRN2FWZ1FWujVDZEWBetPxs3a662dH7YOjZrhh6dMxU0PbgKgOaUVoUrimRht
Lh3VJUfi3utYySd2kHSqO7/yaT8M7hC2wVfSk1OcD3PNb9w6ntBMAfzDQ/Nubo6V
nNGZsB+DrKkSYa7q7LDienXuonsPyVpLw9e90tZJcHmzD6gUYDymEoTdy4rv6u2N
Gn2kTUbPFPCNlEuBpe0lQhRrTJcl2oqF19zllvRSrEgwBX1c8PSx8C6RUlqd0l7c
btRB6rNODtr52ySQLOHWUjaQ/xAT8pbswadOilUFRJFrNJHSkXxR2Ij21L7TbLpb
KstqX3IAk33IVQzafw5fdXfofU/PvUvLiFYJV/5nsbSeU409buZu+p7kCjvNaG5R
385N6MTELzTD5fjvZn7OtAjdmsRlb2opYASo5vU9F4zw/NqDUFEqzRj3IeOZ7SAe
orEitPwAzPSsS4+6D4bJbzutcvHLpScQ8go7iZzeY/idr2BcsCkpNGlDZ89uk6Lu
wIH7tiRHk8r/2akYDa2Sl1zPnU/ELxUrbbWCWyjJSeE1CF5LZpc=
=A8/v
-----END PGP SIGNATURE-----

--Sig_/whNYN0BaPvA7+2Dd9n3sm9G--


--===============1660166781939687065==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1660166781939687065==--

