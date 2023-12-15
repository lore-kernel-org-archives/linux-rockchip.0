Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF6E9C35274
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Dec 2023 12:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kXjFDB/6thdivR0WRHY/RDIzIZXHfpGzoN/L2hlKyKs=; b=Ur0DwPTqI8SBZ/H1BL7IWETH4P
	CIv8KQbyoSanAeikttJAthHCjBFzYuS2i0eeaxyJ+ceY/bXSgOSn4bLBPPhtx0IMCondvnkBkS9i1
	CBp8BlbrbrTNnTk+F2nW5CHkyn1qRJNZuU418mpsV2a0TOkPB94dIjrryBjuxy9faFTH3J6n6cKRk
	l5cXjBDbUoUfZpw73HuFscBqIvrKdkcLRf/h7jZo21eIn3BjuT1O4kECOI25UQ3i3nCYKFBvQ7SaD
	+bZnl/C0dcFJh1Xr2DxOiFCS+0rsYli1cyZdn4EvjbPgmK9ICpU6DvJF5WzH6mXU2SD+0svwLpBXH
	KgRS6DbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE7IS-003DvF-1Z;
	Fri, 15 Dec 2023 12:28:04 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rE7IO-003Dt5-0z;
	Fri, 15 Dec 2023 12:28:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C45DD6250A;
	Fri, 15 Dec 2023 12:27:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0943C433C7;
	Fri, 15 Dec 2023 12:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702643279;
	bh=XL7UNfsn2kuSB96q0vIEaREs6aL8WgM5vLyKDuXKvzM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PiwGHTRvZ/t8BhaUy1enbsGWQCN6OfAerSHFHZA7Lg+WyvAWXPDfzbApoCtswfAHF
	 7wVfoqFToRbpqXIm1K1adb7V0y1aSFlnpG5sycflR6dok9uRzmsPUxnkqau+0fvWEY
	 3azOXp1/uAUwL1h4j4GEzoBthdCuKpB8phy5k0vsdi3PjRPS+j2sy1zr1mziUeTbMu
	 F8kNGivexxCGEJaWS2nRmvn/JvmQX0u2V7etJh64pAV8M6jmaMW7zHTa5OdxJE4hKS
	 v8l71PU1vboe1WXEh4HLpV6IAaAMuXWd+JTwfWebkA5NRWpzh0kLW5YH67gfMxNinR
	 aVTIaTukcUyzQ==
Date: Fri, 15 Dec 2023 13:27:56 +0100
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
Message-ID: <76qlgx4astzjjt37eg6ee3ijslm6hvilcgs5yujhqdr7itp4hw@ugtglocx7lq6>
References: <20231213195125.212923-1-knaerzche@gmail.com>
 <20231213195125.212923-5-knaerzche@gmail.com>
 <w7cj24se5gjomfynp5yindnh3s2pea4p3f46u6y7lcci7hri32@62i6hg26pheb>
 <5f4fc919-681f-44ec-bd44-5788e5b718ca@gmail.com>
 <db3kdzy4ogf3o2fd6apr36s44qitcsxksfkfa2oc77s5y6dv2w@kfji4iszthxa>
 <a8f13e19-7bb3-4a7f-a264-1e1ede1864e0@gmail.com>
MIME-Version: 1.0
In-Reply-To: <a8f13e19-7bb3-4a7f-a264-1e1ede1864e0@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_042800_432581_25976D50 
X-CRM114-Status: GOOD (  36.91  )
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
Content-Type: multipart/mixed; boundary="===============2231405638468932192=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2231405638468932192==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aisb4vscal23dfnf"
Content-Disposition: inline


--aisb4vscal23dfnf
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 14, 2023 at 03:05:59PM +0100, Alex Bee wrote:
>=20
> Am 14.12.23 um 12:33 schrieb Maxime Ripard:
> > On Thu, Dec 14, 2023 at 12:12:08PM +0100, Alex Bee wrote:
> > > Hi Maxime
> > >=20
> > > Am 14.12.23 um 08:56 schrieb Maxime Ripard:
> > > > Hi Alex,
> > > >=20
> > > > Thanks for working on this!
> > > >=20
> > > > On Wed, Dec 13, 2023 at 08:51:18PM +0100, Alex Bee wrote:
> > > > > The display controller will always give full range RGB regardless=
 of the
> > > > > mode set, but HDMI requires certain modes to be transmitted in li=
mited
> > > > > range RGB. This is especially required for HDMI sinks which do no=
t support
> > > > > non-standard quantization ranges.
> > > > >=20
> > > > > This enables color space conversion for those modes and sets the
> > > > > quantization range accordingly in the AVI infoframe.
> > > > >=20
> > > > > Fixes: 412d4ae6b7a5 ("drm/rockchip: hdmi: add Innosilicon HDMI su=
pport")
> > > > > Signed-off-by: Alex Bee <knaerzche@gmail.com>
> > > > > ---
> > > > >    drivers/gpu/drm/rockchip/inno_hdmi.c | 40 ++++++++++++++++++++=
++------
> > > > >    1 file changed, 32 insertions(+), 8 deletions(-)
> > > > >=20
> > > > > diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/d=
rm/rockchip/inno_hdmi.c
> > > > > index 345253e033c5..32626a75723c 100644
> > > > > --- a/drivers/gpu/drm/rockchip/inno_hdmi.c
> > > > > +++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
> > > > > @@ -33,6 +33,7 @@ struct hdmi_data_info {
> > > > >    	unsigned int enc_in_format;
> > > > >    	unsigned int enc_out_format;
> > > > >    	unsigned int colorimetry;
> > > > > +	bool rgb_limited_range;
> > > > >    };
> > > > >    struct inno_hdmi_i2c {
> > > > > @@ -308,6 +309,18 @@ static int inno_hdmi_config_video_avi(struct=
 inno_hdmi *hdmi,
> > > > >    	else
> > > > >    		frame.avi.colorspace =3D HDMI_COLORSPACE_RGB;
> > > > > +	if (hdmi->hdmi_data.enc_out_format =3D=3D HDMI_COLORSPACE_RGB) {
> > > > > +		drm_hdmi_avi_infoframe_quant_range(&frame.avi,
> > > > > +						   &hdmi->connector, mode,
> > > > > +						   hdmi->hdmi_data.rgb_limited_range ?
> > > > > +						   HDMI_QUANTIZATION_RANGE_LIMITED :
> > > > > +						   HDMI_QUANTIZATION_RANGE_FULL);
> > > > > +	} else {
> > > > > +		frame.avi.quantization_range =3D HDMI_QUANTIZATION_RANGE_DEFAU=
LT;
> > > > > +		frame.avi.ycc_quantization_range =3D
> > > > > +			HDMI_YCC_QUANTIZATION_RANGE_LIMITED;
> > > > > +	}
> > > > > +
> > > > >    	return inno_hdmi_upload_frame(hdmi, rc, &frame, INFOFRAME_AVI=
, 0, 0, 0);
> > > > >    }
> > > > > @@ -334,14 +347,22 @@ static int inno_hdmi_config_video_csc(struc=
t inno_hdmi *hdmi)
> > > > >    	if (data->enc_in_format =3D=3D data->enc_out_format) {
> > > > >    		if ((data->enc_in_format =3D=3D HDMI_COLORSPACE_RGB) ||
> > > > >    		    (data->enc_in_format >=3D HDMI_COLORSPACE_YUV444)) {
> > > > > -			value =3D v_SOF_DISABLE | v_COLOR_DEPTH_NOT_INDICATED(1);
> > > > > -			hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL3, value);
> > > > > -
> > > > > -			hdmi_modb(hdmi, HDMI_VIDEO_CONTRL,
> > > > > -				  m_VIDEO_AUTO_CSC | m_VIDEO_C0_C2_SWAP,
> > > > > -				  v_VIDEO_AUTO_CSC(AUTO_CSC_DISABLE) |
> > > > > -				  v_VIDEO_C0_C2_SWAP(C0_C2_CHANGE_DISABLE));
> > > > > -			return 0;
> > > > > +			if (data->enc_in_format =3D=3D HDMI_COLORSPACE_RGB &&
> > > > > +			    data->enc_out_format =3D=3D HDMI_COLORSPACE_RGB &&
> > > > > +			    hdmi->hdmi_data.rgb_limited_range) {
> > > > > +				csc_mode =3D CSC_RGB_0_255_TO_RGB_16_235_8BIT;
> > > > > +				auto_csc =3D AUTO_CSC_DISABLE;
> > > > > +				c0_c2_change =3D C0_C2_CHANGE_DISABLE;
> > > > > +				csc_enable =3D v_CSC_ENABLE;
> > > > > +			} else {
> > > > > +				value =3D v_SOF_DISABLE | v_COLOR_DEPTH_NOT_INDICATED(1);
> > > > > +				hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL3, value);
> > > > > +				hdmi_modb(hdmi, HDMI_VIDEO_CONTRL,
> > > > > +					  m_VIDEO_AUTO_CSC | m_VIDEO_C0_C2_SWAP,
> > > > > +					  v_VIDEO_AUTO_CSC(AUTO_CSC_DISABLE) |
> > > > > +					  v_VIDEO_C0_C2_SWAP(C0_C2_CHANGE_DISABLE));
> > > > > +				return 0;
> > > > > +			}
> > > > >    		}
> > > > >    	}
> > > > > @@ -458,6 +479,9 @@ static int inno_hdmi_setup(struct inno_hdmi *=
hdmi,
> > > > >    	else
> > > > >    		hdmi->hdmi_data.colorimetry =3D HDMI_COLORIMETRY_ITU_709;
> > > > > +	hdmi->hdmi_data.rgb_limited_range =3D
> > > > > +		drm_default_rgb_quant_range(mode) =3D=3D HDMI_QUANTIZATION_RAN=
GE_LIMITED;
> > > > > +
> > > > This patch conflicts heavily with my inno_hdmi patches here (patche=
s 22 to 38):
> > > > https://lore.kernel.org/dri-devel/20231207-kms-hdmi-connector-state=
-v5-0-6538e19d634d@kernel.org/
> > > I'm aware of that and I mentioned it in the cover letter.
> > Sorry, I missed that part.
> >=20
> > > Your series is not merged yet and it didn't get much feedback so far.
> > > What is the status there?
> > It didn't have much reviews, but I'll hope to change that. For the
> > patches 22 to 38 though, it doesn't really matter. Those changes are
> > self-contained and can be applied as is outside of the series.
> >=20
> > > Especially because you are removing things from inno-hdmi driver (whi=
ch
> > > aren't really required to remove there) which will I have to reintrod=
uce.
> > I'm not entirely sure which part I remove that are actually going to be
> > used here.
>
> I'm refering to [PATCH v5 33/44] which completly removes csc coeffs but t=
his
> series needs the CSC_RGB_0_255_TO_RGB_16_235_8BIT=A0 coeffs and=A0 [PATCH=
 v5
> 29/44] which removes writing csc_coeffs to the hardware.

Oh, right, feel free to drop those

Maxime

--aisb4vscal23dfnf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZXxGTAAKCRDj7w1vZxhR
xRLuAQD+nf25Iur4/irNxk+q/jw/ADiwGq9Cr1/ujifale8RzQD+MxLFGEsYSrYS
a3s+GC54/U3PIPfijzQD0+MBZkjOYgs=
=WsiQ
-----END PGP SIGNATURE-----

--aisb4vscal23dfnf--


--===============2231405638468932192==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2231405638468932192==--

