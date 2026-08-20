Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6AB1C5DF87
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Aug 2026 10:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9qFgc0ebpdxPQUVYeG0rYm6N9oEnmgnka7HGfDdqZ+Y=; b=mNJmqe0Qac+9nQ
	JLRgQ8Sgv0f8oMId6VfWtaPb6A81He3HAdoHwVTuJgIFxSov5qBR5NRl52FebjYsmVgxcGT8/by5T
	jJfR8Rp8MXBHFjOkt4nRXw5pzfP40eFz7j9bz7buuh+dw/lWLfeopxEA3l/c5/xXcfbuu+VgB6eqI
	B1c1JWZWg7UZBdd6fdP+SkBqPT5ls+Chvm/iYKap9OYGJlbLQEaCYHWug8ip5E6Q0lObGcooKH1Bq
	2pKVPjTk39o8+Oke5xoNhrokdV5Fh+mqe3kjVIJhKYGvo+TYd3ilA9pvIoJEdkdBvsCWTNH2ZgDdd
	Jb2C3Z+LfxFl0pgSNQmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwzpO-0000000BLKT-1AgS;
	Thu, 20 Aug 2026 10:16:54 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwzpM-0000000BLJa-3eQ2;
	Thu, 20 Aug 2026 10:16:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2943460A71;
	Thu, 20 Aug 2026 10:16:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 611B71F000E9;
	Thu, 20 Aug 2026 10:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787221011;
	bh=jHmAuUOPImzJ5rAL7cyz/qtpECyL3DDK1QmhFFgMO3E=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc;
	b=HgkoSClqpy/nkjycg84GKonoZEvaOHjbf3qmXWRIzWrONZdZG3Hw4T8Jo4m/mggfj
	 Umfh4V5/k7fzKseNVuBPcH8QTVaxSG+eeWbwzHyimlKUp6aKsTPPNm9o0sGBpqqKnE
	 ZAguyouDBwOhVS3Vhd+Vfns0d5/5ksD86VL8eA4CLDDsKjLigNS6eFPk2fBtCt1HX0
	 9GKu/RXkP6knDgGGYSGhMpGtT503fJ/h+sXs33lVITu6LxL9BTGuFTiNhfU7apgN5C
	 NP7SS7fRlIHJzHjhFDxF45vI0Q3BhrmP70IvpMKesA6xPBzH4UnqR0DyKhWErgw7m+
	 xKQ4af2TB1/FQ==
Message-ID: <a03dbed70e428feaa1250b378c9ef8fb@kernel.org>
Date: Thu, 20 Aug 2026 10:16:50 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH v10 47/69] drm/display: hdmi-state-helper: Drop
 drm_atomic_helper_connector_hdmi_force()
In-Reply-To: <20260731-dw-hdmi-qp-scramb-v10-47-294364b2cf15@collabora.com>
References: <20260731-dw-hdmi-qp-scramb-v10-47-294364b2cf15@collabora.com>
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

On Fri, 31 Jul 2026 19:19:54 +0300, Cristian Ciocaltea wrote:
> With all callers converted to the .force_ctx() connector helper, this
> function has no users left.  Remove it.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
