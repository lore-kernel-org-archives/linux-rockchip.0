Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AFC8107BCD1
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Mar 2026 17:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:Subject:From:
	To:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7BsmWYOCTRU+mQTaBQBdqpfvWxOi+c7OX1MxWnVpm40=; b=MdoJgYmEQ/aBX8
	IkcF/WZF8pY/n46kNmDgV6Gd3soFja1uczCyqYwxw1UahXqcY2SAs6mTsyMAJUybXvQy8DyQu7+QK
	Z17fisw3319VUl3mWeN6cE6sWa97lQQE5GTg8jYY+E8il2J8GjQuIaMtgZOoOm2J7LRE5dHLD6TzG
	6Ivv7SkL43A8G100MdxQpaYfC1iXq8UiaidDOqmX6VGhIm+GSCBmpqMVO7zWkI4JW4p3P78Eq1SQ/
	0FYbKgshwQVNp4LaI+JuXkQ9I3zxR0rUBlmvUfXmvZx1a6rBXy6Wv8aQXFZpZB95ULcTAg6xEDWEg
	1HvjEUeZ6MId6G9pFPtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1643-00000000joB-0KSn;
	Fri, 13 Mar 2026 17:12:43 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1640-00000000jnE-3Kmn
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Mar 2026 17:12:42 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 5499D1A2E1B;
	Fri, 13 Mar 2026 17:12:39 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 16F5D60027;
	Fri, 13 Mar 2026 17:12:39 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 213A510369F2C;
	Fri, 13 Mar 2026 18:12:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773421957; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=QXrvX/Nhpiwn/b7xc6dulpE4qamSvM6IPfIyjIOUbE0=;
	b=NrqDPYAzNZZKGuHx6gL/Xsizy395RSXJxizJIYoXMHHeR4CFaITwHCCVWCgAx1ZDYLtTuz
	uH9T9R8wiiwI54PSANwVIEwo2PpnQleYh4hlqzZpo6mNI7i2Icz3rrEifxzakChQTkBuC5
	iGTLkpB7tUytSfLwfjyTAwoVT8abXl1McrF3ZmVwFpN1Q3jzE79EN6M4/ovdTRvakQ661F
	pQstUiGi7ipqwkLIC+Z0l9sCHLyy6btjrDYm81qFW7tMcZlJxPv03ovEo6tAW6X369TNJf
	2MX4Q1/MbbAuWhv6QUPnZ9hhbnMBNNALtkO9BCqR8j1pOgRW5PzgRUAQt7YwGA==
Mime-Version: 1.0
Date: Fri, 13 Mar 2026 18:12:19 +0100
Message-Id: <DH1TLZT5696T.2XAQIND6F9YS3@bootlin.com>
To: "Damon Ding" <damon.ding@rock-chips.com>, <andrzej.hajda@intel.com>,
 <neil.armstrong@linaro.org>, <rfoss@kernel.org>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v10 12/18] drm/bridge: analogix_dp: Remove unnecessary
 &analogix_dp_device.connector
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
X-Mailer: aerc 0.20.1
References: <20260310012458.169272-1-damon.ding@rock-chips.com>
 <20260310012458.169272-13-damon.ding@rock-chips.com>
In-Reply-To: <20260310012458.169272-13-damon.ding@rock-chips.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_101240_965657_70CBD611 
X-CRM114-Status: UNSURE (   4.74  )
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

On Tue Mar 10, 2026 at 2:24 AM CET, Damon Ding wrote:
> After adapting to the bridge connector framework, the private
> drm_connector is no longer required.
>
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

This should be folded in the previous patch, where all usages of this field
are removed.

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
