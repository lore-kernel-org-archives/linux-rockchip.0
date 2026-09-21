Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67C81C982E6
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 15:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2hAeYWIg/8mp8rLOjOrv5CJO0fT8pY2PMbscvSjXU6I=; b=pvB7CoEuL5z3UC
	D0VL/DoUZ6wurtsMqZMyKHE4/WvHDNUsjZVxTLYnDy3G+XF8kA3Y4aM7luATsd0oHSrnP6t5gRjy0
	q7b9IQ1LJ4wJ7o10njEeAi0yC4ESEUDymWAXJxybrcMZWQsptqjCKEqsG37ohRIz3OfOnMdkRWq5l
	gMTemnEGq7QygFDo0OzYkhOujPK4y8NLNYCu2NCCgS9ssqrNxElDYb6RTKT5h7by6Vl2xwkrYBkW2
	s6U7TC0Qn+LHmLhFot5xs/7Hp8xLe2en6efUgXy9kNKM0Z7DM7m351jX7L3Mj7LMRuT1ab18LI7TT
	du1mS8L7kIlz2iQUdhkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8fbM-00000002XgR-2jsC;
	Mon, 21 Sep 2026 15:06:40 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8fbL-00000002Xfv-2qKx;
	Mon, 21 Sep 2026 15:06:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id F02B1600D1;
	Mon, 21 Sep 2026 15:06:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F14961F000FF;
	Mon, 21 Sep 2026 15:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790003198;
	bh=AXxmb0gF+pS9vq4zS1CUd/UcL72lEWczxTcsxmxGaGc=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc;
	b=QbrOP9K9xjLENQIIaSS3pfeUmLoYYtxGB3M9GG3o53ff2X6veTOv5KxN9tdBtIKDm
	 mKgtiLkSBBlpT1XW67zugVMkoZMaF4YAROfpoUZkri0In+gYZdLv2vdw8Td+apTxrl
	 1ahiiFs1FURw2SLCKJr0OIC/Xz8QCFrgGJktU5LbZIvuTYVcW57UG7sFa5BwpcSlbx
	 5cefrrhXs8fo5+HeDxIzapj5TXFe0XabS8VipqH2H1D/u0h74IuzTBN9srfGUD7a0A
	 FibZqRx0RBW9y5wWh8oukULXn0nUjuH50tVoyufY9hqG1qiZDWEcTnUftJHQigZfzI
	 u1q9w/F48jD/Q==
Message-ID: <8eee1438c2ec64e3127ef730fffefa98@kernel.org>
Date: Mon, 21 Sep 2026 15:06:34 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v3 01/19] drm: of: move drm_of_find_panel_or_bridge()
 from drm_of.c to drm_panel.c
In-Reply-To: <20260916-drm-bridge-every-panel-v3-1-83afb4f1a707@bootlin.com>
References: <20260916-drm-bridge-every-panel-v3-1-83afb4f1a707@bootlin.com>
Cc: asahi@lists.linux.dev, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org, "Albert
 Esteve" <aesteve@redhat.com>, "Andrzej Hajda" <andrzej.hajda@intel.com>, "Anusha
 Srivatsa" <asrivats@redhat.com>, "David Airlie" <airlied@gmail.com>, "Dmitry
 Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>, "Fabio Estevam" <festevam@gmail.com>, "Frank
 Li" <Frank.Li@nxp.com>, "Hui Pu" <Hui.Pu@gehealthcare.com>, "Ian Ray" <ian.ray@gehealthcare.com>, "Inki
 Dae" <inki.dae@samsung.com>, "Jagan Teki" <jagan@amarulasolutions.com>, "Jernej
 Skrabec" <jernej.skrabec@gmail.com>, "Jessica Zhang" <jesszhan0024@gmail.com>, "Jonas
 Karlman" <jonas@kwiboo.se>, "Jonathan Corbet" <corbet@lwn.net>, "Laurent
 Pinchart" <Laurent.pinchart@ideasonboard.com>, "Laurentiu Palcu" <laurentiu.palcu@oss.nxp.com>, "Linus
 Walleij" <linusw@kernel.org>, "Lucas Stach" <l.stach@pengutronix.de>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Marek Szyprowski" <m.szyprowski@samsung.com>, "Maxime
 Ripard" <mripard@kernel.org>, "Neil Armstrong" <neil.armstrong@linaro.org>, "Paul
 Cercueil" <paul@crapouillou.net>, "Paul Kocialkowski" <paulk@sys-base.io>, "Pengutronix
 Kernel Team" <kernel@pengutronix.de>, "Randy Dunlap" <rdunlap@infradead.org>, "Robert
 Foss" <rfoss@kernel.org>, "Sascha Hauer" <s.hauer@pengutronix.de>, "Sean
 Paul" <sean@poorly.run>, "Shuah Khan" <skhan@linuxfoundation.org>, "Simona
 Vetter" <simona@ffwll.ch>, "Thomas Petazzoni" <thomas.petazzoni@bootlin.com>, "Thomas
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

On Wed, 16 Sep 2026 15:45:25 +0200, Luca Ceresoli wrote:
> We want to move drm_panel.o from the main drm module to a new drm_panel
> module, but there is one function in the drm module that calls into
> drm_panel.c code:
> 
>   drm_of_find_panel_or_bridge() (drm_of.c, drm module)
> 
> [ ... ]

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
