Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95E20C44507
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jul 2026 19:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WLj0Av8MUHHG+qhvKOF2TFgLBPwJve0IODus+oeM1Fg=; b=efsVz3dK25n1j8ICU5aov+vZIm
	E4E4CWIqxSO+UAEGf6yxFw4E6jz3vGxzCTj+CydF2uBVGY+moCkCXMRA0nJDTgWp5OIaLUP90xE8f
	ECEJzLU61MmTKuRImm+CpXjfqOfjVYC+Nq8TM0DYB/aGl5HRq6vNXeRpHaEZVRULyY3dS00WA/NHp
	RMteeSPK+0xsaBRdCPDY/O681s7PjYK7w+JmX7yc+R4ZMrAXurICIqPZLMMbh7nAk00MqTJsGeDzj
	l23oFLfA5iKcM4cJ+DyIFTXBKQmmqSsrlXaDEBWox3I0O8/9DJlx9BXV+tmD3HBPhBuJfAXOmM1rm
	kvIVpXZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk4qn-0000000FkHp-30Jq;
	Wed, 15 Jul 2026 19:00:57 +0000
Received: from sender4-op-o11.zoho.com ([136.143.188.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk4ql-0000000FkGw-1Nt3;
	Wed, 15 Jul 2026 19:00:56 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1784142021; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=HGclnZF4WMpho9f8V4+4GrYlMK3objtIhSbW17+1WNUQwDd/kYGpQsleFCCm/JeuxCvhC5l4/Q6rjvYeNggq/qv90UZgFiN+ssyU6JuyXpgk5gUikVbSoRm+WjWDcwuSUDe5hI8HPWEcyA5OKQIHfMAnVTQfzgGIlrmSXw90uZg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1784142021; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=wx7zVh6+YVdbciHjwu98zS3vCnhsUo+yZKW7w0GKraQ=; 
	b=kWbrsMBolZ8Zfd49lpKd4UdMZQsHUxhMJnme3IJOIYSgpYOd3trna9rOk001ngldl4jM1+egA96LKFE1c8GOX+xSM318lTCHmGxbEZO2aNNVSvQgsUHPDtIy0MQF/6DAtCuzqqqKOvHq18E6tzG93e2SBBkHfG7t4msK0EC18Wg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1784142021;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=wx7zVh6+YVdbciHjwu98zS3vCnhsUo+yZKW7w0GKraQ=;
	b=VniaRhcF9Kv5Ccr1lpzh2sryx9dhlO7JBY9X1tBtK97Hi/EftXhhFR9/g9hKeOZV
	62ZCj4EGeocih9kVJgLoblFtMpmm/+yEgh+f9CIlEIcsin+Rh4XwkgskLCzY82ra6Se
	AVxGvsePHXkfiR6ZLCewtjbf+MSe5xpStpVIwafs=
Received: by mx.zohomail.com with SMTPS id 1784142018690682.4989574920343;
	Wed, 15 Jul 2026 12:00:18 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id 178E9180820; Wed, 15 Jul 2026 21:00:12 +0200 (CEST)
Date: Wed, 15 Jul 2026 21:00:12 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Andy Yan <andyshrk@gmail.com>
Subject: Re: [PATCH v3 08/10] drm/rockchip: dw_dp: Add runtime PM support
Message-ID: <alfV1691ZgZ6KylX@venus>
References: <20260612-synopsys-dw-dp-improvements-v3-0-dc61e6352508@collabora.com>
 <20260612-synopsys-dw-dp-improvements-v3-8-dc61e6352508@collabora.com>
 <CANbgqATR-V0rRGfzj0hdJ2hsJex-iWzHMwD1L4vavTi2Jd79Kw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANbgqATR-V0rRGfzj0hdJ2hsJex-iWzHMwD1L4vavTi2Jd79Kw@mail.gmail.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.10.1.5.2/284.121.97
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_120055_399075_B314174C 
X-CRM114-Status: GOOD (  17.82  )
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
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Damon Ding <damon.ding@rock-chips.com>, yubing.zhang@rock-chips.com, linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, Dmitry Baryshkov <lumag@kernel.org>, Sandy Huang <hjc@rock-chips.com>, Alexey Charkov <alchark@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: multipart/mixed; boundary="===============7268085190150632936=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7268085190150632936==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="m5xipsbap4cvs25e"
Content-Disposition: inline


--m5xipsbap4cvs25e
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 08/10] drm/rockchip: dw_dp: Add runtime PM support
MIME-Version: 1.0

Hello Andy,

On Tue, Jul 14, 2026 at 06:08:06PM +0800, Andy Yan wrote:
> > @@ -58,6 +59,8 @@ static void dw_dp_rockchip_hpd_sw_sel(void *data, bool
> > force_hpd_from_sw)
> >
> >         dp->hpd_sel =3D force_hpd_from_sw;
> >
> > +       ACQUIRE(pm_runtime_active_auto, pm)(dp->dev);
>=20
> This can triger  HPD irq for USB-C DP AltMode, but for a standard
> DP port, this is no way to acquire runtime, so there will no irq
> when plug in.

Right. I don't have any RK3588 or RK3576 system exposing a DP
connector directly. This this is non-trivial to test for me :/

I see the following options:

1. Only enable runtime PM when running in USB-C mode
2. Mux the HPD pin as GPIO to support waking up with the controller
   being suspended; either remux when the controller is awake or use
   the same mechanism as USB-C to do software based HPD on top of the
   GPIO (which would allow using any GPIO as HPD).
3. Have a poll function, which wakes up the controller regularly to
   check the status

I consider going for option 1 for now, which allows option 2 to be
implemented as a follow up. Mostly to avoid that the series becomes
as big and messy as the USBDP PHY series became.

Greetings,

-- Sebastian

--m5xipsbap4cvs25e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmpX2LgACgkQ2O7X88g7
+pofLA/9Gk+Hgl5TYBlSBTTGDlszYL/ZEfUIjLTcafwMgKO2MWL3n75mkgEi13Js
0GT01J5veXw8MzGn/IQocRtb8S56feu/IYYUMOE10vlBAMoOfXbRjHrKgveqUcdO
MvnaVVgy59xFHrxkMBXAtEGW4ghJjWA2kpoN5wN3Xh6DEzFfedI+JaN//fqCYLBZ
syCPN/uKQzxnmyQFpLEb8Mn4SQZslnGCAzLjIC6krN0MeD0IpkdgaSsAyRHO7re8
BpEMCuIMjroeZqNSkotoVSd8ByCMLF8S0EV1KsyW5PIY5j50BC9uBKXvJiKWml3o
MduS/NpzM3ESfxxYdDwX/hD1jdaOHLJlyVcJXxHFir2kgqYvR+Eov/Uv+uKupeRt
j7NycFrW0kZzgY+uQ6AEPrNLQOXmKimhoIrn75HZoS2+4aezaQf26bmrdRg/9fEN
rLO9OgREMcIuebfZyyOGXiC6UoQmRvUu+OxcCPh8ILsi+80OfTXF8y8zmUY/PGJN
lLF+kTfiqKGNe+3Ka8mkXiGi5kVEJUUqEKqX+j75LL6kDEknWJC3sFWEds5Ep3hD
1/CJdhbeEAyFpzmJuJun5MXb0HN0yFkPau6I2kSL15m3nTDkvZ5gPj0FX6AMpodP
7sgketnrnf6at+yLz3v6Y1d4dUWgPJUsEp5PAQnWew5x1FJYgVI=
=LMCP
-----END PGP SIGNATURE-----

--m5xipsbap4cvs25e--


--===============7268085190150632936==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7268085190150632936==--

