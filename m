Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01B3AE9904F
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Apr 2026 07:46:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:From:To:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7dVV5BcmOImUHd9gNq7Ld5AMWtA/tfA7HpOTkvrQM+4=; b=RXaFslPj8whRXG
	8iIpwyIo6eQDkyr0mG1FJulsXD2ohdCIkC0xJ4N6k4RRU8I4tzlOjB6xueE/hLfxjlyZhEtGPHVGn
	bt8b5HjD53bN4/OSgJJ14DueXad4X7EoftWSxw9XA6LnWZUCWAw5WfY1rx0y+rXrzft3Vvxdeonwr
	Tl3UnF8D2Ks5mE2N6ntT7deiTTNWbV8zRjFxYp3bOBn8REjWfehjzIC11JN2ZSYs6D96ba61ElMWB
	J6xEmulNJcqeqXGAPIReiKRWtCsFHMEpF0IbrAGRV5keM42vqdm95hVVIh4vFFQzk2VKyEGN0f/+d
	+510b1piZnikIciTAYqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wB6Z5-0000000BnAK-1iBl;
	Fri, 10 Apr 2026 07:46:07 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wB6Z2-0000000Bn9E-1F0G
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Apr 2026 07:46:06 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id D94FD4E429A8;
	Fri, 10 Apr 2026 07:46:01 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id A622E603F0;
	Fri, 10 Apr 2026 07:46:01 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C111110450202;
	Fri, 10 Apr 2026 09:45:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1775807159; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=7Wx2UvoBeg4k3i7NLhBgGaJ/f6VlZn5MlSBSEC/Ki5c=;
	b=c2gI9uXMQw2ocbIaV7iJBi3GU94xHn9sK4jjeGkd2gMfIg5CnpxfRwgyKgVkVGE9q34IYO
	/39qw0B6QoPr9dmWz0rmpeWKp/mCikTGHwJJAIkgk543AnddgUrSfU+su2knQFOieEQwrT
	6Qw+zHm+G8knYxThwesoYymirhqybo3SElUEXkMG4hquvI85xL/RL3yZdRWKgLMACINht/
	Ew7x7oxfTPk6l3uqPj9FfovJg+FoGhdezOy/R+LxqPfQ3d/8zhTH6gSrVQztmWIl+0L47I
	1WN3g7ErrycSUlz7jtUAheYOFbdNkuVJE40YHH0dX9llUUYQPutcA+jKc3yQ1A==
Mime-Version: 1.0
Date: Fri, 10 Apr 2026 09:45:52 +0200
Message-Id: <DHPB3JVDG5BE.3QSUWB2FUC3XP@bootlin.com>
Cc: <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
 <jernej.skrabec@gmail.com>, <kernel@pengutronix.de>, <festevam@gmail.com>,
 <alim.akhtar@samsung.com>, <dmitry.baryshkov@oss.qualcomm.com>,
 <nicolas.frattaroli@collabora.com>, <dianders@chromium.org>,
 <m.szyprowski@samsung.com>, <linux-kernel@vger.kernel.org>,
 <dri-devel@lists.freedesktop.org>, <imx@lists.linux.dev>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-samsung-soc@vger.kernel.org>, <linux-rockchip@lists.infradead.org>
To: "Damon Ding" <damon.ding@rock-chips.com>, <andrzej.hajda@intel.com>,
 <neil.armstrong@linaro.org>, <rfoss@kernel.org>,
 <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
 <tzimmermann@suse.de>, <airlied@gmail.com>, <simona@ffwll.ch>,
 <victor.liu@nxp.com>, <Frank.Li@nxp.com>, <shawnguo@kernel.org>,
 <s.hauer@pengutronix.de>, <inki.dae@samsung.com>, <sw0312.kim@samsung.com>,
 <kyungmin.park@samsung.com>, <krzk@kernel.org>, <jingoohan1@gmail.com>,
 <p.zabel@pengutronix.de>, <hjc@rock-chips.com>, <heiko@sntech.de>,
 <andy.yan@rock-chips.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v13 10/17] drm/bridge: analogix_dp: Pass struct
 drm_atomic_state* for analogix_dp_bridge_mode_set()
X-Mailer: aerc 0.20.1
References: <20260409065301.446670-1-damon.ding@rock-chips.com>
 <20260409065301.446670-11-damon.ding@rock-chips.com>
In-Reply-To: <20260409065301.446670-11-damon.ding@rock-chips.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260410_004604_461333_D09B7589 
X-CRM114-Status: UNSURE (   4.00  )
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

On Thu Apr 9, 2026 at 8:52 AM CEST, Damon Ding wrote:
> To avoid using &analogix_dp_device.connector for compatibility
> with the bridge connector framework, get &drm_connector from
> &drm_atomic_state instead.
>
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
