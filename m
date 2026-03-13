Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 639EB107BCD0
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Mar 2026 17:20:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u9ywZWJ6G7JniIB0i2LjC94S5vK1BjB4QoTadEBjSr4=; b=FGNBQvD4OQmtBc
	uqGOR4uQTnkiKOev1EYjaeo2CIRp826SZ2uhBi4qg9McYU4Kh5NWOE/t94YdZ+Ue/im8h1IYzMvZH
	ao9MPsEL8+hnMuWsEZWOgLnqnCdoQ7dbGrOy7uEWJ29osrgfgx8HCHSQFsvPTQo2aDxZRhthGqFf1
	DJRLkNhvx5AcY4WOF3YbvuVgImIAhMWNpJqYjlgyF7wfrbOBWGZTX7mpx1KoPdcSwh4sQUFrBTnoK
	gGXg/KMG9OJZYLnHKOuVLWil96jvYpjh5OwaZsKLW+EEBU+J98s3DYMv60rnxCbGk66BkAdfLjFgK
	gA2UFXmQzRgcgLqsa1vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w16By-00000000ksQ-2AIJ;
	Fri, 13 Mar 2026 17:20:54 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w16Bv-00000000kqo-24FQ
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Mar 2026 17:20:52 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 3B190C42710;
	Fri, 13 Mar 2026 17:21:12 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id EC94460027;
	Fri, 13 Mar 2026 17:20:49 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id ECB7010369F56;
	Fri, 13 Mar 2026 18:20:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773422448; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=hMMoQA66viiMTD/Ovtk1W0/akiFawo/AdgTfBlijbbQ=;
	b=1BZMeakeLYFbyq8IgpHQNmMY6Ho0sTjFjzEYhohY7X4Xbp70aU58n6j0PYpEj6ZUv8uHrq
	osDAcp6Q2HhOAKfV+URHAMo6t4ETkhkAW4/OvCBko+chKV2PxFrKo07SqyRgX9CF3/jnr/
	2IpEhi9JfH33HMm0sXSzVIst2R1OEzbSPMDXL/J51afgUbFUqT3scqr6pryIzxrcaSmieT
	VsGtOXLnf7e/f5Z5y7p1WkcEHqtBo1UwG17acAqeRYI7mEWTTxOxwv2nZ/EFIPnJP0GNRl
	gwRVJivxZUw+f/Z6TayPmbThHnxm3J/tLlIfjPGTYPL7MSKi9jABfHcWS5Vv1A==
Mime-Version: 1.0
Date: Fri, 13 Mar 2026 18:20:41 +0100
Message-Id: <DH1TSEK77H04.132NXEK42GLSR@bootlin.com>
Subject: Re: [PATCH v10 16/18] drm/bridge: analogix_dp: Attach the next
 bridge in analogix_dp_bridge_attach()
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
References: <20260310012458.169272-1-damon.ding@rock-chips.com>
 <20260310020029.178314-1-damon.ding@rock-chips.com>
 <20260310020029.178314-3-damon.ding@rock-chips.com>
In-Reply-To: <20260310020029.178314-3-damon.ding@rock-chips.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_102051_715982_E7FCE44C 
X-CRM114-Status: UNSURE (   5.77  )
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

On Tue Mar 10, 2026 at 3:00 AM CET, Damon Ding wrote:
> Uniformly, move the next bridge attachment to the Analogix side
> rather than scattered on Rockchip and Exynos sides. It can also
> help get rid of the callback &analogix_dp_plat_data.attach() and
> make codes more concise.
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
