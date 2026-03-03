Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33E2BEC0482
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Mar 2026 09:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AAdMZRy3+dMBwN2Fhc0/Gfks6Ejr1C80/pCL+d8Hg2M=; b=Xklhc4pqj1+yQH
	oQOj1NoHA75KDVa+ZZkuHWsdApmPo328TCvY6rKV25iIOUW6mmoZv8CSCtPgV2vRnSnksXpYK1Mzy
	4+wbh0hsDY5tZfsGKQDdJI20mecYnwYg2aBTs21t0BbUWZ3NE9MOvALfYlb32I2Ns0oDUU40gG6t3
	hlA2uCz2XRVvfmCqBm0pr+XL9xrBc3QSBKhx9YpFv/1ytJ2mWx0gRQSQYnqTfDOvC5cXmLMG27K4b
	d6a6amR1CEeUQqB8vbN9wdgR/VRxugU5sF5mYj/SQGCWcLh4wic7OSOvImqRZWIg8NHhf3xfi/vSI
	Qzi3bfl1oye4R2hsRbcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxMGw-0000000EtM3-3IqB;
	Tue, 03 Mar 2026 09:42:34 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxMGt-0000000EtJ5-2j65
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Mar 2026 09:42:33 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 360661A2357;
	Tue,  3 Mar 2026 09:42:30 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id F11E85FF29;
	Tue,  3 Mar 2026 09:42:29 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 165681036968D;
	Tue,  3 Mar 2026 10:42:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772530946; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=8VqdSiLdqihQlbAtlaHr1NspuDH4FWX3VxbhCxMkVSw=;
	b=Q4yN03iaCyv/eV6BAbQKagJi/sG1eDx8Wk6XLx0lSZrymBDDPXno5pN1Vo4oMkcWHpxMC+
	H/A6aU6BriokmFMb16Ol5ITx1snr1WlTlj2XAva17n1/Te5SJcB1R6sHPg86lUuKx8Di4S
	yt27W16DPPZv6M8K+wUKPV9FbyCnrs6esZbGvVxHY4wmNNs3xC/VYu7j3KsBriqrBC9PYQ
	RlRugbk+ji2iX7TLEaAD1qmGRqlPz8Euzhe8PXqis52T06pD5qBkNdPE2f4NuMrp+mCnw+
	u5sxz0Ek4zAb51JLymcBcoZZHiZGCo2jBkhp53f1fX62tg7+hQaGiTyhiphHwQ==
Mime-Version: 1.0
Date: Tue, 03 Mar 2026 10:42:18 +0100
Message-Id: <DGT1RZRC2HD6.1LRG837BCF1UH@bootlin.com>
Subject: Re: [PATCH v9 06/15] drm/bridge: analogix_dp: Remove redundant
 &analogix_dp_plat_data.skip_connector
Cc: <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
 <jernej.skrabec@gmail.com>, <maarten.lankhorst@linux.intel.com>,
 <mripard@kernel.org>, <tzimmermann@suse.de>, <airlied@gmail.com>,
 <simona@ffwll.ch>, <shawnguo@kernel.org>, <s.hauer@pengutronix.de>,
 <kernel@pengutronix.de>, <festevam@gmail.com>, <inki.dae@samsung.com>,
 <sw0312.kim@samsung.com>, <kyungmin.park@samsung.com>, <krzk@kernel.org>,
 <alim.akhtar@samsung.com>, <jingoohan1@gmail.com>,
 <p.zabel@pengutronix.de>, <hjc@rock-chips.com>, <heiko@sntech.de>,
 <andy.yan@rock-chips.com>, <dmitry.baryshkov@oss.qualcomm.com>,
 <dianders@chromium.org>, <m.szyprowski@samsung.com>,
 <jani.nikula@intel.com>, <linux-kernel@vger.kernel.org>,
 <dri-devel@lists.freedesktop.org>, <imx@lists.linux.dev>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-samsung-soc@vger.kernel.org>, <linux-rockchip@lists.infradead.org>
To: "Damon Ding" <damon.ding@rock-chips.com>, <andrzej.hajda@intel.com>,
 <neil.armstrong@linaro.org>, <rfoss@kernel.org>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.20.1
References: <20260210071225.2566099-1-damon.ding@rock-chips.com>
 <20260210071225.2566099-7-damon.ding@rock-chips.com>
In-Reply-To: <20260210071225.2566099-7-damon.ding@rock-chips.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_014231_824296_D8F495DF 
X-CRM114-Status: UNSURE (   5.91  )
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

On Tue Feb 10, 2026 at 8:12 AM CET, Damon Ding wrote:
> The &analogix_dp_plat_data.skip_connector related check can be replaced
> by &analogix_dp_plat_data.bridge.
>
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> Tested-by: Heiko Stuebner <heiko@sntech.de> (on rk3588)

Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
