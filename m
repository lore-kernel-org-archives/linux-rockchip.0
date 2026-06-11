Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 697A1CD98CE
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 15:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Gq+u3dukSNDDCwnO+tj37Lg/tUZbveRklugZGvOMkw=; b=F2oeKHnyPH+ZzZ
	JKzyY6M3NyZMQTs7iNZ/ZkoJFkYYWTbmtse3Juwq0H4B5TB8ZbUX9243gFMY4R5tFYg91VYHnFIJ4
	rKw3tgyKt5BczV+G5J6cnicQA24eyYn+SlTtdDT+asRb1VxAu2X6SX5RFfoVLkzZxllrn6KSTGcCd
	8xSV3Qg1aHBMa8eg7Yvcg+bgNa4zNt9nKZxHSXHh+eIQ1YLpHCRRk0ZANTo3SXX61rf6ZtHYZaJFH
	tp4eYwp2L+2VitVCcAcCRhGbvKDo1hNA5NZa1n8cWXbsotm3tROa4BiXYHqikS6UnnHztyGOaL8n7
	SMgDcKEbb/I0u2UaEOPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXhOU-00000009gZB-0dGi;
	Thu, 11 Jun 2026 15:32:34 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXhOR-00000009gYx-49iQ;
	Thu, 11 Jun 2026 15:32:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3987643EFE;
	Thu, 11 Jun 2026 15:32:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 909911F00898;
	Thu, 11 Jun 2026 15:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781191951;
	bh=U4b25Ho+ItGseHhBRS5Gh6L3AIi5GEWNlEQHnamaQOA=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc;
	b=E6JjFmTK8d6ee2miRza2BirHt4M4zPh9No880YNmvw71uiXJBxvX+x0l9rXMttYiC
	 prAz09+HQg9HHMF5DCr1VpHUBmIJ4Ecr/zs6elMSjCJVDdYOb5N5SyKiXVcvwNSkNm
	 7Fz12vNMMbZCIUaIZqmqK0ni+LILRQ7KF/BsTAz51C7DXbOCkyrTfPy+e5bnlTZMeu
	 KLKRp7XIOakTjjiSS7LVV8z2jl5vjHhQV8bSM3ZPasaNtr/y3NJju+bFEULpcIHgvR
	 S2C4+Tw84D0+G76skiHhglYVs0le53rQmRNjUfa4rdvl2M0kcB0pZzRyqwh4+yjVyj
	 n1JE2r2MJnESg==
Message-ID: <e6d0f078ffe3425dfbcd36a42ba9053a@kernel.org>
Date: Thu, 11 Jun 2026 15:32:27 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH v7 24/30] drm/vc4: hdmi: Use common TMDS char rate
 constants
In-Reply-To: <20260602-dw-hdmi-qp-scramb-v7-24-445eb54ee1ed@collabora.com>
References: <20260602-dw-hdmi-qp-scramb-v7-24-445eb54ee1ed@collabora.com>
Cc: dri-devel@lists.freedesktop.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, "Andrzej
 Hajda" <andrzej.hajda@intel.com>, "Andy Yan" <andy.yan@rock-chips.com>, "Daniel
 Stone" <daniels@collabora.com>, "Dave Stevenson" <dave.stevenson@raspberrypi.com>, "David
 Airlie" <airlied@gmail.com>, =?utf-8?b?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, "Jernej
 Skrabec" <jernej.skrabec@gmail.com>, "Jonas Karlman" <jonas@kwiboo.se>, "Laurent
 Pinchart" <Laurent.pinchart@ideasonboard.com>, "Luca Ceresoli" <luca.ceresoli@bootlin.com>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 =?utf-8?b?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, "Neil Armstrong" <neil.armstrong@linaro.org>, "Raspberry
 Pi Kernel Maintenance" <kernel-list@raspberrypi.com>, "Robert Foss" <rfoss@kernel.org>, "Sandy
 Huang" <hjc@rock-chips.com>, "Simona Vetter" <simona@ffwll.ch>, "Thomas
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

On Tue, 2 Jun 2026 01:44:24 +0300, Cristian Ciocaltea wrote:
> Replace HDMI_14_MAX_TMDS_CLK defined locally with
> HDMI_1_3_TMDS_CHAR_RATE_MAX_HZ provided by linux/hdmi.h.  Note this
> incorrectly referenced HDMI 1.4, as the 340 MHz maximum TMDS character
> rate was actually introduced in HDMI 1.3.
> 
> 
> [ ... ]

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
