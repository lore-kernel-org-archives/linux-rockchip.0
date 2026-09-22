Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4AACC982F1
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 06:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qd0kjBGMfCkQIj3ygPjWrnueoGrzbSIIQeK06BU/XI8=; b=o5OIqG1dMNPHuw
	W91dXID4nn9BBaBKEwSAReJllD2pJLIqok0oejwOyiKJKj3QU9WpRl0jVkKFEj+YX8p8jfR/SfzIG
	mkqL1soq4v3rlN80t7FbU6xhDjv7GRsAEoJe/l3F3jDadpb6eI33AXTHL/efdVSHBb+/JE6nw5ZJa
	UOGZcupkQIBK2pDBTltg35olJdXCbZBliypAn5NCzsOe2vPZL2pD0viuTVFbYwNBGpg9sEwxTYQH9
	6KNjt+7AyincYpOIUF2cTG5RggrUdMkzs+pkSJu4+2fukvE4tRkh9KQI0TEKNQ/j3tJNjImMQtU71
	wUoGhDYv9J5btbQt0BBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8uTp-00000004QuK-3EQD;
	Tue, 22 Sep 2026 06:59:53 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8uTj-00000004Qr1-1kYC;
	Tue, 22 Sep 2026 06:59:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D36866020F;
	Tue, 22 Sep 2026 06:59:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D09AD1F00893;
	Tue, 22 Sep 2026 06:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790060386;
	bh=fWS6VemCJQZVIwP1tf2Y6qbGjMYyL6clHJEnGhczC3U=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc;
	b=iVem6NK51SNQhuNU9/3VNzRt45Nh3hNfislWZtoOmfE7THXCD16zsAGGUJgyOvFt3
	 wdVD0fsrMS30UjrIMWvrKGGrljlPWS1gvpZkoQdsI4LQXmrxXcI4N3FY1DVJmb9dos
	 mZZqj+HRrg/38SaP7uFPmaDFMG/vuTnQ2niRfpcJGsnMtUme52+dU/Uhc0H3g8gxnN
	 LClGSi9TVUnwnihRHh/2BhAl0BENTLXhQ7LaucgwzwSe8KJhqox1Td+JU+pskfqrdF
	 b+/tQn8QyMXE1vyTktB6dkSUcqcYHR0zXRjWPFjHNZf1iW3+3GcQZz5+ywLVPz/YJ4
	 z8N+D4jV4n2yg==
Message-ID: <b55e64b4e64d9d39c2417b9713623697@kernel.org>
Date: Tue, 22 Sep 2026 06:59:43 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v3 11/19] drm/mcde: dsi: remove unused includes
In-Reply-To: <20260916-drm-bridge-every-panel-v3-11-83afb4f1a707@bootlin.com>
References: <20260916-drm-bridge-every-panel-v3-11-83afb4f1a707@bootlin.com>
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

On Wed, 16 Sep 2026 15:45:35 +0200, Luca Ceresoli wrote:
> The helpers are included but unused.
> 
> However symbols from drm_atomic_helper.h are used, and were previously
> available as a side effect of drm_atomic_helper.h including
> drm_atomic_state_helper.h. Add drm_atomic_state_helper.h.
> 
> [ ... ]

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
