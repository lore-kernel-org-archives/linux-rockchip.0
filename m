Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85A43C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 07:56:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=40o/z+R8dHnam4DgNGRqvIeKZfnGTNp5vp+yG2My+Ig=; b=QZQoEXA6Pqj+NhHyiT6b4uXPla
	1EyRatJLf0Yn5/w0naJr+U7jIsFipxArwsrbhxW0d4KPySyMcedCKnYuTeFxB7VRXrrECZ1WEkemh
	zUsFBAD8lrPf9E1amE2R3+AhXLHRvdxbU4v4xJw41BgDTGGdLQVuQH9bgrMX0Qz87sFor+knEhLIc
	kzNAlAxAhmZ60+6uIFK2qEDZuqESiX5A+WFVImbN3c+LfuZbcJbjNrdtFe64v44xzud7j/qI5JyQ0
	Rv8PAO6G1DgFzHy9yovCvrPN5644+sPc4v+lfcGUHfGDOYf0KDdECy+vkEib2m+05ZN0VHLQxdSTe
	DDJlKSZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDgaG-00HB7D-3D;
	Thu, 14 Dec 2023 07:56:41 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDgaD-00HB6Q-01;
	Thu, 14 Dec 2023 07:56:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id CF20EB81BF4;
	Thu, 14 Dec 2023 07:56:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD1F3C433C8;
	Thu, 14 Dec 2023 07:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702540593;
	bh=GYohYaQkBJpAai27f5S7MwTGcNP4zAZuDnDW4xihkPo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uowK/QL/FkkxE5NB64tUf0DVzc4N6MUTuJQF606GCL/VcAsOId9mQ0m4fWxzGfazt
	 qHcm7bIS5x8Dq6UiU57YEPp7O9Iy95cu9z13GwrEoDuNAl/QlMCv0FjABfjopPXQ08
	 9ctRxUDqO12iD6kYv43QC1FSdDZIkGZVFbFw+Mw7rHYD9af5nrsFvrQuEKz1/9nVN2
	 bn/sRJhTU0Zik2EzgvH7izTeJOqxFCAPZ+MWXD58NIM/ziiGkf+UAK55tcKj9k3puY
	 IhisxNTQcLRwyQX2UvFgVqNGA4b3HxIuSHlLBR90g2hZpo+cpkBWltHiNdMUkjnSx7
	 MHTst425A2IQQ==
Date: Thu, 14 Dec 2023 08:56:30 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andyshrk@163.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 04/11] drm/rockchip: inno_hdmi: Correctly setup HDMI
 quantization range
Message-ID: <w7cj24se5gjomfynp5yindnh3s2pea4p3f46u6y7lcci7hri32@62i6hg26pheb>
References: <20231213195125.212923-1-knaerzche@gmail.com>
 <20231213195125.212923-5-knaerzche@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20231213195125.212923-5-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_235637_347865_6B6FFEAB 
X-CRM114-Status: GOOD (  24.54  )
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
Content-Type: multipart/mixed; boundary="===============1631766592114918520=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1631766592114918520==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="itw4ikaomo7ux2j5"
Content-Disposition: inline


--itw4ikaomo7ux2j5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

Thanks for working on this!

On Wed, Dec 13, 2023 at 08:51:18PM +0100, Alex Bee wrote:
> The display controller will always give full range RGB regardless of the
> mode set, but HDMI requires certain modes to be transmitted in limited
> range RGB. This is especially required for HDMI sinks which do not support
> non-standard quantization ranges.
>=20
> This enables color space conversion for those modes and sets the
> quantization range accordingly in the AVI infoframe.
>=20
> Fixes: 412d4ae6b7a5 ("drm/rockchip: hdmi: add Innosilicon HDMI support")
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
>  drivers/gpu/drm/rockchip/inno_hdmi.c | 40 ++++++++++++++++++++++------
>  1 file changed, 32 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockc=
hip/inno_hdmi.c
> index 345253e033c5..32626a75723c 100644
> --- a/drivers/gpu/drm/rockchip/inno_hdmi.c
> +++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
> @@ -33,6 +33,7 @@ struct hdmi_data_info {
>  	unsigned int enc_in_format;
>  	unsigned int enc_out_format;
>  	unsigned int colorimetry;
> +	bool rgb_limited_range;
>  };
> =20
>  struct inno_hdmi_i2c {
> @@ -308,6 +309,18 @@ static int inno_hdmi_config_video_avi(struct inno_hd=
mi *hdmi,
>  	else
>  		frame.avi.colorspace =3D HDMI_COLORSPACE_RGB;
> =20
> +	if (hdmi->hdmi_data.enc_out_format =3D=3D HDMI_COLORSPACE_RGB) {
> +		drm_hdmi_avi_infoframe_quant_range(&frame.avi,
> +						   &hdmi->connector, mode,
> +						   hdmi->hdmi_data.rgb_limited_range ?
> +						   HDMI_QUANTIZATION_RANGE_LIMITED :
> +						   HDMI_QUANTIZATION_RANGE_FULL);
> +	} else {
> +		frame.avi.quantization_range =3D HDMI_QUANTIZATION_RANGE_DEFAULT;
> +		frame.avi.ycc_quantization_range =3D
> +			HDMI_YCC_QUANTIZATION_RANGE_LIMITED;
> +	}
> +
>  	return inno_hdmi_upload_frame(hdmi, rc, &frame, INFOFRAME_AVI, 0, 0, 0);
>  }
> =20
> @@ -334,14 +347,22 @@ static int inno_hdmi_config_video_csc(struct inno_h=
dmi *hdmi)
>  	if (data->enc_in_format =3D=3D data->enc_out_format) {
>  		if ((data->enc_in_format =3D=3D HDMI_COLORSPACE_RGB) ||
>  		    (data->enc_in_format >=3D HDMI_COLORSPACE_YUV444)) {
> -			value =3D v_SOF_DISABLE | v_COLOR_DEPTH_NOT_INDICATED(1);
> -			hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL3, value);
> -
> -			hdmi_modb(hdmi, HDMI_VIDEO_CONTRL,
> -				  m_VIDEO_AUTO_CSC | m_VIDEO_C0_C2_SWAP,
> -				  v_VIDEO_AUTO_CSC(AUTO_CSC_DISABLE) |
> -				  v_VIDEO_C0_C2_SWAP(C0_C2_CHANGE_DISABLE));
> -			return 0;
> +			if (data->enc_in_format =3D=3D HDMI_COLORSPACE_RGB &&
> +			    data->enc_out_format =3D=3D HDMI_COLORSPACE_RGB &&
> +			    hdmi->hdmi_data.rgb_limited_range) {
> +				csc_mode =3D CSC_RGB_0_255_TO_RGB_16_235_8BIT;
> +				auto_csc =3D AUTO_CSC_DISABLE;
> +				c0_c2_change =3D C0_C2_CHANGE_DISABLE;
> +				csc_enable =3D v_CSC_ENABLE;
> +			} else {
> +				value =3D v_SOF_DISABLE | v_COLOR_DEPTH_NOT_INDICATED(1);
> +				hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL3, value);
> +				hdmi_modb(hdmi, HDMI_VIDEO_CONTRL,
> +					  m_VIDEO_AUTO_CSC | m_VIDEO_C0_C2_SWAP,
> +					  v_VIDEO_AUTO_CSC(AUTO_CSC_DISABLE) |
> +					  v_VIDEO_C0_C2_SWAP(C0_C2_CHANGE_DISABLE));
> +				return 0;
> +			}
>  		}
>  	}
> =20
> @@ -458,6 +479,9 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
>  	else
>  		hdmi->hdmi_data.colorimetry =3D HDMI_COLORIMETRY_ITU_709;
> =20
> +	hdmi->hdmi_data.rgb_limited_range =3D
> +		drm_default_rgb_quant_range(mode) =3D=3D HDMI_QUANTIZATION_RANGE_LIMIT=
ED;
> +

This patch conflicts heavily with my inno_hdmi patches here (patches 22 to =
38):
https://lore.kernel.org/dri-devel/20231207-kms-hdmi-connector-state-v5-0-65=
38e19d634d@kernel.org/

I would appreciate if you could test and merge them into your series.

In particular, there's no need to store the range here: enc_out_format
is always RGB, so you'll always end up calling
drm_hdmi_avi_infoframe_quant_range(), and you'll always have the same csc v=
alues.

Maxime

--itw4ikaomo7ux2j5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZXq1LgAKCRDj7w1vZxhR
xedRAQCky8rnjv5SW+uCycoYjs8EQF9UmdfoKp6IC/V0MmQyIwD+L0A/RR8/pzVb
fQgZ59YS2O+f5TpHQ/8+FtU01s5a3go=
=AiiD
-----END PGP SIGNATURE-----

--itw4ikaomo7ux2j5--


--===============1631766592114918520==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1631766592114918520==--

