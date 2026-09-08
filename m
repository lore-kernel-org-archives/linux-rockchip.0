Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 800C3C79FA1
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2026 11:47:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L/7pxZhTikrikgPSTpSvP9v0g+V/cNBg+TC7B+wqTUM=; b=qohMF594urQY61
	16FwTXylyUDQ+1SqNpmZCtOiikPChsQ6hHieAQ45MqhjIe7OZlnUNTVSEiYq7adymGT7wnxvpm85X
	dZQomp+5EmNn1YjSGzxXYhlyThfazVvOanI2KmeDnZrrEOUT/ZvHScuzG2GE+9+e02lBHlvnr2vVm
	Qaw8B2EJp2zVuSHlwPGsB4iIyoCwvy4DLVouhrqHDjNjIwa5L8kywZvelqFnvOabt7j2sE8NHI0q9
	DbSmdkJrvMGLd8rhtNL4BCC/I3P19Qb/yNsw8avWBzGkp30y134awxzhOZXIP9FcFuMzzEB9EtWpc
	NHujWIETnabbHulqqdZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3uIW-00000008vJr-4B9Q;
	Tue, 08 Sep 2026 11:47:32 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3uIT-00000008vID-0RdN;
	Tue, 08 Sep 2026 11:47:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8A10E601DB;
	Tue,  8 Sep 2026 11:47:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D4EF1F00A3A;
	Tue,  8 Sep 2026 11:47:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788868048;
	bh=Jhp7GY07oWtgx4+eRD3D6AU0jdo5ZC0oQmnbdRp7qjQ=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc;
	b=dQJYVkOaLFUmuGJ3y9t87rV+WC6JytC0cDe6qJEfWf0rE6hPIAJzgfjjdn/mcBZpH
	 jxZFTfhyo71BxY+KjCcP/FtyitayNTieBC0r6K80L27le2OeLRPUT3sLGUngMp+WZL
	 sMrEaq+lcbduBKa3M/kv4gvFNeW892shI51zriF1MFx/QQKOIemR9KZ2HkZyLGfa2a
	 l6AIpLZtErjv03s8DD5Q97NxlRh7zboFqfdelA0SEmGZ49HA5/gn38o7zsMRDpb6Rl
	 nCCUre2QXd3B0SB5bJM1ch6Jct7iOC5ASKgITk3p4lJSw+Ve4a52o16DL5a7AbaQTI
	 Vo3NPWY8pUYFQ==
Message-ID: <26dc7e8210bbcc26f57f5b15dcab269e@kernel.org>
Date: Tue, 08 Sep 2026 11:47:24 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH v11 60/74] drm/tests: edid: Fix conformity for 4K
 RGB/YUV 340MHz EDID
In-Reply-To: <20260901-dw-hdmi-qp-scramb-v11-60-bc12954a0688@collabora.com>
References: <20260901-dw-hdmi-qp-scramb-v11-60-bc12954a0688@collabora.com>
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

On Tue, 1 Sep 2026 21:51:24 +0300, Cristian Ciocaltea wrote:
> The test EDID added by commit 54a5f1c4d5f8 ("drm/tests: hdmi: Provide
> EDID supporting 4K@30Hz with RGB/YUV") fails 'edid-decode --check'
> (v1.33.0) with the following issues:
> 
>   Warnings:
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
