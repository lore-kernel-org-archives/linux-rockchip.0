Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE839C79F82
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2026 12:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+axai0cbA7VlU6hcRFhRtovyz2ttOxSClWbesZOZc7o=; b=osJYLY+wRCv4lE
	2Uxul1fSrIeTIna/NlEWybVSIZNWf245DiPYqvswQk6eFMSe77EvHmzWoDP/fq9SuEKqr97DZkght
	aONZ+KFtvsB85dS+mzKP1psy97iPyeOT0zQSqZ6oPDsNReoKHDy/XXtT2cmrPogYf3NMeIG0Ml+l6
	gRNg7ORmmqbtnAscbcUJnWezrlH5jyOmnFXqpjYn5hKbPRiNZJKs82ZD/bey5xjBQjqePO/0yJYbu
	iGNI4HnJp7keTtenkDpvcYs7eVndfzS5hr4UbkGhILhn9p1uaT/9Wl4H9wflE60nsnhTLp23WD0sC
	naoGkAH/wdOUvWTDO1mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3ulE-00000008zax-0nSM;
	Tue, 08 Sep 2026 12:17:12 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3ulC-00000008zaX-3cLK;
	Tue, 08 Sep 2026 12:17:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id ED1E96020A;
	Tue,  8 Sep 2026 12:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E24CB1F00A3D;
	Tue,  8 Sep 2026 12:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788869829;
	bh=2dKrCoMuS/VkRK9SgbcPzXa6yS0fI5ekjQCw4D7v3J0=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc;
	b=WdCizk8GgeFL6S4xnqYLHl8qXbPSs6ZwCcTkn2P1iLWdnhwFMHYyvHvoLq7wQLe+X
	 c2cWgJTqLM14kDyKBC50dblaDuMSRgvZVE3iFZtSq8ciL2tZEpZxRRcQyqPZWD0hau
	 JqfN+7pIdqDaDs3r2stj/WdvUaMSKOKoCxvKXVeUXpl/vGUBaoYP8fwueK9RzP0eOV
	 GvMj684ThvSaykz7rdpjc7cjk4TaOdZ3oRsjafeMxqRfin2UfcnBZ5wlK3iKACfQFD
	 FOmNteKzxAsc18KUYSPy0t+HJ4ZVGccp7PAnxytqamoC5wwFOu3+B41+OancAXa1lf
	 YoL3MU+mhl5Xw==
Message-ID: <379922705bfffd1db28821d192bd4970@kernel.org>
Date: Tue, 08 Sep 2026 12:17:05 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH v11 73/74] drm/connector: Use the SPD InfoFrame field
 length defines
In-Reply-To: <20260901-dw-hdmi-qp-scramb-v11-73-bc12954a0688@collabora.com>
References: <20260901-dw-hdmi-qp-scramb-v11-73-bc12954a0688@collabora.com>
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

On Tue, 1 Sep 2026 21:51:37 +0300, Cristian Ciocaltea wrote:
> DRM_CONNECTOR_HDMI_{VENDOR,PRODUCT}_LEN used to size the vendor and
> product arrays in struct drm_connector_hdmi.  Those arrays are gone and
> both names are now only validated before being copied into the SPD
> InfoFrame, hence the limits they have to be checked against are the ones
> of the SPD InfoFrame fields themselves.
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
