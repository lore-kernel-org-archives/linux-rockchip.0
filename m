Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAC65C982DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 07:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:Subject:From:
	To:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7SNWGggdHqcgFEJ1f8RJdNG3iYTkFL0x+kMLGCt+ez4=; b=f3JEAvJP3MQGF0
	sW6rK/IKjzmDIncTu0qG2hdThPiJbFQ5Sse87gfq4842BAposa6O8OgZ053X8sbg+cmMmXdiJpOLz
	GSaPCx42CtLHvN5wt8EnwFIb+m2Wsr5HTSz1gQcQOTG0st540/Q7QLEWeWECamTKYtofkrbh+BSoH
	pF1VCYSxQGQa2MTwhUd6e8eyWYsSWZOy/i75WkNlbLkUuGAQh0B32jvPB4brJLnumf8wo85aVqvwS
	mMKdnmu9y1WSmtbgRzueb1KZuYPjMoS/UvHk2PRsrzBtDN4SFndMW32liM4cLFDJToaJrlvtVwJsb
	z9+zeq7aLzBiRpfdjMtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8YGF-00000001Avz-16iZ;
	Mon, 21 Sep 2026 07:16:23 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8YGB-00000001Auf-2fWK
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Sep 2026 07:16:21 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 14AA01A0E64;
	Mon, 21 Sep 2026 07:16:17 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id D669E60339;
	Mon, 21 Sep 2026 07:16:16 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id A850610329100;
	Mon, 21 Sep 2026 09:16:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1789974974; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=pzbi36ITGsS4iWNXxtdP65zumc/0Hv+pIAeGTi+GcQ4=;
	b=AcujFY3uHm7+B7r1K++AlwOGnnnaQ6IU4z6IlMfOnRb/Rbb7s693ivo55BOAi8rpbWFYb7
	AJMthmWmZWixUW19PScUjnWdVmxbfZj/hiqx63zdpmcZ76XxfZ9C5N0aFwc3YQW6eNbfyJ
	W9ZPdRsgcyomRJWSgV2ft/aQqXVY/7Y/HYIi8BaFQPyk/1Fs5KGUK8tLKi+bLEm/ux4tvd
	qcid/BryvhoRufogP0l/4GxIEgglYPp+6R1uvwypfsJkQ/b32iRZBndLyq5nnLv+sbtsIT
	mhuvd67QwmP92llw1IOBVr+3lZQlxS8H4PGg4RrxtvV7qg3v0HkwAEbuFEOfOg==
Mime-Version: 1.0
Date: Mon, 21 Sep 2026 09:16:01 +0200
Message-Id: <DLKT61DMSLFT.JA03R1SO6WNU@bootlin.com>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard"
 <mripard@kernel.org>, "Thomas Zimmermann" <tzimmermann@suse.de>, "David
 Airlie" <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Dave
 Stevenson" <dave.stevenson@raspberrypi.com>, "Dmitry Baryshkov"
 <lumag@kernel.org>, "Andrzej Hajda" <andrzej.hajda@intel.com>, "Neil
 Armstrong" <neil.armstrong@linaro.org>, "Robert Foss" <rfoss@kernel.org>,
 "Laurent Pinchart" <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman"
 <jonas@kwiboo.se>, "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Luca
 Ceresoli" <luca.ceresoli@bootlin.com>, "Chen-Yu Tsai" <wens@kernel.org>,
 "Samuel Holland" <samuel@sholland.org>, =?utf-8?q?Ma=C3=ADra_Canal?=
 <mcanal@igalia.com>, "Raspberry Pi Kernel Maintenance"
 <kernel-list@raspberrypi.com>, "Raphael Gallais-Pou"
 <rgallaispou@gmail.com>, "Sandy Huang" <hjc@rock-chips.com>,
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "Andy Yan"
 <andy.yan@rock-chips.com>, "Algea Cao" <algea.cao@rock-chips.com>, "Daniel
 Stone" <daniels@collabora.com>, "Liu Ying" <victor.liu@nxp.com>, "Phong LE"
 <ple@baylibre.com>, "Helge Deller" <deller@gmx.de>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v11 12/74] drm/bridge: Fix unlocked list_del in
 drm_bridge_add()
Cc: <kernel@collabora.com>, <linux-kernel@vger.kernel.org>,
 <dri-devel@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-sunxi@lists.linux.dev>, <linux-rockchip@lists.infradead.org>,
 <linux-fbdev@vger.kernel.org>, "Sashiko" <sashiko-bot@kernel.org>
X-Mailer: aerc 0.22.0
References: <20260901-dw-hdmi-qp-scramb-v11-0-bc12954a0688@collabora.com>
 <20260901-dw-hdmi-qp-scramb-v11-12-bc12954a0688@collabora.com>
In-Reply-To: <20260901-dw-hdmi-qp-scramb-v11-12-bc12954a0688@collabora.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_001619_825628_76EAEAB8 
X-CRM114-Status: GOOD (  15.25  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Cristian,

On Tue Sep 1, 2026 at 8:50 PM CEST, Cristian Ciocaltea wrote:
> When re-adding a bridge that was previously removed, drm_bridge_add()
> drops it from bridge_lingering_list without holding bridge_lock.
>
> Both bridge_list and bridge_lingering_list are protected by bridge_lock,
> as they are concurrently modified by drm_bridge_remove() and
> __drm_bridge_free(), and walked by the debugfs 'bridges' file.  Running
> the list_empty() test and the list_del_init() outside of the lock may
> therefore corrupt either list.

The analysis appears correct, with a small nit: __drm_bridge_free() cannot
touch the list concurrently to other functions, because it only runs when
the refcount is 0, and all other functions tounch the lists only when they
have a reference. (Should this sentence be wrong, that would be a big bug!)

But definitely drm_bridge_remove() and debugfs can run concurrently.

> Perform both under bridge_lock.
>
> Fixes: 17805a15d175 ("drm/bridge: add list of removed refcounted bridges")
> Reported-by: Sashiko <sashiko-bot@kernel.org>
> Closes: https://lore.kernel.org/all/20260723015004.1F5711F000E9@smtp.kernel.org/
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/gpu/drm/drm_bridge.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/drm_bridge.c b/drivers/gpu/drm/drm_bridge.c
> index afaae272347c..2c457ad74f3b 100644
> --- a/drivers/gpu/drm/drm_bridge.c
> +++ b/drivers/gpu/drm/drm_bridge.c
> @@ -454,8 +454,10 @@ void drm_bridge_add(struct drm_bridge *bridge)
>  	 * in bridge_lingering_list. Remove it or bridge_lingering_list will be
>  	 * corrupted when adding this bridge to bridge_list below.
>  	 */
> +	mutex_lock(&bridge_lock);
>  	if (!list_empty(&bridge->list))
>  		list_del_init(&bridge->list);
> +	mutex_unlock(&bridge_lock);

The fix appears correct too, and consistent with the similar
mutex_lock/unlock() below.

So, with the "and __drm_bridge_free()," string removed from the commit
message you can add:

+Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

Thanks!

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
