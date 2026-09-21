Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA0DCC982E1
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 07:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:From:To:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wbAInJcJNgPrxiIvQnoVnvQKLL1L/8eiacOvRPJ8bkI=; b=qTcfAWlFfmQ/Ne
	NvMXoVRnedddVqKkMnu4jgJD251qmGMnqzImTdiEDXHOtlB8gPCUgkNnRMorbfUEFmSu9V9K7pyTD
	YX4dTUlbHqQCAcmtjMsdpmTvxLcpn7ajPM9PWbh2pZ6B71mw7h5t3a+4SfmyyC5Z94FFOediEGDvu
	oxnga9rQnuxOiQJTCXk/nLIo8eOF8I1w6kH32vLC4SyJtWrE9+Fk7WjB/uOHvi+pe27M464opq7/9
	9kixhpewkDA4Ax2hsdub1WtFGZ9UDTKMOMt5L+noQhie2g0UW6JlZpgJd2RZlB4RIf/di8zvGNdG0
	1rikL5xvYnzU5PrdNuCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8YL8-00000001Ba1-1syT;
	Mon, 21 Sep 2026 07:21:26 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8YL5-00000001BYI-3R7s
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Sep 2026 07:21:26 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id A9E2A1A0DEF;
	Mon, 21 Sep 2026 07:21:20 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 76DA460339;
	Mon, 21 Sep 2026 07:21:20 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 4D6C61032800A;
	Mon, 21 Sep 2026 09:21:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1789975277; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=nxoDYhmIzh2JJPIArEyFT+HN+oVRry6II7QzeYp2Ns8=;
	b=zHnAy6YhRwPKGEf0y9dvmZY6PdyuCehyShuLCcQ9hRcoCEFxRx6BMqRv8J/NByWFUTsOPO
	UybaskuxoT1S6hcjn+xsLjoN+6jng6MfTBuO5xYPusGsKOsfcltFGCd8hmOVwuvALGc3V0
	xftL6l0nCepix/p2nb+MZHpik/f1U2Kye8vARp3Pa/djqdjtwJ/dnZYQp+XUYAB55Rof0s
	Ut/KyIf5rzHYGLrPdtLZmUmGXlE5329asARgMt2Hd1t7zwpB58v1iuHV0FQfDsYazTgD2Y
	Hn9NI9L8z87aSohbMMp24WzHI1zro2CeqOZxWYuGQqFE/Fhxvj5KmIfS67tOsw==
Mime-Version: 1.0
Date: Mon, 21 Sep 2026 09:21:04 +0200
Message-Id: <DLKT9WH655L4.37F4JBC3Y14D8@bootlin.com>
Cc: <kernel@collabora.com>, <linux-kernel@vger.kernel.org>,
 <dri-devel@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-sunxi@lists.linux.dev>, <linux-rockchip@lists.infradead.org>,
 <linux-fbdev@vger.kernel.org>, "Sashiko" <sashiko-bot@kernel.org>
To: "Luca Ceresoli" <luca.ceresoli@bootlin.com>, "Cristian Ciocaltea"
 <cristian.ciocaltea@collabora.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Dave Stevenson"
 <dave.stevenson@raspberrypi.com>, "Dmitry Baryshkov" <lumag@kernel.org>,
 "Andrzej Hajda" <andrzej.hajda@intel.com>, "Neil Armstrong"
 <neil.armstrong@linaro.org>, "Robert Foss" <rfoss@kernel.org>, "Laurent
 Pinchart" <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman"
 <jonas@kwiboo.se>, "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Chen-Yu
 Tsai" <wens@kernel.org>, "Samuel Holland" <samuel@sholland.org>,
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, "Raspberry Pi Kernel
 Maintenance" <kernel-list@raspberrypi.com>, "Raphael Gallais-Pou"
 <rgallaispou@gmail.com>, "Sandy Huang" <hjc@rock-chips.com>,
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "Andy Yan"
 <andy.yan@rock-chips.com>, "Algea Cao" <algea.cao@rock-chips.com>, "Daniel
 Stone" <daniels@collabora.com>, "Liu Ying" <victor.liu@nxp.com>, "Phong LE"
 <ple@baylibre.com>, "Helge Deller" <deller@gmx.de>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v11 12/74] drm/bridge: Fix unlocked list_del in
 drm_bridge_add()
X-Mailer: aerc 0.22.0
References: <20260901-dw-hdmi-qp-scramb-v11-0-bc12954a0688@collabora.com>
 <20260901-dw-hdmi-qp-scramb-v11-12-bc12954a0688@collabora.com>
 <DLKT61DMSLFT.JA03R1SO6WNU@bootlin.com>
In-Reply-To: <DLKT61DMSLFT.JA03R1SO6WNU@bootlin.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_002123_995720_956712B5 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
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

On Mon Sep 21, 2026 at 9:16 AM CEST, Luca Ceresoli wrote:
> Hello Cristian,
>
> On Tue Sep 1, 2026 at 8:50 PM CEST, Cristian Ciocaltea wrote:
>> When re-adding a bridge that was previously removed, drm_bridge_add()
>> drops it from bridge_lingering_list without holding bridge_lock.
>>
>> Both bridge_list and bridge_lingering_list are protected by bridge_lock,
>> as they are concurrently modified by drm_bridge_remove() and
>> __drm_bridge_free(), and walked by the debugfs 'bridges' file.  Running
>> the list_empty() test and the list_del_init() outside of the lock may
>> therefore corrupt either list.
>
> The analysis appears correct, with a small nit: __drm_bridge_free() cannot
> touch the list concurrently to other functions, because it only runs when
> the refcount is 0, and all other functions tounch the lists only when they
> have a reference. (Should this sentence be wrong, that would be a big bug!)

Ah, no, I just realized my concern does not stand. Indeed
__drm_bridge_free() can run concurrently on a different bridge than the one
being handled by other functions, ending up in modifying the same list. So
your comment is fully correct:

Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

Apologies for the noise.

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
