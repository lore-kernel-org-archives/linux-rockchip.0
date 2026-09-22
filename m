Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1EA6C982FA
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C8AdxIoHzqDoQ/ifCjfdRwYLhXBxf1x0dbichqiUTGw=; b=k172rLpOy8NRVs
	ndcltZMH+zmVqxH/bmKpxwV6RJsy9b6ZyjNyuTjrV7F/9zIZBxf29Eu0XTqTKxuysU1fsFiApGKnW
	TgkKuIhQ+IZafBhfg9x2usMkCNth2HQx1dHHL1xbMXiHIDr6dmqO7mD7fWKaKp/hwKZkHvJVMyq1J
	IKWhDAAq4vTlKT6hjL7LSGu9d947yeelyr2p86JpbKjRAGgqD00QbWhTSyufktnxD9dmUYBkCgH0g
	PsevIw2MiSXw0NBLL1e0YeJd/rxQh9qksrxEw4s0jv0Awe0/B+ZJfHFzZXPeala4yZspVei4bMpK0
	IERFe6z6g4Hsm0hggBbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8udT-00000004SfA-1Ak0;
	Tue, 22 Sep 2026 07:09:51 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8udP-00000004Sdv-0RRE;
	Tue, 22 Sep 2026 07:09:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6EF0D600CB;
	Tue, 22 Sep 2026 07:09:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6AD0F1F000FF;
	Tue, 22 Sep 2026 07:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790060986;
	bh=y2GGkrgzKCsgm0mwf6UdJFHfN95qxznzs56jCuPDyFw=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc;
	b=EBphDY338h1X323tWP1cLxM2et1PqxVvsgo6xqwgld5xaEIPOb+VThqfivND4ugAT
	 8i6MaPiC07iPrjefCXEdKl0AybWYuoyRyjo4gOJ6Ip2+PniX1YOnyoIb9Ui40sgIvO
	 2miUtk0lbPFbAEeSjAVn5gF9ZqO/wG7WIzN1OcArF8pmYZHYtmGx8sY/nl8C4t0zK6
	 IKyPWGKm8AweRYEalzbwsykmKumd0k/sig1a0ztd8xsONgsEDzhEHC1POHcL/D5NUV
	 jIjcDd5U2fDg5m6oIegk+jwz9qXgrC6MQVqqzWRNt6CLaFj/YUNCbNGiKBamFyBO4P
	 58PtuvgAvPi2Q==
Message-ID: <ea873a72b009d3fc34feab6bd3cfaf01@kernel.org>
Date: Tue, 22 Sep 2026 07:09:42 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v3 13/19] drm/bridge: fsl-ldb: don't create a
 panel_bridge
In-Reply-To: <20260916-drm-bridge-every-panel-v3-13-83afb4f1a707@bootlin.com>
References: <20260916-drm-bridge-every-panel-v3-13-83afb4f1a707@bootlin.com>
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

On Wed, 16 Sep 2026 15:45:37 +0200, Luca Ceresoli wrote:
> Now a panel_bridge is automatically created for every drm_panel and the
> panel-bridge API is just a deprecated wrapper to access it.
> 
> Update and simplify the code by just getting a reference to the
> already-existing bridge using of_drm_find_and_get_bridge().
> 
> [ ... ]

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
