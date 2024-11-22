Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4A01E65D3A
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Nov 2024 09:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XFDPsRCeDu2OQMMF14oMmF+syFBzH7/XpXCKrxMe474=; b=xQ189lwu1Mpg2uH0SO7kISlAgq
	rpqZsKX8Imx/XmhvulcZyRi2dVcqflrw1Hp+fuOroEoIeNpMwzriTjpZv2hEJPIUkMf9m2FK4gn2V
	XSEsxzk6Xb9c8fMIDeSVhSQqAfE9lGFItMvYBJOXbXu6blJ40qzQ9ZUzaASj6c/EHt5DvdeD/jPkK
	Z0G+lgmBwHu+J2ml7ssdewDQnG0LbG1E5c0hiMaI2jIMf0M/NiB1OC9xWbKXtqxhf1bNWJU6eobvW
	I7sIo5968enGT2HVtvTnZ45jrhqgYR+DToOsbEZtBvVwvp/w4SuFjJnjTYgy6AD4Kxv5asXHeda7I
	cYhqGwPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEPu7-000000025OI-0jGC;
	Fri, 22 Nov 2024 09:24:43 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEPl0-000000022XA-3xDs;
	Fri, 22 Nov 2024 09:15:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 639EA5C5A23;
	Fri, 22 Nov 2024 09:14:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71F25C4CEDF;
	Fri, 22 Nov 2024 09:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732266916;
	bh=R6maSGuuOMKhhf9sSnHx8qiK51scqKOLehJIOotIrMo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O98FkhEaQQs9rPvqF+c1qXRvM9FG3+cAOYMCXCC7iq4k5sppI9C/IqigYL39LWwnW
	 DI0BcG7znPyh6z1SvNA1nEPwhZuZeshfmOo6bAjSA6qKKLXN5YnRKDRcD+VrjY5py+
	 FfVXgYLnMi47knyttXkw9NHZe7NTXLjzxCAenvbjLkgyCfkX5aub8KVSiUv1Ccm2gU
	 pQsc9+7tom/pdoQdV+c5NwgomdmK7eQETs7gQc4eVXfsCZ6J86qnr3OHHaAHPmr0Iw
	 2/sjiGf2JSjwBur4jRB7mVt/oCuIO2NuIra9SxkDxog4Ihc8roGk7FjWQLVHFT345b
	 kox4weqSIuDJQ==
Date: Fri, 22 Nov 2024 10:15:14 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH] drm/rockchip: avoid 64-bit division
Message-ID: <20241122-rebel-donkey-of-atheism-a0b8b6@houat>
References: <20241018151016.3496613-1-arnd@kernel.org>
 <20241104172950.GA741087@thelio-3990X>
 <CAMuHMdXrrCiLm2sQmpegtVHV8X5AUp-8E5BejDxRpMbeAfHhvQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMuHMdXrrCiLm2sQmpegtVHV8X5AUp-8E5BejDxRpMbeAfHhvQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241122_011519_069321_0831E386 
X-CRM114-Status: GOOD (  26.54  )
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
Cc: Simona Vetter <simona@ffwll.ch>, Arnd Bergmann <arnd@kernel.org>, Algea Cao <algea.cao@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>, linux-rockchip@lists.infradead.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, David Airlie <airlied@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2601225756193702857=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2601225756193702857==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="km5zocuqrx7s7sxg"
Content-Disposition: inline


--km5zocuqrx7s7sxg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] drm/rockchip: avoid 64-bit division
MIME-Version: 1.0

On Fri, Nov 22, 2024 at 09:36:16AM +0100, Geert Uytterhoeven wrote:
> On Mon, Nov 4, 2024 at 6:30=E2=80=AFPM Nathan Chancellor <nathan@kernel.o=
rg> wrote:
> > On Fri, Oct 18, 2024 at 03:10:10PM +0000, Arnd Bergmann wrote:
> > > From: Arnd Bergmann <arnd@arndb.de>
> > >
> > > Dividing a 64-bit integer prevents building this for 32-bit targets:
> > >
> > > ERROR: modpost: "__aeabi_uldivmod" [drivers/gpu/drm/rockchip/rockchip=
drm.ko] undefined!
> > >
> > > As this function is not performance criticial, just Use the div_u64()=
 helper.
> > >
> > > Fixes: 128a9bf8ace2 ("drm/rockchip: Add basic RK3588 HDMI output supp=
ort")
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> >
> > Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> >
> > Can someone please pick this up? It is still broken in next-20241104...
> >
> > https://storage.tuxsuite.com/public/clangbuiltlinux/continuous-integrat=
ion2/builds/2oNvJFRj8tkDieb6VfrMf4rh1Kn/build.log
> >
> > > ---
> > >  drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers=
/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> > > index 9c796ee4c303..c8b362cc2b95 100644
> > > --- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> > > +++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> > > @@ -82,7 +82,7 @@ static void dw_hdmi_qp_rockchip_encoder_enable(stru=
ct drm_encoder *encoder)
> > >                * comment in rk_hdptx_phy_power_on() from
> > >                * drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> > >                */
> > > -             phy_set_bus_width(hdmi->phy, rate / 100);
> > > +             phy_set_bus_width(hdmi->phy, div_u64(rate, 100));
> > >       }
> > >  }
>=20
> noreply@ellerman.id.au has just told me this build issue is now upstream:
>=20
>     FAILED linus/m68k-allmodconfig/m68k-gcc8.1 Fri Nov 22, 05:34
>     http://kisskb.ellerman.id.au/kisskb/buildresult/15277242/
>=20
>     Commit:   Merge tag 'drm-next-2024-11-21' of
> https://gitlab.freedesktop.org/drm/kernel
>               28eb75e178d389d325f1666e422bc13bbbb9804c
>     Compiler: m68k-linux-gcc (GCC) 8.1.0 / GNU ld (GNU Binutils) 2.30
>=20
>     ERROR: modpost: "__udivdi3"
> [drivers/gpu/drm/rockchip/rockchipdrm.ko] undefined!
>=20
> Applying this patch fixes it, so
> Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>
>=20
> Do we really need +5 weeks to apply a fix for a reported build issue?

Do we really need that kind of comments?

It was applied already, I made sure it's part of the next PR we send to
Linus. And it should be in linux-next tomorrow.

Maxime

--km5zocuqrx7s7sxg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ0BLoQAKCRAnX84Zoj2+
dvdpAYCvsOCxb45AeqggVGmNsnQVm/dPhE0CFCB0XgME96Ckt5GWCfvgvHHFGQ67
DbeiNMsBfj0lX0BUOAJb43jsZ7t5pR3aQV2oQXOnvO4fBEweIdvhGYuMQ03s9rcE
THskPa19zg==
=YJ/Z
-----END PGP SIGNATURE-----

--km5zocuqrx7s7sxg--


--===============2601225756193702857==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2601225756193702857==--

