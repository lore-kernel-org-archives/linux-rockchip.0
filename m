Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FFE8D79767
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Jan 2026 13:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t77Ub/Ayo0Muhi3YMV8u3PXjNu9I0LTgwKBvAqnKbkQ=; b=P28lmKxYO8DplA
	JyyrGQBAqeGKdjfNPbeBJSMlu9HUH6rUWuYXT83Q+LYOOmkVll0lBF9O9W7HxgqXuRdO3Y+fPjjJp
	RtPY2SXnjc27BFfo6yuRGIAexcZcfR1jU+COA8U475Syd5XgFJhdT0C3pUt7YncIqctbHx8YPrVAA
	PrGkgXWq9D/ynzfqC+/ruXy37IX9SBrTXY7MUin4sTtvNihPC2l7EXrAwkV9fbeeumh3Gyq4vVlsi
	7M28uP8/VDSCZErAE7AlGL+63x7UgSKgUGeO6PiXtRzz2oiGP3dpFmpEXTLDIFyGr13tr0LBcj/WI
	TZIIxefig8/q/LmyMskQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmBEl-00000002f9p-1dej;
	Sat, 31 Jan 2026 13:42:07 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmBEg-00000002f8C-1Vol;
	Sat, 31 Jan 2026 13:42:04 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 04ED0C22F7D;
	Sat, 31 Jan 2026 13:42:04 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 1F1F1606B6;
	Sat, 31 Jan 2026 13:42:00 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 8AE0E119A888D;
	Sat, 31 Jan 2026 14:41:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769866918; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=RBYOYCO2M46JIUgq8W9sG/5NWADYqzV49iOKEvvP47A=;
	b=ObetL+87ucAVdXN/zM/vumcAjf5XZKAjrwu/JLgNuJRCVgS1hIsba4xuH053AbpJHcsSf4
	egeqr4qVj/elz9W/+QiXsmRa0s26LDBiRXIB1R9j4NhDcSFSGoGL6PNPMXiv4Ma8MpeoXn
	TWyAMDRuSFIlD3FIv1Y6ZToKI2cZybbhFJwtIpi7IrYNMKEUK5V5gf/gS1FqfDAdN844DO
	aoeLtEnTwkUF5B08JMFsqS6n/QyrLA33U08Tut6hXhqebgvy8izito6edW5J1kjmwnVZoz
	Z0nfteB0cdtqrX+UypJw6qMSQ47xn3VB0ofXMFDunPu+BsijY2vSYpZtYeED+g==
Mime-Version: 1.0
Date: Sat, 31 Jan 2026 14:41:48 +0100
Message-Id: <DG2TGHAO69YZ.BCOGDONNNQ1M@bootlin.com>
Subject: Re: [PATCH v8 06/18] drm/exynos: exynos_dp: Remove
 &exynos_dp_device.ptn_bridge
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
References: <20251217093321.3108939-1-damon.ding@rock-chips.com>
 <20251217093321.3108939-7-damon.ding@rock-chips.com>
In-Reply-To: <20251217093321.3108939-7-damon.ding@rock-chips.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260131_054202_840370_AE7B65DD 
X-CRM114-Status: UNSURE (   4.84  )
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

On Wed Dec 17, 2025 at 10:33 AM CET, Damon Ding wrote:
> Use &analogix_dp_plat_data.bridge instead of &exynos_dp_device.ptn_bridge
> directly.
>
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>

Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
