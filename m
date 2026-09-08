Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB183C79FAD
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2026 09:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yAq7MtPosTrg8cwXkKsVnNcCphWJNK42r7QwcR5DPNc=; b=oHM9/F/jeLHN3r
	e6VNQWqOzfdfo919rhrQyOb413L1Fp5+kEOvfxpPtCbJG3LjnDbjmPe75VqPTQaiMjFxNylxrj7Ls
	L8ZJjP/lyKK616Y8fBkLoaYbeqPFZ02qGYkcFQPyiczSy0BL09UbQc3INyMaOtL6N5jpEIHAdhKZr
	gShG8/9Mh9rqJgmm2dNVDxmjHMqshaaNwOWmb+E5atarQYI6lGolTBSad5jXk8NOWMW8/xBW5T53o
	OVk8uI8RUDKTNjOeSUs7xdssQMu1HdXHF60tyCZQy7Bl0xt9SP4cSymAlxi5qm9Ml6uIji/+P1hej
	i5kxXNQIUeBI4V5hO7Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3sbY-00000008hSv-3Mje;
	Tue, 08 Sep 2026 09:59:04 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3sbW-00000008hRm-3vSY;
	Tue, 08 Sep 2026 09:59:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1ADCE60A93;
	Tue,  8 Sep 2026 09:59:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B05F1F00A3D;
	Tue,  8 Sep 2026 09:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788861541;
	bh=qJfUSJRCevtsAlee5fpqTfsNMuEH2eYAYjOny6uC7L0=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc;
	b=g0Dxy9so8FfejqBtHuaG1lGFytbhTY/SYmnz7lxKGGPNFXJY6tksNCGAhMyyuz15c
	 A1HNknCOxFfkHm6oOjSbAspjVqXSKeptEF9ZCyFxezvuTAYWoKFqlUZ1Ic7jvWXwT5
	 7GZ/dYJqH8NTJlT6M3WcwIsCVLPKvLaPgU6wB3+eFiK5GMpwwkr651FofVo75WXkmL
	 tJEnmWfvy8w5HZ1GjjHqkEiL/+zDadoFTrSWGanx07uUhYjBr2I7rx8Wa+kWpePwYQ
	 O2qdzxGEg8NNjpa5m0fLxr6dMhZNw/OEgJuPqJxDqgSwis8L1EJF3ZExrowhezZVxL
	 QxBfCrjhil0eg==
Message-ID: <5053a2775eb9b2101ae7725b497912bc@kernel.org>
Date: Tue, 08 Sep 2026 09:58:58 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH v11 51/74] drm/bridge: inno-hdmi: Advertise HDMI 1.2
 capabilities
In-Reply-To: <20260901-dw-hdmi-qp-scramb-v11-51-bc12954a0688@collabora.com>
References: <20260901-dw-hdmi-qp-scramb-v11-51-bc12954a0688@collabora.com>
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

On Tue, 1 Sep 2026 21:51:15 +0300, Cristian Ciocaltea wrote:
> Bridges using DRM_BRIDGE_OP_HDMI are now expected to also provide a
> supported HDMI version.  This is not yet enforced, but will become
> mandatory once the migration to the new caps-based HDMI connector
> initialization API is completed.
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
