Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27958CD6E4A
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Jun 2026 07:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3HBKOUNIwklIHWLJyEoRXiJZgVMNTxfLx9/TL5SBx5s=; b=330zdFc2TVjcu+vH9aEWpwB/cq
	2AtOaknQcvy8BMjCMOs0aHJcWk5mNzoJz4VTSnLZdJtWoLbHyfPcUfoqCVlh3fvuDv3w2d89s13S3
	Lm7C0etJID5WWrWFwOg6hp5N6FnOVp0vJKg3vhect265E60tKAUn4hLJz3djxT30iwGRlLGtGSSXn
	1xdzoVDkkkQs/KLEx4IGAOA6yJZqjDl/w70xFgNQ+3+SfSgSZDC9tFwIQScZMKlxeEitJ269CxE6X
	+r1H9QXSmwseQ9d3olERrMiNvdh83zEJnQQ4FsZJ5nkevFGsZvfw85QpCq+V3mm8DpMPllCipUQyj
	iWtK+XJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUgSF-0000000EWnr-3Yn4;
	Wed, 03 Jun 2026 07:55:59 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUgSD-0000000EWnG-05hi;
	Wed, 03 Jun 2026 07:55:58 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3ACFD43619;
	Wed,  3 Jun 2026 07:55:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B08A1F00893;
	Wed,  3 Jun 2026 07:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780473356;
	bh=Wg1auuZ/RkyM9q0wfkNZ3VMopVIX7IMAew2IYgKpP5w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Sn5Pe0xPJeO+JuLwuZga6++aBXw58UhF6Y7VAzCe36GaKUKbDDzDxT9znismE+yiX
	 WrbAveA5YXDL5e3yRUNuehGPpBV9mr5gQEsEG1h8+1or0B8K3qfQlg86JU+KpM9rOT
	 SzPIkElTzH1PMgPQhXMCvLVZONIE3+o5VtIkPG7c+uU9Ez5LTCScgNJQCZMAmUsHeA
	 BzJHOlCZiELKTih6yoEHa3uNyuR4gMJ0p5TF+rumjiYSXfqhh2vI+2vTYzu9ZceKrC
	 ulyJQulTobUty11LzpfxP2hMBMl3vuy0jHB1Yn89UdHP+MZ0+lahovoVv/PZJaBiEt
	 MDpBKoxBgZpRA==
Date: Wed, 3 Jun 2026 09:55:51 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Alexey Charkov <alchark@flipper.net>
Subject: Re: [PATCH 2/2] drm/rockchip: dw_hdmi_qp: expose "overscan" property
Message-ID: <20260603-glittering-vigilant-beluga-0c6bf6@houat>
References: <20260602-hdmi-overscan-v1-0-31f71b817c80@flipper.net>
 <20260602-hdmi-overscan-v1-2-31f71b817c80@flipper.net>
MIME-Version: 1.0
In-Reply-To: <20260602-hdmi-overscan-v1-2-31f71b817c80@flipper.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_005557_104022_A06E420A 
X-CRM114-Status: GOOD (  19.11  )
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
Cc: Simona Vetter <simona@ffwll.ch>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, David Airlie <airlied@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3292737422519705410=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3292737422519705410==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="ani5n5ytu5gvthhf"
Content-Disposition: inline


--ani5n5ytu5gvthhf
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 2/2] drm/rockchip: dw_hdmi_qp: expose "overscan" property
MIME-Version: 1.0

On Tue, Jun 02, 2026 at 09:00:40PM +0400, Alexey Charkov wrote:
> Expose the "overscan" connector property as recognized by KWin and the
> likes to compensate for TV overscan cropping.
>=20
> The CRTC will use the margin values derived from this overscan percentage
> in its post-composition scaler to add appropriate blank margins on all
> sides of the output image so that the TV doesn't eat up visible content.
>=20
> Signed-off-by: Alexey Charkov <alchark@flipper.net>
> ---
>  drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu=
/drm/rockchip/dw_hdmi_qp-rockchip.c
> index f35484715c2d..fae44d11dbef 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> @@ -137,10 +137,18 @@ dw_hdmi_qp_rockchip_encoder_atomic_check(struct drm=
_encoder *encoder,
>  					 struct drm_connector_state *conn_state)
>  {
>  	struct rockchip_hdmi_qp *hdmi =3D to_rockchip_hdmi_qp(encoder);
> +	const struct drm_display_mode *adj_mode =3D &crtc_state->adjusted_mode;
>  	struct rockchip_crtc_state *s =3D to_rockchip_crtc_state(crtc_state);
>  	union phy_configure_opts phy_cfg =3D {};
> +	unsigned int overscan;
>  	int ret;
> =20
> +	overscan =3D min(conn_state->tv.overscan, 100u);
> +	s->tv_margins.left   =3D adj_mode->hdisplay * overscan / 200;
> +	s->tv_margins.right  =3D s->tv_margins.left;
> +	s->tv_margins.top    =3D adj_mode->vdisplay * overscan / 200;
> +	s->tv_margins.bottom =3D s->tv_margins.top;
> +
>  	if (hdmi->tmds_char_rate =3D=3D conn_state->hdmi.tmds_char_rate &&
>  	    s->output_bpc =3D=3D conn_state->hdmi.output_bpc)
>  		return 0;
> @@ -603,6 +611,14 @@ static int dw_hdmi_qp_rockchip_bind(struct device *d=
ev, struct device *master,
>  		return dev_err_probe(hdmi->dev, PTR_ERR(connector),
>  				     "Failed to init bridge connector\n");
> =20
> +	ret =3D drm_mode_create_tv_properties_legacy(drm, 0, NULL);
> +	if (ret)
> +		return dev_err_probe(dev, ret,
> +				     "Failed to create TV connector properties\n");
> +
> +	drm_object_attach_property(&connector->base,
> +				   drm->mode_config.tv_overscan_property, 0);
> +

As the name suggests, it's a legacy property only ever used for TV. You
should be using drm_mode_create_tv_margin_properties()

Maxime

--ani5n5ytu5gvthhf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCah/eAQAKCRAnX84Zoj2+
dvSlAXoDJca4arsin0vyikDKDyDq7H6Uu85nLJ9lIaUQv+BybIdX53271li5kSH2
mNYjjl4BgK8QMDqZ6BLEDk0pFwr1B4onSrajFtzqYzcpa/6/ZkDRy8nw7uHH4LI+
c/KkDgrxBw==
=zqMn
-----END PGP SIGNATURE-----

--ani5n5ytu5gvthhf--


--===============3292737422519705410==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3292737422519705410==--

