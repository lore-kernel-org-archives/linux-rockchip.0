Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58F8ECCA462
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 09:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O3cxqWOagTuLckTc3bX80uZF3dJn3BB3mblbe+6LJaI=; b=wr/9A6EcWpdEE0
	G9tHKeoUEf+BHLXthLDzBImI/c+3U/qNl45vxgcaNSExSh5n/oQ9GrdC092N6LOtT3UoWY5mmEpfv
	L1eAhPzTgvyfNCK4V6F2e7GjSsAKwyHuLihRWb7t7OTkyaJ4NACWvZq14QwryTkD41OmPEwVrYhJ/
	AtLJfF0yNjPSjFMM5UgheFa7vY5O1l6R/PpYOzqEM5yvyL99zVXlrWK+jJe6qFO++ypcVO7AZLaLn
	OoibKgvawvN7qICIeQQolxbQetc7yNDTDyclst4yW1Lf20vmFteaKlHhN58lY/FYWWzMZ2EOymUif
	03JVEVZIxVhB+Nb1EUdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdsU-00000002QOt-1q0p;
	Fri, 16 Oct 2026 09:05:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdsS-00000002QOR-332o;
	Fri, 16 Oct 2026 09:05:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=jCdlTsgAIWlVV/nbciw4oCCYrsIamAoo02qs3IUr8ls=; b=g5ankusniWeoPnVUehRpwAr5tQ
	evq1S+YspTl6E82FtYKsN3i669SHu8AVmCYR3PYFMbHCq6IyqJqi20iefmCALMPvT6TmNvApERjsi
	Ves0OWItWAX7bbbyXTSOCbzCx6M/Dzv1KJ2BTG/bk6ARobCwZsB0npY+PWm5iGlgN5i7d9EhULvS9
	RrLgfCUjCK+9zvn1ZqvkIvD2hzU5cCTXRwoP3rr9PNZ6HOXX1H28JDWLDUye5nIkODcJag1hJhEYf
	Eq9uGWwwi/qzTQnaiU+fafXDR9kYu8OW45ZN2sIY9SNV+F+zgS4I0AVhHh800NE/KSzzHldhg2kSl
	k4LsNJJw==;
Received: from smtpout-02.galae.net ([185.246.84.56])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHdsP-00000001IXn-0wjR;
	Fri, 16 Oct 2026 09:05:23 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id E14A61A1236;
	Fri, 16 Oct 2026 09:05:18 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 991A16075D;
	Fri, 16 Oct 2026 09:05:18 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 351DD103281F4;
	Fri, 16 Oct 2026 11:05:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1792141516; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=jCdlTsgAIWlVV/nbciw4oCCYrsIamAoo02qs3IUr8ls=;
	b=JvNL4I1GFqj1N6rLJYaDTiAX1o1PQkUdS4oGWRv5kj7C/UAGbv3VABGAMLSyIstQUFrO2A
	QOS/iSZ8T6R2tQkG8HcSN74yew58DcQiq2XsBCxIVz0Xxi2KvI3KQ5GbhmmcpfaILw+idO
	lsiUoMmfEg9Kv7FwRdYLYXRJbj02o17TxE/boDZtk2qf+QNTLjMCd8aKczzDp3ZNHZJSWi
	yYNxb+q1dabTu60SX84PI9KjUY8KTXK11qt4Rk9OI4y0cxt7eWDhf2J4mKKTy0/okZR2km
	rCEK2VU+wvSkA7kQyXgLZ+UwNZqtXNrEH3G+qNb8qO8eEUGSWfSTkniXrPdcSw==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Andy Yan <andy.yan@rock-chips.com>, Liu Ying <victor.liu@nxp.com>, 
 Phong LE <ple@baylibre.com>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@kernel.org>, Samuel Holland <samuel@sholland.org>, 
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
In-Reply-To: <20261001-bridge-advert-hdmi-caps-v1-0-f8806570e243@collabora.com>
References: <20261001-bridge-advert-hdmi-caps-v1-0-f8806570e243@collabora.com>
Subject: Re: [PATCH 0/8] drm: Advertise supported HDMI version in HDMI
 drivers
Message-Id: <179214150460.3306936.7520883316826804246.b4-ty@b4>
Date: Fri, 16 Oct 2026 11:05:04 +0200
MIME-Version: 1.0
X-Mailer: b4 0.16.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_100521_519387_165AAFA5 
X-CRM114-Status: UNSURE (   7.53  )
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


On Thu, 01 Oct 2026 04:14:31 +0300, Cristian Ciocaltea wrote:
> This series consists of patches 50-57 from "[PATCH v11 00/74] Add HDMI
> 2.0 support to DW HDMI QP TX" [1], to set the supported HDMI version for
> the HDMI connector/bridge drivers that currently leave it unset - except
> the MediaTek HDMI driver (for now), as it requires non-trivial changes:
> there is a core library shared between two variants, one being HDMI 2.0
> compliant.
> 
> [...]

Applied, thanks!

[1/8] drm/bridge: adv7511: Advertise HDMI 1.2 capabilities
      commit: 1f132660fb27da37327fed3d4fdc617f95c1431e
[2/8] drm/bridge: inno-hdmi: Advertise HDMI 1.2 capabilities
      commit: c132910e9d13a0c4c3476f55ad7562070d96c19a
[3/8] drm/bridge: ite-it6263: Drop redundant .mode_valid hook
      commit: 31112c84ca79576b8c62316b40272106ac39511f
[4/8] drm/bridge: ite-it6263: Advertise HDMI 1.3 capabilities
      commit: bd66cb40383b43cd4ed4b3ea1a39779161fface5
[5/8] drm/bridge: ite-it66121: Advertise HDMI 1.2 capabilities
      commit: 3af64ea1229dab57233531feda8908486cf9dcc6
[6/8] drm/bridge: lontium-lt9611: Advertise HDMI 1.4 capabilities
      commit: 3c5e687fdb8cff644c700b145289a36400d1b04d
[7/8] drm/rockchip: rk3066_hdmi: Advertise HDMI 1.4 capabilities
      commit: 9283faedfc5fab0a47ca41ee6ac7b2a556da7081
[8/8] drm/sun4i: hdmi: Convert to drmm_connector_hdmi_init()
      commit: 101bd6d1d0aa2770129b47d03791a7120ba0cad8

Best regards,
-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
