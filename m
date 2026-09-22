Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 336A3C98306
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 07:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tpZK6Pi9yzPGXS4di7WgLaFx5+WibeG1o6U9v7T4cJo=; b=wANXre4DFzDCiy
	PJJI7E2uGOhGbp7a1CJWdJ/ACTUqCstj9crZjsSD/wgy23lKXtduiT7eU+FEqjcbsptfB3yTxKNnk
	4XW10XcU6k9diYeYKoZByFB+pNiJU2KrvVrqQ7/uqsXhjJdrc3l8+5uz15gWIT0YTIpT1Chykzf2j
	tFR/HnxOrE9wapPO5c9cM53JvWFnutL48eGHsOdzc+4sVxxAxRdJPsz2SUuP0IjhP3uy5kLhl2ous
	bQe7AI54H1GxaJLOheiXMZYTTM5BzAXbz2lNKdR+GZJQ4sReBTs6RmutGJ/OA0DpZO3pjDHbwt92I
	KfxwSaf7WfTwdyImpXig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8uva-00000004VX3-2Wni;
	Tue, 22 Sep 2026 07:28:34 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8uvZ-00000004VWT-23Vy;
	Tue, 22 Sep 2026 07:28:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 83BD2600CB;
	Tue, 22 Sep 2026 07:28:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81BC11F000FF;
	Tue, 22 Sep 2026 07:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790062112;
	bh=3ux+jnjvPDKFrFGj72qL6Pn667s3hOD+uMkfDVfth4w=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc;
	b=YkjQqzptaJUXFmAbBCfQSoebYMNmQsBJusR+FSLllKUHPSDR/AL2tHFk2zhwxNU7S
	 ZJbfZu40Jiy9uENTSiPYc64Lcx94x7gvgq4r10P5tkVhjAckhpA4rHtOHP7iC6JGCQ
	 uruJKSCufdGIu8+GqNCYguivLSOkrO0PYzcv9H55HdbBwhc6XetHqFpIs8Oz8ocKc/
	 F+pwW6p2nmFAKy1+wl1R8qwJYF0XfLNQ2Ch9HnpJbsXLnOpMgTo8k355OEsqvk9tSx
	 U6dZz8YsyfwjZP7LWG98ep2jcL/q999EvT9I8Pe5W0ao4g0y1bjIvrcA4zQDS96MGd
	 aUi2l2X0SuTJg==
Message-ID: <c66e59d50c98b5bf862c687ff9ec86f5@kernel.org>
Date: Tue, 22 Sep 2026 07:28:27 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v3 18/19] drm/tve200: don't create a panel_bridge
In-Reply-To: <20260916-drm-bridge-every-panel-v3-18-83afb4f1a707@bootlin.com>
References: <20260916-drm-bridge-every-panel-v3-18-83afb4f1a707@bootlin.com>
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

On Wed, 16 Sep 2026 15:45:42 +0200, Luca Ceresoli wrote:
> Now a panel_bridge is automatically created for every drm_panel and the
> panel-bridge API is just a deprecated wrapper to access it.
> 
> Update and simplify the code by just getting a reference to the
> already-existing bridge using of_drm_get_bridge_by_endpoint().
> 
> [ ... ]

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
