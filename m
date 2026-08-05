Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E185BC55822
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Aug 2026 07:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tZx9oKyL78O7RjczyRXXuJoxG18k9TE5BqsGqi3OHtk=; b=d5Fs55pl7Ip4TD
	8S87XlZ2DdCJac4bA7LfUEZmtQNOZbeoPzdfBOT430sMuPbQjbS0egA8nydu4Wyg7XNJFZYOgIF1M
	jHod62V/DZ4QsRaqBh2bEbnGRXMf3Kw30BnV+XR0a8L9JZLoLdXMnJNIh+xjxJWULERVtPErO6p+V
	UxKN1kmB2p1iJ7hQ+INbSd7zcKMSMRdyT1VsC8xNJmPtJaszc3GveNjwQky3waHN/r14bMBk8cPtP
	iNk0CZ3J0kQVHrMqrTphVHumqYbE3l137vOX5fwbOuS/9t5H7i51RIj2xfzkMp3AmXoZPW+refTqn
	gmak753gHw7hqAGbmlzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrVpf-00000003Np3-11PE;
	Wed, 05 Aug 2026 07:14:31 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrVpc-00000003Noa-04QX;
	Wed, 05 Aug 2026 07:14:30 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 213B44E410F1;
	Wed,  5 Aug 2026 07:14:22 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id C8BD6602AB;
	Wed,  5 Aug 2026 07:14:21 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 1A93411C34222;
	Wed,  5 Aug 2026 09:14:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1785914056; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=9ZRJc3/K8jWfYuPRvuIdzf0hyVL9OC6N5kDNbWjfFX8=;
	b=tqCVjOBwzd66RZ+R5VqvCpQRKbHC9tDt22LgJvpIFoFGl/9VPLxu/QnvPPtK7MxWo7ioj3
	3kJl1+y5LvmpZZNlrs93oNd6VJ2aCjfS2fPXGRIEEjoyDB8na08K68qyfZNcdd35hRo82T
	6ZjT4FhZok5kLuqjtPm2UpX/52wVbAYIn9Fi/9d9irLbSady68k8GWAI9CiGgLGy+pEyg4
	W/nN5wlScoiag7BBvg/hIo7bMggsJegNnRv8FenPGn0VqZ/cKnK2BhnAnK3Oen6WVS0pz+
	0sREcJ41v/Vx15b7MZeRKm/2Lik67aVkD3B5PNlXXYgk8geGGs3grVfthUH1tQ==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: linux-kernel@vger.kernel.org, 
 Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Andy Yan <andy.yan@rock-chips.com>, David Airlie <airlied@gmail.com>, 
 dri-devel@lists.freedesktop.org, Fabio Estevam <festevam@gmail.com>, 
 Frank Li <Frank.Li@nxp.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, imx@lists.linux.dev, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, Jonas Karlman <jonas@kwiboo.se>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Liu Ying <victor.liu@nxp.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Robert Foss <rfoss@kernel.org>, 
 Sandy Huang <hjc@rock-chips.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Simona Vetter <simona@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>
In-Reply-To: <20260705163536.1850-5-wsa+renesas@sang-engineering.com>
References: <20260705163536.1850-5-wsa+renesas@sang-engineering.com>
Subject: Re: (subset) [PATCH 0/3] drm: remove unneeded 'fast_io' parameter
 in regmap_config
Message-Id: <178591404454.122884.10665232219542066367.b4-ty@b4>
Date: Wed, 05 Aug 2026 09:14:04 +0200
MIME-Version: 1.0
X-Mailer: b4 0.15.2
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_001428_282145_88A905C5 
X-CRM114-Status: UNSURE (   7.24  )
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


On Sun, 05 Jul 2026 18:35:35 +0200, Wolfram Sang wrote:
> When using MMIO with regmap, fast_io is implied. No need to set it
> again. No dependencies, can be applied directly to the subsystem tree.
> Buildbot is happy, too.
> 
> 
> Wolfram Sang (3):
>   drm/bridge: remove unneeded 'fast_io' parameter in regmap_config
>   drm/imx: remove unneeded 'fast_io' parameter in regmap_config
>   drm/rockchip: remove unneeded 'fast_io' parameter in regmap_config
> 
> [...]

Applied, thanks!

[1/3] drm/bridge: remove unneeded 'fast_io' parameter in regmap_config
      commit: ae2854a7622fa088a2cebd0ac51ef72226301e99

Best regards,
-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
