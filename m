Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EA24C5478C
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EfNSqjHTBwIIFiAJIw0VQ/inuMZq2WOzoNP3/6pVIW4=; b=Eb0kOebo4w6tcT/aU3azzmTOr8
	Fyy8BLMrOJPuwHn9cILUza9x0In4HmEUARNwbDOqZ4N9uETs0kFYHswYKdwv6YqRFOU40BQzrD0Ej
	3OVKd+3CqTco+l4DONN4R2MzqAsUFw5OjL5J2fJb+Wx4F7OdS5dDeKM3SNna3SUAAHS5AseROgd4L
	UXWgipkv8Q4jwRzuCn/u35d/9hM5WfcdhVP4Ds5xAcKh8Z6dwL5M+NUWBgrDemzpQYCzJhg3hX75e
	2z4RIF8iPsn9x06rSUOAOyt2FAIUzOxE3mayhR1z17FmBjTkX+vYFgPsfezTfV4uiTh8N06Ckovuy
	WmoCK3gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rewFy-000000053lK-3rcs;
	Tue, 27 Feb 2024 12:08:22 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rewFu-000000053jj-345v;
	Tue, 27 Feb 2024 12:08:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8D20661539;
	Tue, 27 Feb 2024 12:08:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF9B4C43390;
	Tue, 27 Feb 2024 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709035697;
	bh=ACaz7oj5ReqFoIR72ebNJXl994t4BOU7shgO5K8CUjs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rPcOhAiN2PtkNLYRBMqmRiMbDR6p59SbOgdUHY6MdY/GfepvdtHrN4RR9v1sZYqf6
	 jGI2QQj99JWnXpmDj76LwUn5WOEnN2l8plI/Woy9JymhacQ8VopW5b3x8MDmW6BR3I
	 1mhXEPNwYTypLA8EvT5QrKq5WyQSqfjz/WuF4zmZbFCzvBEEroimeIedS523uwhWc0
	 uq2irP6Mmsab/1y0zyVOZI3iqcQ1Tt+elVYtsRMaL5qiHIHNgePfxDPrjcFVWcmbyP
	 nzPJdHwMz3keyVrdNrECnvtckEFIcLNcawWXousAOSunIXQ/sdzf7RMhsqiuz0ENoH
	 NKhxbGiV9gDEw==
Date: Tue, 27 Feb 2024 13:08:14 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Sebastian Wick <sebastian.wick@redhat.com>, Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v7 25/36] drm/connector: hdmi: Add Infoframes generation
Message-ID: <lxvyfigepzg4jhqub6lg6lmffen4puf477zjxmi766f3hu6trn@nnvg6htufsjn>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
 <20240222-kms-hdmi-connector-state-v7-25-8f4af575fce2@kernel.org>
 <CAA8EJpri_whY8YfX2BsBjMN_4JvFsU-ogfr1W-KUKrasRoH-WQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAA8EJpri_whY8YfX2BsBjMN_4JvFsU-ogfr1W-KUKrasRoH-WQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_040818_889978_2BA58E40 
X-CRM114-Status: GOOD (  15.05  )
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
Content-Type: multipart/mixed; boundary="===============6727958300138140451=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6727958300138140451==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ocit6yam46alzc5t"
Content-Disposition: inline


--ocit6yam46alzc5t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Feb 25, 2024 at 05:02:51PM +0200, Dmitry Baryshkov wrote:
> > @@ -476,6 +478,7 @@ EXPORT_SYMBOL(drmm_connector_init);
> >   */
> >  int drmm_connector_hdmi_init(struct drm_device *dev,
> >                              struct drm_connector *connector,
> > +                            const char *vendor, const char *product,
> >                              const struct drm_connector_funcs *funcs,
> >                              const struct drm_connector_hdmi_funcs *hdm=
i_funcs,
> >                              int connector_type,
> > @@ -485,6 +488,13 @@ int drmm_connector_hdmi_init(struct drm_device *de=
v,
> >  {
> >         int ret;
> >
> > +       if (!vendor || !product)
> > +               return -EINVAL;
> > +
> > +       if ((strlen(vendor) > DRM_CONNECTOR_HDMI_VENDOR_LEN) ||
> > +           (strlen(product) > DRM_CONNECTOR_HDMI_PRODUCT_LEN))
> > +               return -EINVAL;
> > +
> >         if (!(connector_type =3D=3D DRM_MODE_CONNECTOR_HDMIA ||
> >               connector_type =3D=3D DRM_MODE_CONNECTOR_HDMIB))
> >                 return -EINVAL;
> > @@ -500,6 +510,12 @@ int drmm_connector_hdmi_init(struct drm_device *de=
v,
> >                 return ret;
> >
> >         connector->hdmi.supported_formats =3D supported_formats;
> > +       strtomem_pad(connector->hdmi.vendor, vendor, 0);
> > +       strtomem_pad(connector->hdmi.product, product, 0);
> > +
> > +       ret =3D drmm_mutex_init(dev, &connector->hdmi.infoframes.lock);
>=20
> I'd suggest moving this call to the generic __drm_connector_init().
> This way no matter how the rest of the drm code (mis)uses the
> connector, the lock is always present and valid.

Yeah, that makes sense, I'll change it.

Thanks!
Maxime

--ocit6yam46alzc5t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZd3QrgAKCRDj7w1vZxhR
xUw4AQDY/7kZ7wFpO+/Ak/W0YWywU3LNZ5pkN4Om9GBNtAUK6wD/YV9OiFjDhmlL
sW/aBGeDNa/yzjkkc0NKa5D6dGQe5Qc=
=FJc2
-----END PGP SIGNATURE-----

--ocit6yam46alzc5t--


--===============6727958300138140451==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6727958300138140451==--

