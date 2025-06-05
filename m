Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 281DBC5B543
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jun 2025 12:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6qP4Ic2JxRUIF+B8NYwOWcjyBH6uF8fXxTqRmlLQmYE=; b=r24gEsU+xvHK+bwBIsRNE9dNmo
	6Mj52awK7xsec6aEX0jwU2PpaTRLEEvHDeQkxgkYX+a1ld9A8gdxUD6OD0U96IrTKNXEowen1+nAH
	7rFVSWlZnI7Lyf7DPJS1rDm7MutjQ10h+KwDuWZO95ONYg2eBCFNg3cJK2zfXRp9sH+TC9i6dWKiX
	VouSZSiQZBbjvvRrYiU1nXFlGrsOvGnXBYuw29FMardR42QU51kP30ZSr6P3d2+2HQf9akh7AFnHk
	USkb70dMU9GvFVzGQIvJ+igJnL9YRvgFnkjDJFqwDWbYOSp7qWyaXwufVr39Iv6MawE2NrVVbdzno
	sXzXIDAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNA8R-0000000FWyR-2e5F;
	Thu, 05 Jun 2025 12:55:55 +0000
Received: from out-181.mta1.migadu.com ([2001:41d0:203:375::b5])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNA8O-0000000FWxz-1oWY
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Jun 2025 12:55:54 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1749128148;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=iLfh3z3SZ208p/eWHCxbn+NAgJHxxAz/VVAyyqXWVco=;
	b=B6OdNHm0lZBSI3WoeIBsMpzxSbbchv6Knk0kJHIKNyIaCFjw9LqNx1owLrFTshwQ5X2U7V
	FhnPkyd0uVHEa58cYxQkq/7h3rAIF6GYEjPUXcvnpghwIvTu+spiTOrPgKZAfqdrxo6tjF
	d8hoUqO0qiHpztfSrgt4CG2zhyb9trMEik43WfAIq/D2+5P7g6NZyglS1N+osbpKTxMVaC
	px1ecg1Biiz9HfR92Inqy2wTFEI4Ogn3Ia2uiUU6fT7vF190bzpaxO8SPG9fLwEi9Utrrm
	qHbbyS7A5/TfnvPafiB2YqqQKmrxiiFZJs6ZFN+BbObuZQfE7HlkPT6U8Hsh1A==
Date: Thu, 05 Jun 2025 14:55:08 +0200
Message-Id: <DAEM5ZXWOVLM.10IJV82EMBVCK@cknow.org>
Cc: <linux-rockchip@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <sebastian.reichel@collabora.com>, <conor+dt@kernel.org>,
 <krzk+dt@kernel.org>, <robh@kernel.org>, <tzimmermann@suse.de>,
 <mripard@kernel.org>, <maarten.lankhorst@linux.intel.com>,
 <simona@ffwll.ch>, <airlied@gmail.com>, <quic_jesszhan@quicinc.com>,
 <neil.armstrong@linaro.org>, <javierm@redhat.com>, <megi@xff.cz>, "Chris
 Morgan" <macromorgan@hotmail.com>
Subject: Re: [PATCH 3/4] drm/panel: himax-hx8394: Add Support for Huiling
 hl055fhav028c
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "Chris Morgan"
 <macroalpha82@gmail.com>, <dri-devel@lists.freedesktop.org>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
 <20250603193930.323607-4-macroalpha82@gmail.com>
 <DAEKVTXT0FHB.TOVX7BU9ZYXA@cknow.org> <2932680.yaVYbkx8dN@diego>
In-Reply-To: <2932680.yaVYbkx8dN@diego>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_055553_028430_2FA40B9E 
X-CRM114-Status: GOOD (  21.86  )
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
Content-Type: multipart/mixed; boundary="===============7186254530872123292=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============7186254530872123292==
Content-Type: multipart/signed;
 boundary=1d6a4595b3996cc7b6eed68782d8a2b1bd983f8490a29966be91698fee5d;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--1d6a4595b3996cc7b6eed68782d8a2b1bd983f8490a29966be91698fee5d
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Thu Jun 5, 2025 at 2:46 PM CEST, Heiko St=C3=BCbner wrote:
> Am Donnerstag, 5. Juni 2025, 13:54:50 Mitteleurop=C3=A4ische Sommerzeit s=
chrieb Diederik de Haas:
>> On Tue Jun 3, 2025 at 9:39 PM CEST, Chris Morgan wrote:
>> > From: Chris Morgan <macromorgan@hotmail.com>
>> >
>> > Add support for the Huiling hl055fhav028c panel as used on the
>> > Gameforce Ace handheld gaming console. This panel uses a Himax HX8399C
>> > display controller and requires a sparsely documented vendor provided
>> > init sequence. The display resolution is 1080x1920 and is 70mm by 127m=
m
>> > as stated in the manufacturer's documentation.
>> >
>> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
>> > ---
>> >  drivers/gpu/drm/panel/panel-himax-hx8394.c | 142 ++++++++++++++++++++=
+
>> >  1 file changed, 142 insertions(+)
>> >
>> > diff --git a/drivers/gpu/drm/panel/panel-himax-hx8394.c b/drivers/gpu/=
drm/panel/panel-himax-hx8394.c
>> > index ff994bf0e3cc..16e450b156b7 100644
>> > --- a/drivers/gpu/drm/panel/panel-himax-hx8394.c
>> > +++ b/drivers/gpu/drm/panel/panel-himax-hx8394.c
>> > @@ -477,6 +477,147 @@ static const struct hx8394_panel_desc mchp_ac40t=
08a_desc =3D {
>> >  	.init_sequence =3D mchp_ac40t08a_init_sequence,
>> >  };
>> > <snip>
>> > +
>> > +static const struct drm_display_mode hl055fhav028c_mode =3D {
>> > +	.hdisplay	=3D 1080,
>> > +	.hsync_start	=3D 1080 + 32,
>> > +	.hsync_end	=3D 1080 + 32 + 8,
>> > +	.htotal		=3D 1080 + 32 + 8 + 32,
>> > +	.vdisplay	=3D 1920,
>> > +	.vsync_start	=3D 1920 + 16,
>> > +	.vsync_end	=3D 1920 + 16 + 2,
>> > +	.vtotal		=3D 1920 + 16 + 2 + 14,
>>=20
>> Shouldn't this be 's/14/16/' ?
>
> Could you give a reason for why you think so please, so that we
> don't dance around the perceived problem too long :-) .

Yeah, sorry.
.htotal appears like the value from .hsync_end + .hsync_start (minus the
1080) and with that same logic, I would expect .vtotal to be .vsync_end
+ vsync_start (minus the 1920). So the '14' could've been a typo.

Hope that clarifies my thought process.

Cheers,
  Diederik

> The front-porch / back-porch values are not generally identical
> that is more a random event.
>
> Grabbing a random panel like the panel-leadtek-ltk050h3146w.c
> you'll see the values not matching.
>
> So those timing values are specific to the panel and in the common
> case not identical.
>
>
> Heiko
>
>>=20
>> Cheers,
>>   Diederik
>>=20
>> > +	.clock		=3D 134920,
>> > +	.flags		=3D DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
>> > +	.width_mm	=3D 70,
>> > +	.height_mm	=3D 127,
>> > +};
>> > +
>> > +static const struct hx8394_panel_desc hl055fhav028c_desc =3D {
>> > +	.mode =3D &hl055fhav028c_mode,
>> > +	.lanes =3D 4,
>> > +	.mode_flags =3D MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST,
>> > +	.format =3D MIPI_DSI_FMT_RGB888,
>> > +	.init_sequence =3D hl055fhav028c_init_sequence,
>> > +};
>> > +
>> >  static int hx8394_enable(struct drm_panel *panel)
>> >  {
>> >  	struct hx8394 *ctx =3D panel_to_hx8394(panel);
>> > @@ -683,6 +824,7 @@ static void hx8394_remove(struct mipi_dsi_device *=
dsi)
>> > =20
>> >  static const struct of_device_id hx8394_of_match[] =3D {
>> >  	{ .compatible =3D "hannstar,hsd060bhw4", .data =3D &hsd060bhw4_desc =
},
>> > +	{ .compatible =3D "huiling,hl055fhav028c", .data =3D &hl055fhav028c_=
desc },
>> >  	{ .compatible =3D "powkiddy,x55-panel", .data =3D &powkiddy_x55_desc=
 },
>> >  	{ .compatible =3D "microchip,ac40t08a-mipi-panel", .data =3D &mchp_a=
c40t08a_desc },
>> >  	{ /* sentinel */ }
>>=20
>>=20


--1d6a4595b3996cc7b6eed68782d8a2b1bd983f8490a29966be91698fee5d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaEGTzAAKCRDXblvOeH7b
bjh1AP9cGBzcHoj4/QSIYlzp1KnpbeOVmTCmlp3PliPz3aPnzAEAnj7ufwBOTtNa
CNe/bOF3w/MM46lqxolwBK0aDDsEwQ4=
=awq7
-----END PGP SIGNATURE-----

--1d6a4595b3996cc7b6eed68782d8a2b1bd983f8490a29966be91698fee5d--


--===============7186254530872123292==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7186254530872123292==--

