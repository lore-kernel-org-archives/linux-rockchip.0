Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1130C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 11:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NJ59O2GMbUAbJ0H+W4S9WA2RHAHYGQ44+KkVe0TSbtM=; b=YWAt4fkNiVrU1/U7vk98T+mbbv
	nrqVxjAIiZqFhLS+L1rFCoRtEIBMZu5B+hTwgAiU0G16xlVpk5dDU6h0A7O07YYOPazdY8D6EXRPk
	zHp/PTznJJNwYgGxSnEsBccIsCu1RYbNV+zC8Ypzkpc9sV08VoVaC8pHYLhdmLYrJeAW6Pg6Y/0gq
	6iHtQgsOyo72wiqdWUQgG5HUX8nlcblAFPvA2XDqkYoWw0u5XDjNC8vk1JGAeiOeVOq4FAh8b5Ptg
	eWxYGw+069rxrZuvUvd2ptuVCfyK4k9xL6X1NVwMfbWjr1+I/wNlhwqnyDUIV6IRcTaChyeKf8j+/
	OeQSanLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDjyO-0009j4-1e;
	Thu, 14 Dec 2023 11:33:48 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDjyL-0009fn-04;
	Thu, 14 Dec 2023 11:33:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 7F553B8222A;
	Thu, 14 Dec 2023 11:33:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 596B9C433C8;
	Thu, 14 Dec 2023 11:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702553622;
	bh=gvNH64NxomfOFGlH+emgYSF+W6VhepTxD6UYJ5KLgXg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LzqX9W7yiWjn7zM2BnH5ih+0E1kGtH2VGTQRZaigB+FEiKc7ViLfuMJhBjJ7ajSNZ
	 cLyqCp4+Z8xbAoRgnNpYW0BEveMRiO+NCoKAAUEqoHjKxMVLCAqUa/w1N40tA7zonR
	 QkKolIMbLVtOV6/1m38ixgm1JuvxOpT6XAu/rDaulacl5dwFP6AmCzds2LO21yZXId
	 FDimK/N5uK9vHjvHivnQN15qH4fjiRG1PK7UsY2etYKtp4eIoMb1fABMtl6KTNI5r4
	 JMmxMaIMRXtHapQfuh/ZLSX30kd5TqZGTKh7tkSH3cdPEq+Q70rDwWZparNsfI+u9R
	 3JExbhdkDWxWQ==
Date: Thu, 14 Dec 2023 12:33:40 +0100
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
Message-ID: <db3kdzy4ogf3o2fd6apr36s44qitcsxksfkfa2oc77s5y6dv2w@kfji4iszthxa>
References: <20231213195125.212923-1-knaerzche@gmail.com>
 <20231213195125.212923-5-knaerzche@gmail.com>
 <w7cj24se5gjomfynp5yindnh3s2pea4p3f46u6y7lcci7hri32@62i6hg26pheb>
 <5f4fc919-681f-44ec-bd44-5788e5b718ca@gmail.com>
MIME-Version: 1.0
In-Reply-To: <5f4fc919-681f-44ec-bd44-5788e5b718ca@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_033345_332896_4C820538 
X-CRM114-Status: GOOD (  39.44  )
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
Content-Type: multipart/mixed; boundary="===============0123826423803145831=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0123826423803145831==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iok2sy75wk4esltb"
Content-Disposition: inline


--iok2sy75wk4esltb
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 14, 2023 at 12:12:08PM +0100, Alex Bee wrote:
> Hi Maxime
>=20
> Am 14.12.23 um 08:56 schrieb Maxime Ripard:
> > Hi Alex,
> >=20
> > Thanks for working on this!
> >=20
> > On Wed, Dec 13, 2023 at 08:51:18PM +0100, Alex Bee wrote:
> > > The display controller will always give full range RGB regardless of =
the
> > > mode set, but HDMI requires certain modes to be transmitted in limited
> > > range RGB. This is especially required for HDMI sinks which do not su=
pport
> > > non-standard quantization ranges.
> > >=20
> > > This enables color space conversion for those modes and sets the
> > > quantization range accordingly in the AVI infoframe.
> > >=20
> > > Fixes: 412d4ae6b7a5 ("drm/rockchip: hdmi: add Innosilicon HDMI suppor=
t")
> > > Signed-off-by: Alex Bee <knaerzche@gmail.com>
> > > ---
> > >   drivers/gpu/drm/rockchip/inno_hdmi.c | 40 ++++++++++++++++++++++---=
---
> > >   1 file changed, 32 insertions(+), 8 deletions(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/r=
ockchip/inno_hdmi.c
> > > index 345253e033c5..32626a75723c 100644
> > > --- a/drivers/gpu/drm/rockchip/inno_hdmi.c
> > > +++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
> > > @@ -33,6 +33,7 @@ struct hdmi_data_info {
> > >   	unsigned int enc_in_format;
> > >   	unsigned int enc_out_format;
> > >   	unsigned int colorimetry;
> > > +	bool rgb_limited_range;
> > >   };
> > >   struct inno_hdmi_i2c {
> > > @@ -308,6 +309,18 @@ static int inno_hdmi_config_video_avi(struct inn=
o_hdmi *hdmi,
> > >   	else
> > >   		frame.avi.colorspace =3D HDMI_COLORSPACE_RGB;
> > > +	if (hdmi->hdmi_data.enc_out_format =3D=3D HDMI_COLORSPACE_RGB) {
> > > +		drm_hdmi_avi_infoframe_quant_range(&frame.avi,
> > > +						   &hdmi->connector, mode,
> > > +						   hdmi->hdmi_data.rgb_limited_range ?
> > > +						   HDMI_QUANTIZATION_RANGE_LIMITED :
> > > +						   HDMI_QUANTIZATION_RANGE_FULL);
> > > +	} else {
> > > +		frame.avi.quantization_range =3D HDMI_QUANTIZATION_RANGE_DEFAULT;
> > > +		frame.avi.ycc_quantization_range =3D
> > > +			HDMI_YCC_QUANTIZATION_RANGE_LIMITED;
> > > +	}
> > > +
> > >   	return inno_hdmi_upload_frame(hdmi, rc, &frame, INFOFRAME_AVI, 0, =
0, 0);
> > >   }
> > > @@ -334,14 +347,22 @@ static int inno_hdmi_config_video_csc(struct in=
no_hdmi *hdmi)
> > >   	if (data->enc_in_format =3D=3D data->enc_out_format) {
> > >   		if ((data->enc_in_format =3D=3D HDMI_COLORSPACE_RGB) ||
> > >   		    (data->enc_in_format >=3D HDMI_COLORSPACE_YUV444)) {
> > > -			value =3D v_SOF_DISABLE | v_COLOR_DEPTH_NOT_INDICATED(1);
> > > -			hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL3, value);
> > > -
> > > -			hdmi_modb(hdmi, HDMI_VIDEO_CONTRL,
> > > -				  m_VIDEO_AUTO_CSC | m_VIDEO_C0_C2_SWAP,
> > > -				  v_VIDEO_AUTO_CSC(AUTO_CSC_DISABLE) |
> > > -				  v_VIDEO_C0_C2_SWAP(C0_C2_CHANGE_DISABLE));
> > > -			return 0;
> > > +			if (data->enc_in_format =3D=3D HDMI_COLORSPACE_RGB &&
> > > +			    data->enc_out_format =3D=3D HDMI_COLORSPACE_RGB &&
> > > +			    hdmi->hdmi_data.rgb_limited_range) {
> > > +				csc_mode =3D CSC_RGB_0_255_TO_RGB_16_235_8BIT;
> > > +				auto_csc =3D AUTO_CSC_DISABLE;
> > > +				c0_c2_change =3D C0_C2_CHANGE_DISABLE;
> > > +				csc_enable =3D v_CSC_ENABLE;
> > > +			} else {
> > > +				value =3D v_SOF_DISABLE | v_COLOR_DEPTH_NOT_INDICATED(1);
> > > +				hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL3, value);
> > > +				hdmi_modb(hdmi, HDMI_VIDEO_CONTRL,
> > > +					  m_VIDEO_AUTO_CSC | m_VIDEO_C0_C2_SWAP,
> > > +					  v_VIDEO_AUTO_CSC(AUTO_CSC_DISABLE) |
> > > +					  v_VIDEO_C0_C2_SWAP(C0_C2_CHANGE_DISABLE));
> > > +				return 0;
> > > +			}
> > >   		}
> > >   	}
> > > @@ -458,6 +479,9 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
> > >   	else
> > >   		hdmi->hdmi_data.colorimetry =3D HDMI_COLORIMETRY_ITU_709;
> > > +	hdmi->hdmi_data.rgb_limited_range =3D
> > > +		drm_default_rgb_quant_range(mode) =3D=3D HDMI_QUANTIZATION_RANGE_L=
IMITED;
> > > +
> > This patch conflicts heavily with my inno_hdmi patches here (patches 22=
 to 38):
> > https://lore.kernel.org/dri-devel/20231207-kms-hdmi-connector-state-v5-=
0-6538e19d634d@kernel.org/
>
> I'm aware of that and I mentioned it in the cover letter.

Sorry, I missed that part.

> Your series is not merged yet and it didn't get much feedback so far.
> What is the status there?

It didn't have much reviews, but I'll hope to change that. For the
patches 22 to 38 though, it doesn't really matter. Those changes are
self-contained and can be applied as is outside of the series.

> Especially because you are removing things from inno-hdmi driver (which
> aren't really required to remove there) which will I have to reintroduce.

I'm not entirely sure which part I remove that are actually going to be
used here.

> > I would appreciate if you could test and merge them into your series.
> >=20
> > In particular, there's no need to store the range here: enc_out_format
>
> rgb_limited_range is currently not only used for csc, but also for for
> infoframe creation. So it makes sense to have this stored=A0 to avoid cal=
ling
> drm_default_rgb_quant_range twice.

You're right, I missed one. Still, it shouldn't be stored in the
hdmi_data_info structure, it's tied to the mode, and the mode is part of
the state, so it's not a property to a given device, but it's tied to
the connector state.

So if you want to do so, you should really create a custom state
structure and store the range there, just like vc4 is doing for example.

Maxime

--iok2sy75wk4esltb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZXroFAAKCRDj7w1vZxhR
xQ1lAP9XuPfZZjOQo82zeI0Bi/qXJJf2rfQSNBVhR9I2Dd8YFQD/b2/cMAjoTS5/
I1wh88yK8K64fdUZJ9jc5pKj0PRAaQA=
=T8J3
-----END PGP SIGNATURE-----

--iok2sy75wk4esltb--


--===============0123826423803145831==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0123826423803145831==--

