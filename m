Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CC89C5B559
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jun 2025 11:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9T/i9A0qjyGeoPXQoqMUTnVgoe6eEZbnDRrzdSshtMw=; b=qqCj0YFIbn2B3Eyop2XZ09SYps
	JFGZEt3NjYbncDHTJnXNE/h4CSkF0Gk0xchRuSh8WfpX25qrscHRWeXXH3OJnLWWIdAuwmuDXFsQw
	0wXi93YJ+5oiZTK7jjHf0h+mqvd6E5OFjoNY9AQ9nH1k4V9wOvGMZGJbrXcRgSu6buaVfX3RUFLjE
	fftmlTWsV9eE9oPzlfjDVh71B7q2brmdJeupB15jisGfoiRVUweXbYq3vQM0NT+mGF177Y7GF6Du5
	ub0jlVUarYUozWHYotReSVY/HKt4H0a/mGWGXmpq3zoxU/7Ew4Fib9L4+joGVYnowG+WqwcC9aKqt
	hqydVNNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9E3-0000000FQgm-43wS;
	Thu, 05 Jun 2025 11:57:39 +0000
Received: from out-186.mta1.migadu.com ([95.215.58.186])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9Bw-0000000FQQF-0NTN
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Jun 2025 11:55:29 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1749124522;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Gtr0k1J84OtDZN/TagpeD6dbRf6DmdogmCvrsj264r0=;
	b=TxFWlq3/cnBrYdtM+7qQzjMqiBrk93LzjBHaaorU0djMlt4UBcDsXRPdqjrws7+/nZHZlU
	j4/7bAxX99M8O7seotVKPrfLknOmDKVTcuUDP4Gsf1BsdJYyDnP+uHzvQWcufMKJvjeCir
	5O/sYSSlZIs2mCG5DlBeE/vPyNCDoT7mh0Sy3isHT1tDHvZoAcwcQHwrrJkCwkO92NRPwV
	kBT3L1CW/agHZKbp117kW7SOj+HKJc4tNAG7UF36SHwNnmencZpu/uvryGUJj5pVASkzyj
	gIUfwpg+fwhQcTQXIVV6HzxmeFQtSCKkl9GaJSEMqDhdPFhlNdXiVTGNRdjijA==
Date: Thu, 05 Jun 2025 13:54:50 +0200
Message-Id: <DAEKVTXT0FHB.TOVX7BU9ZYXA@cknow.org>
Cc: <linux-rockchip@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <sebastian.reichel@collabora.com>, <heiko@sntech.de>,
 <conor+dt@kernel.org>, <krzk+dt@kernel.org>, <robh@kernel.org>,
 <tzimmermann@suse.de>, <mripard@kernel.org>,
 <maarten.lankhorst@linux.intel.com>, <simona@ffwll.ch>,
 <airlied@gmail.com>, <quic_jesszhan@quicinc.com>,
 <neil.armstrong@linaro.org>, <javierm@redhat.com>, <megi@xff.cz>, "Chris
 Morgan" <macromorgan@hotmail.com>
Subject: Re: [PATCH 3/4] drm/panel: himax-hx8394: Add Support for Huiling
 hl055fhav028c
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Chris Morgan" <macroalpha82@gmail.com>,
 <dri-devel@lists.freedesktop.org>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
 <20250603193930.323607-4-macroalpha82@gmail.com>
In-Reply-To: <20250603193930.323607-4-macroalpha82@gmail.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_045528_355713_DEEA9556 
X-CRM114-Status: GOOD (  17.04  )
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
Content-Type: multipart/mixed; boundary="===============4024260623427606540=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============4024260623427606540==
Content-Type: multipart/signed;
 boundary=9d06b052148c9375f18638bf3f5cd716439c8e5c58d9fb6cc23c0863546f;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--9d06b052148c9375f18638bf3f5cd716439c8e5c58d9fb6cc23c0863546f
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Tue Jun 3, 2025 at 9:39 PM CEST, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>
> Add support for the Huiling hl055fhav028c panel as used on the
> Gameforce Ace handheld gaming console. This panel uses a Himax HX8399C
> display controller and requires a sparsely documented vendor provided
> init sequence. The display resolution is 1080x1920 and is 70mm by 127mm
> as stated in the manufacturer's documentation.
>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  drivers/gpu/drm/panel/panel-himax-hx8394.c | 142 +++++++++++++++++++++
>  1 file changed, 142 insertions(+)
>
> diff --git a/drivers/gpu/drm/panel/panel-himax-hx8394.c b/drivers/gpu/drm=
/panel/panel-himax-hx8394.c
> index ff994bf0e3cc..16e450b156b7 100644
> --- a/drivers/gpu/drm/panel/panel-himax-hx8394.c
> +++ b/drivers/gpu/drm/panel/panel-himax-hx8394.c
> @@ -477,6 +477,147 @@ static const struct hx8394_panel_desc mchp_ac40t08a=
_desc =3D {
>  	.init_sequence =3D mchp_ac40t08a_init_sequence,
>  };
> <snip>
> +
> +static const struct drm_display_mode hl055fhav028c_mode =3D {
> +	.hdisplay	=3D 1080,
> +	.hsync_start	=3D 1080 + 32,
> +	.hsync_end	=3D 1080 + 32 + 8,
> +	.htotal		=3D 1080 + 32 + 8 + 32,
> +	.vdisplay	=3D 1920,
> +	.vsync_start	=3D 1920 + 16,
> +	.vsync_end	=3D 1920 + 16 + 2,
> +	.vtotal		=3D 1920 + 16 + 2 + 14,

Shouldn't this be 's/14/16/' ?

Cheers,
  Diederik

> +	.clock		=3D 134920,
> +	.flags		=3D DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
> +	.width_mm	=3D 70,
> +	.height_mm	=3D 127,
> +};
> +
> +static const struct hx8394_panel_desc hl055fhav028c_desc =3D {
> +	.mode =3D &hl055fhav028c_mode,
> +	.lanes =3D 4,
> +	.mode_flags =3D MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST,
> +	.format =3D MIPI_DSI_FMT_RGB888,
> +	.init_sequence =3D hl055fhav028c_init_sequence,
> +};
> +
>  static int hx8394_enable(struct drm_panel *panel)
>  {
>  	struct hx8394 *ctx =3D panel_to_hx8394(panel);
> @@ -683,6 +824,7 @@ static void hx8394_remove(struct mipi_dsi_device *dsi=
)
> =20
>  static const struct of_device_id hx8394_of_match[] =3D {
>  	{ .compatible =3D "hannstar,hsd060bhw4", .data =3D &hsd060bhw4_desc },
> +	{ .compatible =3D "huiling,hl055fhav028c", .data =3D &hl055fhav028c_des=
c },
>  	{ .compatible =3D "powkiddy,x55-panel", .data =3D &powkiddy_x55_desc },
>  	{ .compatible =3D "microchip,ac40t08a-mipi-panel", .data =3D &mchp_ac40=
t08a_desc },
>  	{ /* sentinel */ }


--9d06b052148c9375f18638bf3f5cd716439c8e5c58d9fb6cc23c0863546f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaEGFowAKCRDXblvOeH7b
bibaAQDwhyT1xBS5bV1lt1k41DO7hNeAcfefxy119hDgQjbmLAD+IAlCYrTHSfiK
GqmrYXKMwRA/W3GNEP3F8PSPxQWDdQ0=
=5nUe
-----END PGP SIGNATURE-----

--9d06b052148c9375f18638bf3f5cd716439c8e5c58d9fb6cc23c0863546f--


--===============4024260623427606540==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4024260623427606540==--

