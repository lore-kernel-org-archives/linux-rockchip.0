Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1E76FF60FF
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Mar 2026 11:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fQUQfp3K44mhb/DeA1v5VlRUQdw8cMktnhRpY/ERT6Y=; b=aOjIDaRBWp+Mh7QC7/iBHryjG4
	RCtPFkgc9Oax8TFKym0JwXgFCOqh5N6oQOnj2CSadRjyeHab4k9nKXe1IUjNpBRNOdI3oN++g72HN
	H34yybnLMfbiMVDmP2WfdyyngFYkERo2n/y2grpfZPZbi4Pvijde2Mv/xFOawNKqlrcv8RlyzGFUs
	sEnQeOCKeuRiIBOVmnFzzoZmgzB9UsZrVzM35hH/tqTB/84SGfprXYi+b2wINK4t/GinombY3jhJ3
	/HWHTG0YQ3cY2v2MAlSlYD5CYs0lLGRW58DdkWEI7z5VvieoN/RkL7ntyX3kGsVq1RkYZLdtqBoAG
	h3i2oTmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7Wr7-0000000Cp8s-3JFB;
	Tue, 31 Mar 2026 11:01:57 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7Wr5-0000000Cp8S-3n2a
	for linux-rockchip@lists.infradead.org;
	Tue, 31 Mar 2026 11:01:57 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1774954888; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Bb4fYXmN58XESqL8Mizz7i6dZfAwwfSdKDL47H4/JApJmkBaN+6px9j0rOYKEzRV/AmI3kSgyKwpdtA4qIMBYMAgAc/9wryjZ/VIzhFIMBcHpvhh8/hZxIA75oShKY+lQHpZenjE3o/IA0f4t3Zsh6wCSzqEgrYfPPE1DSyfOss=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1774954888; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=u13dMEcF9M+aXZsAMu08kfH0fwxaX2Y4cknWwBOVSCY=; 
	b=InWxbVKylN6XldQEMAIoQuoTd6cCFFR5X5+f/LeO0gcMyAJS3YaiTpux+HCNTiL/G6J+Evj27LudKZoRTz8cR/nly1IAYLUW+W63fFyjf01Ed1IOrGfLd3KaLP/ydJJqVoJmYe4gHvdOtFd9Mmp5PvATQh1cs99Uvhigju4vJk0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1774954888;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=u13dMEcF9M+aXZsAMu08kfH0fwxaX2Y4cknWwBOVSCY=;
	b=UL1OFMIGHg9Zy1GZlRCQDlVlb35zutQpJ/PIGOVlLeugOLTK+3s5bf6C3p5Hou45
	R/Kxqr/D8ZjofE7QU0ZncxiayHc7St9DUx3AyNYIsI5A3Y/GsELt53vcs23Lr0oYw+F
	dRoxx0Q0XBa2sFbscg9RYazqeCIShfFVPoPz6cNE=
Received: by mx.zohomail.com with SMTPS id 1774954887379775.1689389168353;
	Tue, 31 Mar 2026 04:01:27 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id 4340D181F55; Tue, 31 Mar 2026 13:01:21 +0200 (CEST)
Date: Tue, 31 Mar 2026 13:01:21 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Damon Ding <damon.ding@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
	Alexey Charkov <alchark@gmail.com>, dri-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	kernel@collabora.com
Subject: Re: [PATCH 00/10] Synopsys DisplayPort Controller improvements for
 Rockchip platforms
Message-ID: <acuoBEWNw6fVk-yT@venus>
References: <20260326-synopsys-dw-dp-improvements-v1-0-501849162290@collabora.com>
 <FE1BFB774BE13241+54b8a8ce-5a8c-495d-a53f-65a2440924fb@airkyi.com>
 <acphlgK6ZmBitGJL@venus>
 <AFAEA46A791878B0+9fe68e46-8d8f-44f1-80e3-dfad2de51832@airkyi.com>
 <acsoT_i-LfoMoIy_@venus>
 <1801CF6805B8DD32+0afb49ab-a03c-40f0-92bd-d0b332f8f28e@airkyi.com>
MIME-Version: 1.0
In-Reply-To: <1801CF6805B8DD32+0afb49ab-a03c-40f0-92bd-d0b332f8f28e@airkyi.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.1.0.1.4.3/274.894.35
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_040155_973864_A7930D02 
X-CRM114-Status: GOOD (  41.47  )
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
Content-Type: multipart/mixed; boundary="===============0962023779602254043=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0962023779602254043==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zxhyojzxk5dujjf4"
Content-Disposition: inline


--zxhyojzxk5dujjf4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 00/10] Synopsys DisplayPort Controller improvements for
 Rockchip platforms
MIME-Version: 1.0

Hi,

On Tue, Mar 31, 2026 at 11:16:26AM +0800, Chaoyi Chen wrote:
> On 3/31/2026 10:09 AM, Sebastian Reichel wrote:
> > On Tue, Mar 31, 2026 at 09:18:32AM +0800, Chaoyi Chen wrote:
> >> On 3/30/2026 7:50 PM, Sebastian Reichel wrote:
> >>> On Mon, Mar 30, 2026 at 09:34:15AM +0800, Chaoyi Chen wrote:
> >>>>> There are two parts, which possibly need some discussion:
> >>>>>
> >>>>>  1. I added a dedicated bridge callback for out-of-band hotplug eve=
nts,
> >>>>>     which is separate from the hotplug_notify. I have a feeling, th=
at
> >>>>>     there might be a better solution, but haven't found it.
> >>>>
> >>>> Could you explain what an out-of-band hotplug event is?
> >>>>
> >>>> Can't the drivers/usb/typec/altmodes/displayport.c respond to these
> >>>> hot-plug events? Thank you.
> >>>
> >>> That is what generates the out-of-band hotplug event in the first
> >>> place via drm_connector_oob_hotplug_event(). The oob in that call
> >>> means out of band.
> >>>
> >>> If you look at that function it calls oob_hotplug_event() callback
> >>> on the DRM connector, which is then implemented by
> >>> drm_bridge_connector_oob_hotplug_event(). This function calls uses
> >>> the normal hpd handling (shared by in-band and out-of-band) and I'm
> >>> patching it, so that the bridges are aware of hpd explicitly being
> >>> provided out-of-band.
> >>>
> >>
> >> Ah, I'm actually more concerned with the specific types of events.
> >> For example, the "explicitly" provided HPD you mentioned here.=20
> >> Isn't drm_connector_oob_hotplug_event able to provide those?
> >>
> >> I assume you=E2=80=99re looking for an oob event that is propagated al=
ong the
> >> bridge chain, rather than at the connector. Is that so? Thank you.
> >=20
> > The connector has a dedicated hotplug oob event callback, but I obvious=
ly
> > need the event on the bridge, since the DP controller is implemented as
> > bridge. The existing infrastructure propages it down to the bridge chain
> > via drm_bridge_hpd_notify(), which can be received by the DP controller
> > via the .hpd_notify callback in struct drm_bridge_funcs.
> >=20
> > The problem is, that this receives events for in-band AND
> > out-of-band hotplug events. That's why I added a new bridge
> > callback, which hooks into the existing framework, but only delivers
> > out-of-band events and no in-band events.
> >=20
>=20
> How to distinguish between in-band and out-of-band events? In your patch4:
>=20
> @@ -180,6 +180,12 @@ static void drm_bridge_connector_oob_hotplug_event(s=
truct drm_connector *connect
>  	struct drm_bridge_connector *bridge_connector =3D
>  		to_drm_bridge_connector(connector);
> =20
> +	/* Notify all bridges in the pipeline of hotplug events. */
> +	drm_for_each_bridge_in_chain_scoped(bridge_connector->encoder, bridge) {
> +		if (bridge->funcs->oob_notify)
> +			bridge->funcs->oob_notify(bridge, connector, status);
> +	}
> +

this is the new handler that will only get OOB events, since it is
only called from the connector's oob hotplug event function.

>  	drm_bridge_connector_handle_hpd(bridge_connector, status);

this is the existing handler, which is not modified and keeps its
behaviour of receiving both hpd event types just as before.

> Here, drm_bridge_connector_handle_hpd() will eventually call:
>=20
> 	drm_for_each_bridge_in_chain_scoped(bridge_connector->encoder, bridge) {
> 		if (bridge->funcs->hpd_notify)
> 			bridge->funcs->hpd_notify(bridge, connector, status);
> 	}
>=20
> Therefore, for the bridge chain, you will call hpd_notify and
> oob_notify separately.

Correct, I keep existing functionality. Apparently it works for
everyone else.

> This looks redundant, how do you distinguish between them?

hpd_notify can be used in the same way as before. It is useful in
case the bridge driver does not care about the source of the hpd
event. In case of the Rockchip Synopsys DP bridge, .hpd_notify is
not bound and only .oob_notify is used, so it only receives the OOB
events. It's not necessary to receive the in-band events at all,
since those are generated by the driver itself anyways.

> > The problem with receiving in-band in addition to out-of-band is
> > that the out-of-band signal should set the hotplug pin accordingly,
> > but the in-band detection also checks the actual DP link. If the OOB
> > hotplug signal says "nothing plugged", the hotplug pin should be
> > forced off, but if the DP link detection fails, the hotplug pin
> > should not be force disabled, as that makes any further detection
> > tries useless.

Greetings,

-- Sebastian

--zxhyojzxk5dujjf4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmnLqXkACgkQ2O7X88g7
+prg6g//SvwR05BqZDVsojL70OoR7cgOcShKoW2+48teWWFmYnLjMQngMJfuA02Z
ii1xl3ZGQ00JRSkXnINmrn88PZ1P2HajNjPPUMoxwJ8S3/rv4WUBrSXDjqvgSExI
Z1iv8NoXCR2dPore64bUOKUD/YonjaUHeAIztXdjEU9NGrS/Z3iO5WbikmVKmJ7J
1o35CZj8bB1UTDJDc7+PgCLgnCDkDTlRrpzEGSfxIZcG/P1g25k+K1uJRNB4ccvt
jDkAbaMkw/yb7O9DRugQGP9pL1TNhCZGccMqvnZCCjOZMknbo57WyEiD7Q/LY00Q
iOJJrLFyoCgdKMIMyu3u+jXS1Wwp3JLNzggTQcnlWpJip2H2RNuj7n66X3SPO0sE
ZGE+mwRDNnNFATzn3UnnNwqErFqEyW5p0wBw1FucCzWSSeAB+/rcCCqrbBMT5qdt
70le+BQqzQ4ENT6fMXGTdUO9YCDDDA6LEvgoAwMO7h6goJZKi9myVq2zfuPecB50
UF7E8xj+zpmHzsOhcwiovSOSlwVra+A/KCM8LmTFeCn8ngt9YaQDCUV50S3YtPIg
yq2y8mB0N3fRqdASROQNSHAFr1Xf58FNYy3OsoR/g+B8JCI0GckCX9UD2LI6D1hU
TTXnoKSrYSK8cKBz06P08hwS0WpBDhYA99uyDgUkYyPpmNdelng=
=v1/C
-----END PGP SIGNATURE-----

--zxhyojzxk5dujjf4--


--===============0962023779602254043==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0962023779602254043==--

