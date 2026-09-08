Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F4C1C79FA1
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2026 11:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jcOFR3qKX/FfEyLGEkfoWAjWXQi0BdkwubZ1oLiUdBE=; b=aflpYjRYyoguZS
	Ke4IPK4J1xm6fA4AFPNWIALxqUreTSgRfivmyJniHUQkgXTnGRwpwJFVY4q85bsPJZFfxwu8iLxVp
	6N1uPTnpwLooMzGoaw5/4QyN906cLMC1tpxsuUQmqR2oSTJtKibSMgstRfov3MkVvC6IHyKv3WINO
	RP9z76Q/RtQOrJRdff9pqB4xquT65zxrrGa6E/FMe7T5TRxyOnAxdLMeAe2pbrulfDr0VjFRJd/tg
	/ssFOrQCG/tIk0psOUib03GQ46RoiN53/0EF/zzd11L0JYMToX6mwZy/9myhff4gEmV0yXSawVjIs
	mwPzEPUTCpPHChf0WFJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3uIq-00000008vSS-0ofc;
	Tue, 08 Sep 2026 11:47:52 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3uIn-00000008vR3-4758;
	Tue, 08 Sep 2026 11:47:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6B89F60A99;
	Tue,  8 Sep 2026 11:47:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6594A1F00A3D;
	Tue,  8 Sep 2026 11:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788868069;
	bh=tFqlxS0VAJUS1eYBmNpsy+dfqGlk6k7GW17X4HTW28c=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc;
	b=Zrwask4N3j51yTltiB/mAq4qaOdIeMraUZsUz5Ls8bSfm7rcPvdE1RKC4nsb2ec3r
	 SHKYRO7l2cVsLvKvwr7aAv6tqdshJRerMmC+kdkjk1yet+kY5czRmLjXIeHQK70y4p
	 JkRs3Vsy0kK1W1xcDm0uOq0Rh2t51tEVYzZ220IlX2o6xjmgDL5RJQWaAuRq5wucv8
	 rzzImm1aqyGT37N4xIGW3yBv0/gaNUmU51JqCVG5+VBUZFUE+QtVz/EsoM8fGqRS+/
	 MYjYz1E/Yjr2yEevd/KD/VMzK3s2nXeEntc5tdJhy87XkeYLIFj9T8WNUoRIQWSzVC
	 sLgUXq0Xtxfbw==
Message-ID: <3f8b2fbfcaf3185caf8a833375b335a5@kernel.org>
Date: Tue, 08 Sep 2026 11:47:45 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH v11 61/74] drm/tests: bridge: Set supported HDMI version
In-Reply-To: <20260901-dw-hdmi-qp-scramb-v11-61-bc12954a0688@collabora.com>
References: <20260901-dw-hdmi-qp-scramb-v11-61-bc12954a0688@collabora.com>
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

On Tue, 1 Sep 2026 21:51:25 +0300, Cristian Ciocaltea wrote:
> Bridges using DRM_BRIDGE_OP_HDMI are now expected to also provide a
> supported HDMI version.  This is not yet enforced, but will become
> mandatory once the migration to the new HDMI connector initialization API
> is completed.
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
