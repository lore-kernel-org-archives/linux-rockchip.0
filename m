Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4257CD8C92
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jun 2026 09:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9Kh9llf7n7513Lz9Et2lKVFMaBEdRYy/asZmzIqgcoc=; b=wGhWUshrbPufWwKk7oxVaWuMoK
	X30OCU54ikXwGQeQL50rpTl1Y6s/tezBanrUymMnuTQm5ilGV3nf3X+UXI5Zdv8pXlFFe8FB+hcZL
	xsEkg17f5+WcrCAv2fh5i1b1uGiOS7eyLaH367j5tSdDVpC9BffXvFzpHjkxDPoZPon/OXYitqIlo
	uQrORmRAOH7zq+j0JxRJpJXBoIsPTo4IWiXAtfR3W05Rsm5cHHmcYzgbundX7RhujnrbGaEgfSGnr
	xX6zFHExQNkTHr8tM8sxDNSyf8+e+7qeWfceAj6rgpYRxpUC+0bd69r0Mp/QKr9dnmRGJdN0sip45
	ZtDiybUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWW7L-000000039zP-1hQ8;
	Mon, 08 Jun 2026 09:17:59 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWW7J-000000039yu-0TyF;
	Mon, 08 Jun 2026 09:17:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B2DE4406E7;
	Mon,  8 Jun 2026 09:17:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D8F01F00893;
	Mon,  8 Jun 2026 09:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780910276;
	bh=dgqu6KzfbRiaFztUl8n6hnkGE5DMDdl4m+11IAfZFe8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=F8edl6OX6sIH78JKJF4DOVpRYHKkvWc/xgxsjZm/7f2JatgwoDI/di3zuqQYVxtq6
	 5HU5xHZcuvyIuTwjSGQq6HP/fwXQE+6VUrkzR8NHLbKxK2OVDsDKRvirwcpG+i1XlD
	 iY/xhiPw07uCqUn3fhZ+sszN8Kff0tuSmQ6IApP7ivvX4Bs+hB37ziO/clEdKEsAYI
	 CZsNzNUOLZ2U87xY75+VDRhG4/vwuwXzKlrbQX72LQeWjDruzJNVJ1KmsP5/laFSja
	 8gEQFLkwC6SpOUtFjSUyR1lCmd7GmLYE1zGBxyFZ1DvfQJN3+h7HbWl8xydcm62dTH
	 fmx+4T5eg8w8g==
Date: Mon, 8 Jun 2026 11:17:54 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Alexey Charkov <alchark@flipper.net>
Subject: Re: [PATCH 2/2] drm/rockchip: dw_hdmi_qp: expose "overscan" property
Message-ID: <20260608-judicious-maroon-toucanet-a8f610@houat>
References: <20260602-hdmi-overscan-v1-0-31f71b817c80@flipper.net>
 <20260602-hdmi-overscan-v1-2-31f71b817c80@flipper.net>
 <20260603-glittering-vigilant-beluga-0c6bf6@houat>
 <CAKTNdwE5uAOc9V+L1J7_QJfW45D-K-vTnpHuktxD2=x9e_4jOQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKTNdwE5uAOc9V+L1J7_QJfW45D-K-vTnpHuktxD2=x9e_4jOQ@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============0051316260055651112=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0051316260055651112==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="3wuqchwy36r7xdmf"
Content-Disposition: inline


--3wuqchwy36r7xdmf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 2/2] drm/rockchip: dw_hdmi_qp: expose "overscan" property
MIME-Version: 1.0

Hi Alexey,

On Wed, Jun 03, 2026 at 12:15:04PM +0400, Alexey Charkov wrote:
> On Wed, Jun 3, 2026 at 11:55=E2=80=AFAM Maxime Ripard <mripard@kernel.org=
> wrote:
> >
> > On Tue, Jun 02, 2026 at 09:00:40PM +0400, Alexey Charkov wrote:
> > > Expose the "overscan" connector property as recognized by KWin and the
> > > likes to compensate for TV overscan cropping.
> > >
> > > The CRTC will use the margin values derived from this overscan percen=
tage
> > > in its post-composition scaler to add appropriate blank margins on all
> > > sides of the output image so that the TV doesn't eat up visible conte=
nt.
> > >
> > > Signed-off-by: Alexey Charkov <alchark@flipper.net>
> > > ---
> > >  drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 16 ++++++++++++++++
> > >  1 file changed, 16 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers=
/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> > > index f35484715c2d..fae44d11dbef 100644
> > > --- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> > > +++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> > > @@ -137,10 +137,18 @@ dw_hdmi_qp_rockchip_encoder_atomic_check(struct=
 drm_encoder *encoder,
> > >                                        struct drm_connector_state *co=
nn_state)
> > >  {
> > >       struct rockchip_hdmi_qp *hdmi =3D to_rockchip_hdmi_qp(encoder);
> > > +     const struct drm_display_mode *adj_mode =3D &crtc_state->adjust=
ed_mode;
> > >       struct rockchip_crtc_state *s =3D to_rockchip_crtc_state(crtc_s=
tate);
> > >       union phy_configure_opts phy_cfg =3D {};
> > > +     unsigned int overscan;
> > >       int ret;
> > >
> > > +     overscan =3D min(conn_state->tv.overscan, 100u);
> > > +     s->tv_margins.left   =3D adj_mode->hdisplay * overscan / 200;
> > > +     s->tv_margins.right  =3D s->tv_margins.left;
> > > +     s->tv_margins.top    =3D adj_mode->vdisplay * overscan / 200;
> > > +     s->tv_margins.bottom =3D s->tv_margins.top;
> > > +
> > >       if (hdmi->tmds_char_rate =3D=3D conn_state->hdmi.tmds_char_rate=
 &&
> > >           s->output_bpc =3D=3D conn_state->hdmi.output_bpc)
> > >               return 0;
> > > @@ -603,6 +611,14 @@ static int dw_hdmi_qp_rockchip_bind(struct devic=
e *dev, struct device *master,
> > >               return dev_err_probe(hdmi->dev, PTR_ERR(connector),
> > >                                    "Failed to init bridge connector\n=
");
> > >
> > > +     ret =3D drm_mode_create_tv_properties_legacy(drm, 0, NULL);
> > > +     if (ret)
> > > +             return dev_err_probe(dev, ret,
> > > +                                  "Failed to create TV connector pro=
perties\n");
> > > +
> > > +     drm_object_attach_property(&connector->base,
> > > +                                drm->mode_config.tv_overscan_propert=
y, 0);
> > > +
> >
> > As the name suggests, it's a legacy property only ever used for TV. You
> > should be using drm_mode_create_tv_margin_properties()
>=20
> Hi Maxime, I tried that one before going for the current solution but
> realized that the userspace tooling I care about (KWin in particular)
> doesn't recognize those properties, but it does recognize "overscan".
> Maybe there's a compat helper somewhere that I missed, which would
> translate between the two?
>=20
> It is for TVs. Turns out that having a proper right-sized digital
> input interface doesn't prevent them from doing weird stuff with the
> image data, i.e. overscanning and cropping it right where one would
> expect to see the system tray and panel.

When I said "TV", I meant old-school analog TV, not modern HDMI ones :)

I guess it's a Kwin issue then. To my knowledge, there's 0 HDMI driver
implementing the legacy tv properties, when VC4 implements the margin
ones for HDMI.

Maxime

--3wuqchwy36r7xdmf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaiaIwQAKCRAnX84Zoj2+
dhCxAYD7DedUCXFMxG0zmpyP1mKhk0Nd/DHzQYvVYJqw8KALO6D0if0LDkgPoiEp
ANJVCzIBgKeFDn4t7faQQCMU/doiZGX1KvxOkHQPnm76uToF7SfXfdOPNQX0SADd
E85+6C88Gw==
=+4Lh
-----END PGP SIGNATURE-----

--3wuqchwy36r7xdmf--


--===============0051316260055651112==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0051316260055651112==--

