Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 366ADC982DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 07:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Cc:Subject:
	From:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DrJIjUgTHahHI0t58NpHib6O0+Jiy6FFh2uACl72u/g=; b=XjgXTN8ehCv/fB
	GZ8CIb3qUbEDYI3AkyUpwXNVcniZq4509Nm3g0aFtdC9KsU87lVeu32PrDuDY9SZk7dT/LeGnPgVi
	YDLUSan1dpl9BlxkpUX4b0q84EvM+nYpys7+VtCvZ6u1ZrSMWN3WSO46+AqOdXxOKG7gK+1OKSjcE
	sNCQDgbAalLWctGUBRLsuLL3A6RZz+W3UfN9Z1ctmDDXTD9t1FBiBuPkeB+9Tflmp/oUEdUoFKd9g
	TllsA4j4oRsJ7D/sffMKgRHr7BoQXeS5jiQPQKZ/LsD404G0zpSSSKgs4azoIZkwn+v7wknRtuwpU
	ZlTfWeXEUCDZ9ki5OX+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Y6K-000000019dP-0K0l;
	Mon, 21 Sep 2026 07:06:08 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Y6H-000000019ba-0cUk
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Sep 2026 07:06:07 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id EFDF41A0E34;
	Mon, 21 Sep 2026 07:06:00 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id BC2FD60339;
	Mon, 21 Sep 2026 07:06:00 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 79EEC10328ED0;
	Mon, 21 Sep 2026 09:05:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1789974357; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=lc3Q5bHjC9Y5EjOyv/5Amr9ZepClgh/msjX52TvdD9I=;
	b=oIGWPfNvDSRbuhkeQtz7bxBJxWZYBW2cPZXT+UaEDez5iBFH2fF/5qtRmniX5pWZGz8E3K
	q74f2AJxyvO54Nw2fgwxH0oY7iv3GFATtVa9GXDdxGNpeQhgcdnuS6q/aZMlIuCUtu+/sb
	4iQ+/XyCd2B1VnpR+ZPSGkDM+9JVT+5mDsBCyziy25sxPBu9ZcbPg0GoNguKP1G05ucFLL
	BMFC/U3CxdZw/9Kl6afCteUQDoNtTYjQ7SnsgvWqFB0O14Y0n8Bh2fmJ6XlJf9nitdwE1Z
	dm61Uq7NAkZqZJzwTtkc5Gro/DbLRu4zBMjgv+5b5LNTZXEZV46O9KlQTh9fTg==
Mime-Version: 1.0
Date: Mon, 21 Sep 2026 09:05:40 +0200
Message-Id: <DLKSY3W6CGW1.3C0J6DHKV8P2Z@bootlin.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v11 13/74] drm/bridge: Fix NULL deref in
 drm_bridge_add() for legacy bridges
Cc: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, "Thomas
 Zimmermann" <tzimmermann@suse.de>, "David Airlie" <airlied@gmail.com>,
 "Simona Vetter" <simona@ffwll.ch>, "Dave Stevenson"
 <dave.stevenson@raspberrypi.com>, "Dmitry Baryshkov" <lumag@kernel.org>,
 "Andrzej Hajda" <andrzej.hajda@intel.com>, "Neil Armstrong"
 <neil.armstrong@linaro.org>, "Robert Foss" <rfoss@kernel.org>, "Laurent
 Pinchart" <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman"
 <jonas@kwiboo.se>, "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Luca
 Ceresoli" <luca.ceresoli@bootlin.com>, "Chen-Yu Tsai" <wens@kernel.org>,
 "Samuel Holland" <samuel@sholland.org>, =?utf-8?q?Ma=C3=ADra_Canal?=
 <mcanal@igalia.com>, "Raspberry Pi Kernel Maintenance"
 <kernel-list@raspberrypi.com>, "Raphael Gallais-Pou"
 <rgallaispou@gmail.com>, "Sandy Huang" <hjc@rock-chips.com>,
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "Andy Yan"
 <andy.yan@rock-chips.com>, "Algea Cao" <algea.cao@rock-chips.com>, "Daniel
 Stone" <daniels@collabora.com>, "Liu Ying" <victor.liu@nxp.com>, "Phong LE"
 <ple@baylibre.com>, "Helge Deller" <deller@gmx.de>, <kernel@collabora.com>,
 <linux-kernel@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-sunxi@lists.linux.dev>,
 <linux-rockchip@lists.infradead.org>, <linux-fbdev@vger.kernel.org>,
 "Sashiko" <sashiko-bot@kernel.org>
To: "Maxime Ripard" <mripard@kernel.org>, "Cristian Ciocaltea"
 <cristian.ciocaltea@collabora.com>
X-Mailer: aerc 0.22.0
References: <20260901-dw-hdmi-qp-scramb-v11-0-bc12954a0688@collabora.com>
 <20260901-dw-hdmi-qp-scramb-v11-13-bc12954a0688@collabora.com>
 <ap_Tr_Viqy29f515@houat>
In-Reply-To: <ap_Tr_Viqy29f515@houat>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_000605_471712_828B52A3 
X-CRM114-Status: GOOD (  19.32  )
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

On Tue Sep 8, 2026 at 11:24 AM CEST, Maxime Ripard wrote:
> On Tue, Sep 01, 2026 at 09:50:37PM +0300, Cristian Ciocaltea wrote:
>> Legacy bridge drivers that embed struct drm_bridge in a zero-initialized
>> allocation, rather than obtaining it from devm_drm_bridge_alloc(), never
>> run INIT_LIST_HEAD() on bridge->list, leaving next and prev NULL.
>> list_empty() compares next against &bridge->list, so it reports such a
>> list head as non-empty.  list_del_init() therefore runs and dereferences
>> the NULL pointers, panicking the kernel during probe.  Only builds with
>> CONFIG_DEBUG_LIST survive, with a list corruption report.
>>
>> This affects rk3066_hdmi and the i.MX8 LDB bridges, which still embed a
>> bridge in a devm_kzalloc()'d struct.
>>
>> Initialize the list head when it is found to be NULL, so that the bridge
>> ends up with a valid empty list head and list_del_init() is only reached
>> for bridges that can actually be linked.
>>
>> Fixes: 17805a15d175 ("drm/bridge: add list of removed refcounted bridges")
>> Reported-by: Sashiko <sashiko-bot@kernel.org>
>> Closes: https://lore.kernel.org/all/20260731175016.C5D591F00AC4@smtp.kernel.org/
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>> ---
>>  drivers/gpu/drm/drm_bridge.c | 9 ++++++++-
>>  1 file changed, 8 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/drm_bridge.c b/drivers/gpu/drm/drm_bridge.c
>> index 2c457ad74f3b..a8b6df5c13ea 100644
>> --- a/drivers/gpu/drm/drm_bridge.c
>> +++ b/drivers/gpu/drm/drm_bridge.c
>> @@ -453,9 +453,16 @@ void drm_bridge_add(struct drm_bridge *bridge)
>>  	 * If the bridge was previously added and then removed, it is now
>>  	 * in bridge_lingering_list. Remove it or bridge_lingering_list will be
>>  	 * corrupted when adding this bridge to bridge_list below.
>> +	 *
>> +	 * Legacy drivers that allocate the bridge with kzalloc() rather than
>> +	 * devm_drm_bridge_alloc() leave list.next NULL. Such a bridge cannot
>> +	 * be on any list, and list_del_init() would dereference NULL, so
>> +	 * initialize the list head first.
>
> "legacy" bridges are ambigous and was also used for non-atomic bridges.
> That being said, it's now *required* that bridges use
> devm_drm_bridge_alloc() instead of kzalloc, and we warn in
> drm_bridge_add if it hasn't.
>
> So I don't think we should merge this patch.

I agree.

I theory all drivers are be already using devm_drm_bridge_alloc() by now.

In practice rk3066_hdmi is actually still using kzalloc, it should be fixed
to use devm_drm_bridge_alloc(). Are you OK with doing it in v12?

By "i.MX8 LDB" I guess you mean fsl-ldb.c, which was converted in
9c399719cfb9 ("drm: convert many bridge drivers from devm_kzalloc() to
devm_drm_bridge_alloc() API").

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
