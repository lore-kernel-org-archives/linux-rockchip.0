Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 215E6C79FA1
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2026 11:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iYiBMh8iCNVxwn7bJ69eTMZtqjuAxgxuL5YYLBu5zb0=; b=mDehTxWnmxUb/o
	CZ2RclW0SS21roZJYpveLPTxZttRllgibnobdUbNp7c5GaYUtiBDuqZLMuLjnutQHYGpbGnNqO0OR
	RjfPP4+wI7D70bDOHn5yOCcjkKhg9nnWCwk9HD9JCR75P+3PoHc2MCe9QjcEnYX7ut7HCm6QumYne
	HrOr5JEC2ilKfF9C8cNYFewIIPgECVVEp54rq3f5EAyfwB6koi7KrWJfDQZwnajLV7Co3ZIbZ56b5
	1vGzkc7vk7VFcqnnOpQPooA0xCoeD2JvwR1YwUwQ2xlVIMVy8CvFDg5o41Z9q2GuyQVO+ZhXWaXsk
	y7La5Xk/0eE8BlwWQmQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3uH4-00000008umA-3cHQ;
	Tue, 08 Sep 2026 11:46:02 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3uH3-00000008ulf-2LVW;
	Tue, 08 Sep 2026 11:46:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9B72360A99;
	Tue,  8 Sep 2026 11:45:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FE581F00A3A;
	Tue,  8 Sep 2026 11:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788867959;
	bh=TvBcVAP7Xte4hXp7tFPxbcEIaY+sVDfeQbUwhJkefGo=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc;
	b=LscrDB6yAvYsoaiCWf8QXN0O6I7bifJcbOF7U4O8uKtXUCUcqEtwJTEpYGh8z096y
	 UZap/ZBSgwgccuCNPAANeC5d5s7JtHhfc2ufRCxyKjmdZ25ZHeSn4AN6NjSYCcGkch
	 OPNtcHJ2IjF7ecPLyuFZDFY65+GkhGFdDt3GpnIljs+Nus3ae5bPNNSLLydzDu2ReF
	 K+k36WA6LSvxxJ+bn91YMxCbC59qfoSIpIPaDOZ5bq04glFVLdduxU8rFvtMFjO2EC
	 8Fa/o3Gklu+85jRk5b1r64W+WeIxXolQIxLM5SWifV4HlacWHVYeuStJlRFrCInl52
	 daZWO5GF5faew==
Message-ID: <d24d2bd88c66ed1b110b1035f7d09e6e@kernel.org>
Date: Tue, 08 Sep 2026 11:45:55 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH v11 53/74] drm/bridge: ite-it6263: Advertise HDMI 1.3
 capabilities
In-Reply-To: <20260901-dw-hdmi-qp-scramb-v11-53-bc12954a0688@collabora.com>
References: <20260901-dw-hdmi-qp-scramb-v11-53-bc12954a0688@collabora.com>
Cc: dri-devel@lists.freedesktop.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org, linux-fbdev@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, "Algea
 Cao" <algea.cao@rock-chips.com>, "Andrzej Hajda" <andrzej.hajda@intel.com>, "Andy
 Yan" <andy.yan@rock-chips.com>, "Chen-Yu Tsai" <wens@kernel.org>, "Daniel
 Stone" <daniels@collabora.com>, "Dave Stevenson" <dave.stevenson@raspberrypi.com>, "David
 Airlie" <airlied@gmail.com>, "Dmitry Baryshkov" <lumag@kernel.org>,
 =?utf-8?b?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, "Helge Deller" <deller@gmx.de>, "Jernej
 Skrabec" <jernej.skrabec@gmail.com>, "Jonas Karlman" <jonas@kwiboo.se>, "Laurent
 Pinchart" <Laurent.pinchart@ideasonboard.com>, "Liu Ying" <victor.liu@nxp.com>, "Luca
 Ceresoli" <luca.ceresoli@bootlin.com>, "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime
 Ripard" <mripard@kernel.org>, =?utf-8?b?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, "Neil
 Armstrong" <neil.armstrong@linaro.org>, "Phong LE" <ple@baylibre.com>, "Raphael
 Gallais-Pou" <rgallaispou@gmail.com>, "Raspberry Pi Kernel Maintenance" <kernel-list@raspberrypi.com>, "Robert
 Foss" <rfoss@kernel.org>, "Samuel Holland" <samuel@sholland.org>, "Sandy
 Huang" <hjc@rock-chips.com>, "Simona Vetter" <simona@ffwll.ch>, "Thomas
 Zimmermann" <tzimmermann@suse.de>
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 1 Sep 2026 21:51:17 +0300, Cristian Ciocaltea wrote:
> Bridges using DRM_BRIDGE_OP_HDMI are expected to provide the supported
> HDMI version.  This is not enforced yet, but will become mandatory once
> the migration to the caps-based HDMI connector initialization API is
> complete.
> 
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
