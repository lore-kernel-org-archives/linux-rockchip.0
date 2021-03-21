Return-Path: <SRS0=Ii8/=IT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00CD8C433DB
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Mar 2021 18:59:11 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1A90C6024A
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Mar 2021 18:59:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1A90C6024A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zutSLNJN4elwurumA8AT+VNlULIS9N6k9ntxdMXAMSk=; b=etzT+yiZu1jBQLLiTBGi/BS3v
	CaMJ9PwSS4o9VNE1qfHMDLEGUCgaik+k8chac7f4hW4Ghn6jaXifsllD1TKJquoYPEHBU5EV2QU8P
	SR9/VG/Fee+i3QDtoZEQPcdUOMkTnzwrBaBGvQil155XdYHsj9bBn/Wv+bFT5AUeV8oU7c33guE+z
	DcvKi+RYHnwzqVOsakxwvUVr4m6BTtSIlAco68j74oii5Zuy+HD3ZfoZ+XC/wSNwTmOzuLSXPZMME
	dAyCYXoI++3Yg45HgBhkJHndpnjgEIN1hJEljBX8vuYDdo5gyF7WGmcGPHkUot432OyVEd+DgEj1F
	cUBbZI4tg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lO3Hz-00AFlM-OV; Sun, 21 Mar 2021 18:59:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lO3HJ-00AFiC-BH; Sun, 21 Mar 2021 18:58:34 +0000
Received: from p508fc3a3.dip0.t-ipconnect.de ([80.143.195.163]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lO3HC-0006z5-By; Sun, 21 Mar 2021 19:58:14 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jonathan McDowell <noodles@earth.li>
Subject: Re: [PATCH] drm/rockchip: Cope with endpoints that haven't been
 registered yet
Date: Sun, 21 Mar 2021 19:58:13 +0100
Message-ID: <3104631.44csPzL39Z@phil>
In-Reply-To: <20210316182753.GA25685@earth.li>
References: <20210316182753.GA25685@earth.li>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210321_185832_887785_A44B78AA 
X-CRM114-Status: GOOD (  22.91  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Jonathan,

Am Dienstag, 16. M=E4rz 2021, 19:27:53 CET schrieb Jonathan McDowell:
> The Rockchip RGB CRTC output driver attempts to avoid probing Rockchip
> subdrivers to see if they're a connected panel or bridge. However part
> of its checks assumes that if no OF platform device is found then it
> can't be a valid bridge or panel. This causes issues with I2C controlled
> bridges that have not yet been registered to the point they can be
> found.
> =

> Change this to return EPROBE_DEFER instead of ENODEV and don't ignore
> such devices. The subsequent call to drm_of_find_panel_or_bridge() will
> return EPROBE_DEFER as well if there's actually a valid device we should
> wait for.
> =

> Signed-off-by: Jonathan McDowell <noodles@earth.li>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 8 ++++++--
>  drivers/gpu/drm/rockchip/rockchip_rgb.c     | 7 ++++---
>  2 files changed, 10 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/dr=
m/rockchip/rockchip_drm_drv.c
> index 212bd87c0c4a..b0d63a566501 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> @@ -270,11 +270,15 @@ int rockchip_drm_endpoint_is_subdriver(struct devic=
e_node *ep)
>  	if (!node)
>  		return -ENODEV;
>  =

> -	/* status disabled will prevent creation of platform-devices */
> +	/*
> +	 * status disabled will prevent creation of platform-devices,
> +	 * but equally we can't rely on the driver having been registered
> +	 * yet (e.g. I2C bridges).
> +	 */
>  	pdev =3D of_find_device_by_node(node);
>  	of_node_put(node);
>  	if (!pdev)
> -		return -ENODEV;
> +		return -EPROBE_DEFER;

In general, how does that relate to i2c-bridge-drivers, as
of_find_device_by_node supposedly only acts on platform-devices?

Also if that points to a disabled bridge (hdmi, etc) that would likely make
it probe-defer indefinitly, as that device will never become available?

Maybe we could do something like of_device_is_available() which checks
the status property of the node. So something like:

  	pdev =3D of_find_device_by_node(node);
  	if (!pdev) {
		bool avail =3D of_device_is_available(node);

		of_node_put(node);

		/* if disabled
		if (!avail)
			return -ENODEV;
		else
			return -EPROBE_DEFER;
	}
  	of_node_put(node);

Though I still do not understand how that should actually pick up on
i2c devices at all.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
