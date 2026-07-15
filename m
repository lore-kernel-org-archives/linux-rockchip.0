Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 946EBC44507
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jul 2026 08:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iS+iK3euN5u/nMChorg0jn2TJ/FFkSzKt72ebazKRjg=; b=c5SAiPldoffM7VYEUMboi/iCbu
	dTrM1CcjQ+cU0uW4XwKQVMBbz5jaIY3WXHdx9mxKJj+SKsZNuvnqTllF3eN9HOYSvC8n6Wy8ayiiR
	CRK6DCC6HoTEzSavf3b/AoCtQ2vW1e5DRx0ZaiF6oRX2CYzJqPigPqEAJvr6l5XFnspI9vdRHbyHe
	pi4D09D+j+ikm6QLEv54Q5b6Wn0RPtHUvPOBK+92sBuYPAYjhHbTQdWIAM1gjswGDK8fH4Oavl2oZ
	duG6AtFokXJ1q3XL5hI2eBr9679EpCAYHtAyRoyLsjjiKLqobxDILpJ3ADAqlCs8c+Tk31uo/qnIL
	zGD2cMhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjvOq-0000000EEWi-3CiQ;
	Wed, 15 Jul 2026 08:55:28 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjvOj-0000000EEO5-2Z5S;
	Wed, 15 Jul 2026 08:55:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 566EC438B0;
	Wed, 15 Jul 2026 08:55:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B99241F00A3E;
	Wed, 15 Jul 2026 08:55:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784105721;
	bh=Z3wUKrGG21PQMUu0kd7DBV0yHXAtkX/rwuwlWXDYxKw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=cECXb+VJoR+yj3jVqoQiYsUTp85S/mZ6iPkKHA8qdyfmKip6k0znsuyxCKjKXsCb1
	 hd8NEEs5A95KQ9zDQLBjmeugvDL5UuAgA9xIJD+iqFprTldJArH0l40sDaDMdCilrg
	 7UvTr0OkibOLlZebpv3bD9Kg6fwSB3u8Rc3RoEgPrD5EqyT2IYe7ytrGbWVgyhJQjq
	 r6MxKuA3O65/qCzoleLgSwBnPk0RoqFUswD91pwLj5vP0yJ97ausjdWaF+TEOInrA8
	 6MQRitPOK6vDPdMG9Ni4k3YqIvTL2b1wFpFYYai//3KEfTfwzNfl8Z0oksLG6Xz1gO
	 PAIE76Ets/1ag==
Date: Wed, 15 Jul 2026 10:55:19 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Daniel Stone <daniels@collabora.com>, Dave Stevenson <dave.stevenson@raspberrypi.com>, 
	=?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>, Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
	kernel@collabora.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v8 04/39] drm/connector: Add HDMI 2.0 scrambler
 infrastructure
Message-ID: <20260715-ancient-zealous-eagle-b13e94@houat>
References: <20260702-dw-hdmi-qp-scramb-v8-0-d79890d00b6a@collabora.com>
 <20260702-dw-hdmi-qp-scramb-v8-4-d79890d00b6a@collabora.com>
 <tjsidlnvswo2rdhqa6jybxrnb47lxgmxdlfrfbasuh67wjbqoy@3a45n3zawvnf>
 <17753a1c-824a-4835-ac2d-8b2796bba1eb@collabora.com>
 <534b921c-638c-4fc3-b89e-5dfc1f269f96@collabora.com>
 <20260713-statuesque-nonchalant-seagull-b9c39d@houat>
 <91c3a825-3344-4ff5-8ea0-f8f057665b3f@collabora.com>
MIME-Version: 1.0
In-Reply-To: <91c3a825-3344-4ff5-8ea0-f8f057665b3f@collabora.com>
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
Content-Type: multipart/mixed; boundary="===============1329059293761352313=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1329059293761352313==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="r5otlnmsebefwt2i"
Content-Disposition: inline


--r5otlnmsebefwt2i
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v8 04/39] drm/connector: Add HDMI 2.0 scrambler
 infrastructure
MIME-Version: 1.0

On Mon, Jul 13, 2026 at 01:23:00PM +0300, Cristian Ciocaltea wrote:
> On 7/13/26 11:50 AM, Maxime Ripard wrote:
> > On Thu, Jul 09, 2026 at 10:25:54PM +0300, Cristian Ciocaltea wrote:
> >> On 7/3/26 11:54 PM, Cristian Ciocaltea wrote:
> >>> On 7/3/26 5:34 PM, Dmitry Baryshkov wrote:
> >>>> On Thu, Jul 02, 2026 at 05:46:17PM +0300, Cristian Ciocaltea wrote:
> >>>>> Add the connector-level infrastructure to support HDMI 2.0 scrambli=
ng:
> >>>>>
> >>>>> - A scrambler_supported flag to indicate whether the source support=
s the
> >>>>>   scrambling capability, in which case the newly introduced
> >>>>>   .scrambler_{enable|disable}() callbacks in drm_connector_hdmi_fun=
cs
> >>>>>   are mandatory
> >>>>
> >>>> Do we need a flag? What would it mean if the flag is set, but the
> >>>> callbacks are not? Can we drop the flag and use the presence of the
> >>>> callbacks as a way to identify that scrambler is enabled?
> >>>
> >>> The flag is intended to be set only within drmm_connector_hdmi_init_w=
ith_caps()
> >>> when drivers advertise HDMI 2.x capability, in which case it also ens=
ures the
> >>> callbacks are provided. =20
> >>>
> >>> We could drop the flag and instead have the init helper clear the cal=
lbacks if
> >>> they were provided for HDMI 1.x.  This might slightly reduce code rea=
dability,
> >>> as it relies on checking the presence of individual callbacks - espec=
ially since
> >>> we plan to extend this further with HDMI 2.1 support, providing four =
or five
> >>> additional FRL-specific callbacks.
> >>
> >> I tried to replace the flag with a helper that checks the presence of =
(one of)
> >> the callbacks, but it's not straightforward to unset those for non-HDM=
I 2.x
> >> cases since the hdmi_funcs argument is immutable.
> >=20
> > I'm not sure why we would need to unset them. If the driver states that
> > it support HDMI 2.0, then it needs to be there, if it doesn't, then who
> > cares? it's not going to be used. We can log a warning that it's
> > inconsistent I guess, but there's no need to actively remove it.
>=20
> I was trying to address the use case where drivers provide the scrambler
> callbacks despite not supporting HDMI 2.0.

Scrambling got introduced with HDMI 2.0. That doesn't make sense, but
it's not a total deal breaker, it's just going to be here unused. Hence
why I was suggesting to put a warning there if you wanted to.

> If we replace the scrambler_supported flag with a helper checking the
> presence of the scrambler callbacks, then we would need to ensure the
> callbacks do not exist in this case.

Keep it simple:

if (hdmi_version >=3D HDMI_VERSION_2_0)
   if (funcs->scrambler_enable)
      hdmi->scramblers_supported =3D true
   else
      return -EINVAL
else
    drm_warn(warn, "Inconsistent HDMI version");

We don't need anything more than that.

Maxime

--r5otlnmsebefwt2i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaldK9gAKCRAnX84Zoj2+
dtiSAYCQu9KcWvuZmn9ga9LZdgJaVIDPuT7TU896zIyMgZrU9Y4Z7K/BVp+ja2wo
PJPHb/MBgNa/bcF9LTNuobtKeO7OjWhTX9TRuccydJYn14FFBYI4MSwo9wgXvaoZ
w3E2VgsTMA==
=cc5C
-----END PGP SIGNATURE-----

--r5otlnmsebefwt2i--


--===============1329059293761352313==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1329059293761352313==--

