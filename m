Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FD5CCA0FFD
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Sep 2025 07:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PiOURaDANJIfsSstvT1s7JWlu0SV7+qZzdeUeRiRXR4=; b=MobtNXvGf23q8HyKAYpZ7WhWdO
	ORF3evH2I0Uqzih+O8bz+UNhW20OAXJ8SimvjroKaWBGg2+KrTanIgxKivi1gFJqggaOsTzt/nai6
	gSGmMoc6UrZsR4qW1gtnoiUmrh8T9DkE2WwqM744I3Nz+gBtVuRkF75jvyrQVXrUE6Mi27LprPO4O
	WgOmgsa+bZO0mJUna/WRs36drOlJfxOHls+2halTRbYctw3JuAg1XARs2zKd2G5QfPpw/zJ5hSCkf
	xZo1ZSWSWJFCyzUvvy3emAWdLjimvF7p5AwQX1QbPH2RO+DcC2up9LBsylBdMfmp1dPT7hGvn6adi
	POwA/wzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uszS6-0000000BVWj-07ct;
	Mon, 01 Sep 2025 07:59:46 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usyig-0000000BPsD-0jLH;
	Mon, 01 Sep 2025 07:12:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 88BDB43627;
	Mon,  1 Sep 2025 07:12:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E41B7C4CEF0;
	Mon,  1 Sep 2025 07:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756710768;
	bh=sqbENlpFH5Ccvd/AgXy87AdCw0HQL2r94DTlakLOXkE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qvRDcRrJ3D2orbIXD7WnuTXHeCCjdEyWTuDs2ehGvhH6g092TdwffObCqw6c3uPLj
	 /LyQnIM2gYrkY8DFOfIK0y8o9dXYqaB/y6NMyGkRxKvMlT3K9spwFFMDYRtxMCKJej
	 1wrFpvr9L++WHzsNl28uYkEvkhaQTo3ziwnt7z0yMtJCHEWdaOMCxn8TX4Jvo9oQPX
	 fYB3jIhQEdxqsmSzY+6qM25gbImIAMBuY2woXO5cFVs9o3SpRem6K0tuRgzRzeu/NI
	 DR/Ca/K5KgS2GLJQRe0egTW1bfKVOFXUd2fX+2D36zBgNZ0ccw7or48CslrIcmF8Or
	 A5QRwxc+l8WBw==
Date: Mon, 1 Sep 2025 09:12:45 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>, 
	Samuel Holland <samuel@sholland.org>, Dave Stevenson <dave.stevenson@raspberrypi.com>, 
	=?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>, Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
	Liu Ying <victor.liu@nxp.com>, Rob Clark <robin.clark@oss.qualcomm.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, 
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org
Subject: Re: [PATCH v3 02/11] drm/bridge: adv7511: declare supported
 infoframes
Message-ID: <20250901-tidy-auburn-tarsier-e7b1e7@houat>
References: <20250830-drm-limit-infoframes-v3-0-32fcbec4634e@oss.qualcomm.com>
 <20250830-drm-limit-infoframes-v3-2-32fcbec4634e@oss.qualcomm.com>
MIME-Version: 1.0
In-Reply-To: <20250830-drm-limit-infoframes-v3-2-32fcbec4634e@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_001250_257435_EC0BCFD0 
X-CRM114-Status: GOOD (  16.34  )
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
Content-Type: multipart/mixed; boundary="===============1034721965737941055=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1034721965737941055==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="pqxavipok3t73ium"
Content-Disposition: inline


--pqxavipok3t73ium
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 02/11] drm/bridge: adv7511: declare supported
 infoframes
MIME-Version: 1.0

On Sat, Aug 30, 2025 at 03:22:58AM +0300, Dmitry Baryshkov wrote:
> Declare which infoframes are supported via the .hdmi_write_infoframe()
> interface. Audio infoframe is handled separately.
>=20
> Reviewed-by: Liu Ying <victor.liu@nxp.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/bridge/adv7511/adv7511_drv.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c b/drivers/gpu/d=
rm/bridge/adv7511/adv7511_drv.c
> index 26f8ef4824235a9a85b57a9a3a816fe26a59e45c..fe30567b56b4f600683f0545e=
d270665e692b12c 100644
> --- a/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c
> +++ b/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c
> @@ -904,7 +904,7 @@ static int adv7511_bridge_hdmi_clear_infoframe(struct=
 drm_bridge *bridge,
>  		break;
>  	default:
>  		drm_dbg_driver(adv7511->bridge.dev, "Unsupported HDMI InfoFrame %x\n",=
 type);
> -		break;
> +		return -EOPNOTSUPP;
>  	}
> =20
>  	return 0;
> @@ -938,7 +938,7 @@ static int adv7511_bridge_hdmi_write_infoframe(struct=
 drm_bridge *bridge,
>  		break;
>  	default:
>  		drm_dbg_driver(adv7511->bridge.dev, "Unsupported HDMI InfoFrame %x\n",=
 type);
> -		break;
> +		return -EOPNOTSUPP;

We do need to document that it's what drivers must return though.

Maxime

--pqxavipok3t73ium
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaLVHbQAKCRAnX84Zoj2+
dt3KAX0ZWp21D5I1WfwgyhTb7vH2ZBY8xOTpHJNqK0/JL81whZT+fJo0wz4+NRJx
iBLn7D4BfRsIiD6leCOIITTZsJxThT9rcAz5duWccxLZ5gpctOvKi1BZ0t0qCcPY
yc40IvF47Q==
=adUS
-----END PGP SIGNATURE-----

--pqxavipok3t73ium--


--===============1034721965737941055==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1034721965737941055==--

