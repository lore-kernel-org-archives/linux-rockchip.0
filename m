Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3649C54E49
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Feb 2024 13:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=In1ODdv//VIngEhjP1MkwCpDwVjXPqjLR7I22UJBKMI=; b=Nh6dwg8ZcQwcTNLFfWJ2K5RBR2
	EQnJ2ytoWJTIV5sP5DzFmmNe6Phi7rLqIhXXTx3jwvYCjjZrDg0vCTHGD8OLzbfOGXTy49sR17VYc
	e+ZWAeYxMAqYfATVqZfUJ18p2u7BCWPUqUZjS6hdONN6WJYiYP9ne+QHeO9lmH248QrQ5mZUQKbnv
	F3d7ZXe1s9m5jiuQCeMkNx2CcnsTRK6NLIoVVrhmmVdy0wPC88gWYp070LNCMRu5xwT+fN3xidms5
	yDIl60JEcTRKwygKac9Wb5qjX9y5XyhgcQ7au0aeb9LPzR8vJhJAN6aciJke9mbg8kzOzKPQdBiBz
	9WcGSODQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reawE-00000000oKt-40sm;
	Mon, 26 Feb 2024 13:22:35 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reaw3-00000000oGi-0Enh;
	Mon, 26 Feb 2024 13:22:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7668360F07;
	Mon, 26 Feb 2024 13:22:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95020C433F1;
	Mon, 26 Feb 2024 13:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708953741;
	bh=G1JpQCt7xBq5ZuFeLJZNzoswIp5s4ji8mVX2ZexQGro=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T7AtsCdA/xtJ3EoX6jQR+kZNHOFOCrlfIMbhsDkPVxZaFZDJ7k+mDvPE97EsH1I5j
	 11eSiKoRYlcfxXOQtod9b/+Z9MbyB7yjT8cfEGIvAwfIFWPzxuLScojwy0Drly6vWl
	 BBid2EkxGJOjOQqtgW+EsnX0VYbbPTPlD0LaJ6PUWq7B9/edORgGjPEBTAEp+5/UB4
	 ON2tQLxpddAdmNp/OfI84j9G/sTSSzHKxN7PVuXp+H5XnFfOi6JB9s6aYYuLK6weNl
	 r8k1uqO9gOBylOuHSFsHkE1TExdORSOZYl2QngI1QNiQddQ7PUVPWDslHUIaMRL94U
	 s4POR6jF+Mklw==
Date: Mon, 26 Feb 2024 14:22:18 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, freedreno <freedreno@lists.freedesktop.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Hans Verkuil <hverkuil@xs4all.nl>, Sebastian Wick <sebastian.wick@redhat.com>, 
	Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, Sui Jingfeng <sui.jingfeng@linux.dev>
Subject: Re: [PATCH v7 00/36] drm/connector: Create HDMI Connector
 infrastructure
Message-ID: <4mm45qddujasmbinalcyhjzu4iege3n2a7odbmqmcsnjifyleh@q3kdpjhvwhsq>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
 <CAA8EJpqB+Mf4jp88__r5dfsRSuGdAB+Q3vK5MBfBXysvRB92iQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAA8EJpqB+Mf4jp88__r5dfsRSuGdAB+Q3vK5MBfBXysvRB92iQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_052225_591659_2D7A2930 
X-CRM114-Status: GOOD (  41.67  )
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
Content-Type: multipart/mixed; boundary="===============6545540323713654808=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6545540323713654808==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hqmqlzbdpcfo2xan"
Content-Disposition: inline


--hqmqlzbdpcfo2xan
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Dmitry,

On Sun, Feb 25, 2024 at 04:50:00PM +0200, Dmitry Baryshkov wrote:
> On Thu, 22 Feb 2024 at 20:14, Maxime Ripard <mripard@kernel.org> wrote:
> > Here's a series that creates some extra infrastructure specifically
> > targeted at HDMI controllers.
> >
> > The idea behind this series came from a recent discussion on IRC during
> > which we discussed infoframes generation of i915 vs everything else.
> >
> > Infoframes generation code still requires some decent boilerplate, with
> > each driver doing some variation of it.
> >
> > In parallel, while working on vc4, we ended up converting a lot of i915
> > logic (mostly around format / bpc selection, and scrambler setup) to
> > apply on top of a driver that relies only on helpers.
> >
> > While currently sitting in the vc4 driver, none of that logic actually
> > relies on any driver or hardware-specific behaviour.
> >
> > The only missing piece to make it shareable are a bunch of extra
> > variables stored in a state (current bpc, format, RGB range selection,
> > etc.).
> >
> > The initial implementation was relying on some generic subclass of
> > drm_connector to address HDMI connectors, with a bunch of helpers that
> > will take care of all the "HDMI Spec" related code. Scrambler setup is
> > missing at the moment but can easily be plugged in.
> >
> > The feedback was that creating a connector subclass like was done for
> > writeback would prevent the adoption of those helpers since it couldn't
> > be used in all situations (like when the connector driver can implement
> > multiple output) and required more churn to cast between the
> > drm_connector and its subclass. The decision was thus to provide a set
> > of helper and to store the required variables in drm_connector and
> > drm_connector_state. This what has been implemented now.
> >
> > Hans Verkuil also expressed interest in implementing a mechanism in v4l2
> > to retrieve infoframes from HDMI receiver and implementing a tool to
> > decode (and eventually check) infoframes. His current work on
> > edid-decode to enable that based on that series can be found here:
> > https://git.linuxtv.org/hverkuil/edid-decode.git/log/?h=3Dhverkuil
> >
> > And some more context here:
> > https://lore.kernel.org/dri-devel/50db7366-cd3d-4675-aaad-b857202234de@=
xs4all.nl/
> >
> > This series thus leverages the infoframe generation code to expose it
> > through debugfs.
>=20
> [...]
>=20
> >
> > Let me know what you think,
> > Maxime
>=20
> The overall idea looks great. I've started checking how I can use that
> for our msm devices family, which makes use of bridges and
> drm_bridge_connector.

Yeah, I had that in mind for a while too. I think it would be valuable,
but it's difficult as it is already so I didn't tackle it at first :)

The format negociation especially seems to divert quite a lot from what
i915 and vc4 have been doing, and that's user facing to some extent.

> My current idea is to extend the drm_bridge_funcs with the new
> callback to be called once the drm_connector has been instantiated.
> This way all the bridges can influence new connector.
> Another possibility is to follow drm_bridge_connector design closely
> and let it call into drm_connector_hdmi code if it detects that the
> last bridge is the HDMI one.
> WDYT?

I had the latter in mind, but I haven't really tried to reconcile the
connector state output_format with the
drm_atomic_helper_bridge_propagate_bus_fmt, and plug in the output_bpc
count too.

We would have to create the max_bpc properties from the HDMI connector,
and then propagate that upstream along the bridges I guess (or we can
just ignore it for now).

So, yeah, I had the latter in mind but it might turn out that the former
is actually easier. Both make sense to me at least.

Maxime

--hqmqlzbdpcfo2xan
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZdyQigAKCRDj7w1vZxhR
xbuAAP4tcqj0CCuj697zMFFK59Fkl+ntwJnDHJijUuztt43AQwD/fzLo/sHP+roN
fQLUY+aBNymzblpBsRsstG3l6Zw2dgQ=
=l8IQ
-----END PGP SIGNATURE-----

--hqmqlzbdpcfo2xan--


--===============6545540323713654808==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6545540323713654808==--

