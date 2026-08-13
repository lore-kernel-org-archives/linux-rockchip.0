Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2882C5CFEB
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2026 13:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sNh6MAPjTD30Mt9Uo3lU937oP+0RRr7aih18PWgv1to=; b=fGTX7O5Ehj1g3a
	bmC87WsYFi5lAKHG7Hjzy3eFK027tUGNyNFY0p418Egquc0hYZqxOYhFQwh1lJChUkALdmfNHngQN
	BQiTe5vCSPcADPIotSZ6TTdUygQh5jphfSbtdE9GNyxnucNo+PStDEuucOwGO3Ese7tQpY22W1Ldb
	m3SjboKEQmmeSTMEOJf7mMnWTcj4H5THLjBbEVUnkuoxv7FaQe0LL2MjnHxOHtgzhTd3amYFJ2GQJ
	vxigMfPgxwhT0sa8jufnWnqj0eEzwfwv9qX+y/ByyPVVZdSU0CRohgKmALbgk/uCwZZykdcZHRUZC
	JIXpLaFczn5Vkcisv1+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuVV2-00000000kD4-1KYk;
	Thu, 13 Aug 2026 13:29:36 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuVV1-00000000kCR-14FT;
	Thu, 13 Aug 2026 13:29:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 866E560A72;
	Thu, 13 Aug 2026 13:29:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B92F41F000E9;
	Thu, 13 Aug 2026 13:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786627774;
	bh=AJLFF08mlIeE/IaoIYnB9WQvz/G/9RrPj8LIHZ81MUA=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc;
	b=ZRKCUPsV2DcAo7/uNBRzJ5M9T3+Q5wbDsU50aulixxpZp2tJCLJEOzo9xpB4DvBqw
	 JiP8zIhDOcdkaOO9A9sj0C6Yivmu+DzyFinRvAmSVh2VMic6UAoxZ5FG7zIK3chKYT
	 z4aDv4EnWWonKLN5OCw1zwmoLmsUse62geBB4GtkbE2FrBgGSPWutIs3yH5wHN/2Ya
	 yC06XlME0PfVSZp4Cv0eysB+DvKVsjTnSLIlmGCv6wqOeszXAvgS8AyByVUXp/M0Ij
	 M8KvoiBto3KduG974o7B+FZr2xSRFTfeAL73fLio9biCykRwBhbPdDtkwV2E3g1J3Y
	 hGGqtaE5vwzBQ==
Message-ID: <98a2bbceb9e9bcb99cddbd43d21e18ba@kernel.org>
Date: Thu, 13 Aug 2026 13:29:32 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH v10 55/69] drm/sun4i: hdmi: Convert to
 drmm_connector_hdmi_init()
In-Reply-To: <20260731-dw-hdmi-qp-scramb-v10-55-294364b2cf15@collabora.com>
References: <20260731-dw-hdmi-qp-scramb-v10-55-294364b2cf15@collabora.com>
Cc: dri-devel@lists.freedesktop.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, "Algea
 Cao" <algea.cao@rock-chips.com>, "Andrzej Hajda" <andrzej.hajda@intel.com>, "Andy
 Yan" <andy.yan@rock-chips.com>, "Chen-Yu Tsai" <wens@kernel.org>, "Daniel
 Stone" <daniels@collabora.com>, "Dave Stevenson" <dave.stevenson@raspberrypi.com>, "David
 Airlie" <airlied@gmail.com>, =?utf-8?b?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, "Jernej
 Skrabec" <jernej.skrabec@gmail.com>, "Jonas Karlman" <jonas@kwiboo.se>, "Laurent
 Pinchart" <Laurent.pinchart@ideasonboard.com>, "Liu Ying" <victor.liu@nxp.com>, "Luca
 Ceresoli" <luca.ceresoli@bootlin.com>, "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime
 Ripard" <mripard@kernel.org>, =?utf-8?b?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, "Neil
 Armstrong" <neil.armstrong@linaro.org>, "Phong LE" <ple@baylibre.com>, "Raspberry
 Pi Kernel Maintenance" <kernel-list@raspberrypi.com>, "Robert Foss" <rfoss@kernel.org>, "Samuel
 Holland" <samuel@sholland.org>, "Sandy Huang" <hjc@rock-chips.com>, "Simona
 Vetter" <simona@ffwll.ch>, "Thomas Zimmermann" <tzimmermann@suse.de>
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

On Fri, 31 Jul 2026 19:20:02 +0300, Cristian Ciocaltea wrote:
> Switch driver over to the new drmm_connector_hdmi_init() signature and
> advertise HDMI 1.2 support.  The vendor, product, supported_formats and
> max_bpc values previously passed as arguments are now provided through
> struct drm_connector_hdmi_funcs, together with the new
> supported_hdmi_ver field.
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
