Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35B5DC5DF86
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Aug 2026 12:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tmnhTb8nkaxGMxGSgVtDD5HFh+LK465WTz5FSYqo3C8=; b=cagUqjVTw4kcUUeqYHe5Lp9i0T
	n0tSStkQfQmSSktab0pFOC4ldLsYSadA8L0T21Y9yB82bydKUKn331lSjLXYaETHAqDDooS/wq06Q
	1mpIJtM39KmVIxkOMlXNvvE3fYYelAcKzNRn6MxDA5+j375TXZR/7BdBsB2BL12kQC25E5x+r1vNx
	oDAHMDvNcSZqjEVVOVbt9cf2S9ZKAqqLt5Q6bjseJl89X/GvmI4ZHcqCbrJdJ+wQkRsN0MG/ynH2b
	F9Zase1HLECr3FMbkF03jW7EBxzIgGSCu+cIL68qcR2wLDpBbnRPi8oBuwwAeTkzQJ7DNl9R1GVXf
	wPW2e4UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwfaJ-00000009lDP-39NQ;
	Wed, 19 Aug 2026 12:39:59 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwfaH-00000009lDC-1W0f;
	Wed, 19 Aug 2026 12:39:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 106AE4061E;
	Wed, 19 Aug 2026 12:39:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7224E1F000E9;
	Wed, 19 Aug 2026 12:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787143196;
	bh=TrqogX1d6CpIK5BDZbM8rityiqPvUCn4X4SVNR7vuNE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=VtBBz7IkyQGjgipDTIQOj5OCMWFgrUj+acs8oItZKYvEr75rnCeV8/XJ+U9iGm24g
	 DkFpC+/1CnABHexazonHnlpILJpVHksKmmrCJsvmFLL4MDkXLyXiIniD5ZebeWxTKW
	 gRqv/FOKoaVZzjnu8PGW3BuHw/eXkXQLNlcsN3w02eZNa0TAHdCU9ISc/sEjZnLWY2
	 cldj4zUIVwApLixp1Y9ZrcGLrzdSDAimOIbGXBeFBc7UQeDcB8J4Azr8iz/iiAEUMu
	 fV8FtMh3rHmwPkKvlvb+0F/WSYagtKKbml3Kp4mHYYjCTDVQuMhJmEzQC+JnGqwGv+
	 qmYvzXTfEisfg==
Date: Wed, 19 Aug 2026 14:39:55 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Chen-Yu Tsai <wens@kernel.org>, 
	Samuel Holland <samuel@sholland.org>, Dave Stevenson <dave.stevenson@raspberrypi.com>, 
	=?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>, Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Algea Cao <algea.cao@rock-chips.com>, 
	Daniel Stone <daniels@collabora.com>, Liu Ying <victor.liu@nxp.com>, Phong LE <ple@baylibre.com>, 
	kernel@collabora.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org, 
	Diederik de Haas <diederik@cknow-tech.com>
Subject: Re: [PATCH v10 21/69] drm/display: hdmi-state-helper: Pass acquire
 ctx to hotplug helpers
Message-ID: <20260819-huge-congenial-rottweiler-32ec85@houat>
References: <20260731-dw-hdmi-qp-scramb-v10-0-294364b2cf15@collabora.com>
 <20260731-dw-hdmi-qp-scramb-v10-21-294364b2cf15@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20260731-dw-hdmi-qp-scramb-v10-21-294364b2cf15@collabora.com>
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
Content-Type: multipart/mixed; boundary="===============3242720353871694104=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3242720353871694104==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="3rp65omxlgvr2kuq"
Content-Disposition: inline


--3rp65omxlgvr2kuq
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v10 21/69] drm/display: hdmi-state-helper: Pass acquire
 ctx to hotplug helpers
MIME-Version: 1.0

On Fri, Jul 31, 2026 at 07:19:28PM +0300, Cristian Ciocaltea wrote:
> In preparation for supporting SCDC status synchronization on hotplug
> events, extend drm_atomic_helper_connector_hdmi_hotplug() and
> drm_atomic_helper_connector_hdmi_update() to take a struct
> drm_modeset_acquire_ctx argument.  This will be used when a CRTC reset
> is required.
>=20
> Additionally, change their return type from void to int to allow
> propagation of errors such as -EDEADLK caused by lock contention.
>=20
> Update existing callers accordingly.  Note that in the VC4 case, the
> return code is ignored, as it cannot fail: being in the .detect_ctx()
> call path, the connection mutex is already held through ctx, and it
> bails out early because the driver relies on a local SCDC
> state-management implementation, and therefore does not yet expose the
> scrambler capability through the common helpers.
>=20
> Similarly, introduce drm_atomic_helper_connector_hdmi_force_ctx() as the
> HDMI connector implementation of the .force_ctx() callback.  Since
> migrating from the .force() callback is somewhat more involved, its
> users will be migrated incrementally, after which
> drm_atomic_helper_connector_hdmi_force() will be removed.

The force_ctx introduction should be a separate patch. Once split, you have=
 (for both patches)

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Maxime

--3rp65omxlgvr2kuq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaoWkFgAKCRAnX84Zoj2+
dpxbAYDWvy2abaZ7cn62e+VobqiL0fNN+KQJAQuPE0h2SP0dGhzSQgFdt2m/iR0K
3guVa5UBf2cSjZ7ytgMSlTJ7y1BKsyj7fN6s0Us/VWsxeZ2vyt78eqeZNxsKcWVx
MjW7AWoLWw==
=63Wj
-----END PGP SIGNATURE-----

--3rp65omxlgvr2kuq--


--===============3242720353871694104==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3242720353871694104==--

