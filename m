Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCEA1C4345F
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 08:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gm9F2mZRuKdbN78VLgxhDRU6FjFqtbKyRvwLJ4Mv9WA=; b=ciFmtS/2P01Sohn1PRS3FWJRC6
	tFe9t/GnEaqXriBcmk95WDHWljMeIdoKZnmAc52r4aQSLZ9YHnwb4aSOzlV1hYRAhJrPrTLGp69yN
	lekJtaZl5gdSzFsJQlQQYUiaZCK02gQFiySgjV91U4pRAT6IjuxKBe/W8slq7qgAeeN8DuG+qMJEw
	7FcxkDofZRXqghJaMb5W/IypVx6S4KII6KcHzN7cTh8fl2ueDreE35+XNFGfT4i7pXPqIoj1pPtto
	5EN/Z84mWOcLQ6+7YhQ7GEY6roiTQl/q4vzaJGBUKopXMr/6Ym0TmobL6XTN+8hb1C6w0D608rE4V
	csBn4bFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3tGO-00000006Xd0-1CQh;
	Mon, 06 May 2024 07:59:56 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3tGK-00000006XaI-1Bj4;
	Mon, 06 May 2024 07:59:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 7DA9CCE0B64;
	Mon,  6 May 2024 07:59:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 633A4C116B1;
	Mon,  6 May 2024 07:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714982389;
	bh=kXDv39J5t7+acyzhkvD/8KkU35rQ6ddgsltaOx/5nD0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cc2PEqMgbdM9UjJMlXDzTrgq5i2alAxqGMK3tmB0AzkrkGRM1wGDkVcKTYqKgaDDu
	 AjUM3T0lEL+Pa2M8sCJnKJ9g61Sj7+BIaeMydEea1CVjZF4J4uBqC1AvaBGWUEG/8u
	 wsjXUs1UwexHcGMQuigbb5LfrnekMtA7pjvOCVqfID/ew3m98UD/Q4gyiNPQN+zC+l
	 rrA3D0A36BeKUlYpMj3DUJJ+iRhmRuDnHLpvnY09HflG0TW7f/uCsrAQ3vX45W28lB
	 jHLyx94A51D6IsFrKMwEiC5vvO0LFM5KpukPbkkP4e3UJjvgfor5eBGRZMSgce0oPy
	 rcgySN8F6YU5w==
Date: Mon, 6 May 2024 09:59:46 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Andy Yan <andy.yan@rock-chips.com>
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
Subject: Re: [PATCH v12 27/28] drm/rockchip: inno_hdmi: Switch to HDMI
 connector
Message-ID: <20240506-eccentric-wren-of-peace-819aad@houat>
References: <20240423-kms-hdmi-connector-state-v12-0-3338e4c0b189@kernel.org>
 <20240423-kms-hdmi-connector-state-v12-27-3338e4c0b189@kernel.org>
 <68eba0ec-bf9c-4d76-a362-5304a4cb61d5@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <68eba0ec-bf9c-4d76-a362-5304a4cb61d5@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_005952_706861_05ED6374 
X-CRM114-Status: GOOD (  13.82  )
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
Content-Type: multipart/mixed; boundary="===============0194452299436301053=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0194452299436301053==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="v4sajugv7aqwu3jz"
Content-Disposition: inline


--v4sajugv7aqwu3jz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Andy,

Thanks a lot for giving it a try

All the issues you raised in your review are fixed.

On Sat, Apr 27, 2024 at 06:44:54PM GMT, Andy Yan wrote:
> And after this whole series applied on linux 6.9-rc4, the display on rk3036 kylin is lost, I get
> the following error:
> [  178.999421] rockchip-drm display-subsystem: [drm:drm_atomic_check_only] checking 87b7fbde
> [  178.999471] rockchip-drm display-subsystem: [drm:drm_atomic_helper_check_modeset] [CRTC:35:crtc-0] mode changed
> [  178.999498] rockchip-drm display-subsystem: [drm:drm_atomic_helper_check_modeset] [CRTC:35:crtc-0] enable changed
> [  178.999521] rockchip-drm display-subsystem: [drm:drm_atomic_helper_check_modeset] [CRTC:35:crtc-0] active changed
> [  178.999547] rockchip-drm display-subsystem: [drm:drm_atomic_helper_check_modeset] Updating routing for [CONNECTOR:37:HDMI-A-1]
> [  178.999575] rockchip-drm display-subsystem: [drm:drm_atomic_helper_check_modeset] [CONNECTOR:37:HDMI-A-1] using [ENCODER:36:TMDS-36] on [CRTC:35:crtc-0]
> [  178.999604] rockchip-drm display-subsystem: [drm:drm_atomic_helper_connector_hdmi_check] Trying with a 8 bpc output
> [  178.999636] rockchip-drm display-subsystem: [drm:drm_atomic_helper_connector_hdmi_check] Trying RGB output format
> [  178.999730] rockchip-drm display-subsystem: [drm:drm_atomic_helper_connector_hdmi_check] RGB Format, checking the constraints.
> [  178.999757] rockchip-drm display-subsystem: [drm:drm_atomic_helper_connector_hdmi_check] RGB output format not supported with 8 bpc
> [  178.999783] rockchip-drm display-subsystem: [drm:drm_atomic_helper_connector_hdmi_check] Failed. No Format Supported for that bpc count.
> [  178.999810] rockchip-drm display-subsystem: [drm:drm_atomic_helper_check_modeset] [CONNECTOR:37:HDMI-A-1] driver check failed
> [  178.999836] rockchip-drm display-subsystem: [drm:drm_atomic_check_only] atomic driver check for 87b7fbde failed: -22
> [  178.999868] rockchip-drm display-subsystem: [drm:drm_atomic_state_default_clear] Clearing atomic state 87b7fbde
> [  178.999898] [drm:drm_mode_object_put] OBJ ID: 37 (4)
> [  178.999922] [drm:drm_mode_object_put] OBJ ID: 37 (3)
> [  178.999944] [drm:drm_mode_object_put] OBJ ID: 40 (1)
> [  178.999971] [drm:drm_mode_object_put] OBJ ID: 39 (2)

Which kind of display are you testing with? The only reason it could do
so is if the display claim it doesn't support RGB in its EDID which is
contradicting the HDMI spec. Are you using an Analog display by any
chance? or the built-in EDIDs through the drm.edid_firmware mechanism?

Maxime

--v4sajugv7aqwu3jz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZjiN8gAKCRAnX84Zoj2+
dj7PAXsF7+5aPmDPt0ja154YvieqqvYikRBh9/V5pDrDw3cYprK2R83EgS3cBHli
wJnpqsYBf0ew1rxNKgDWA+diKWge0oHO2I7Ul+ScFLDcuz23NHCYlB74/qNhIWaY
8yng08R+LA==
=WFGm
-----END PGP SIGNATURE-----

--v4sajugv7aqwu3jz--


--===============0194452299436301053==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0194452299436301053==--

