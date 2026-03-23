Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1896EF483C6
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Mar 2026 16:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Subject:
	Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dVmHtww42XxHnJOiGhFnFEbSmQfm9pVKWcqjtoDkO04=; b=w1nZlEhbqnh9YN
	Wx8w/1LVOzqDZwicgIOuu2ZQeTv+zCdcIgEvfi0LgVHEpieYNt5SYxp8LZ9raCblxZ5st5o4OT0U9
	MqXg5ROvmGp1BwZe17IAM6Lfg/54nOvDpUYP4admSwnUpXbVrvJToauakXrXZYSncBGsnnjCueTOr
	1LaIyA1buztjLSbgXFHEm+0pIFmMiVcNwEeLfuje5L0nHIGQV8rnvkWplzTyeDQFhGjtdo1NwpQf0
	B3pXzbli8d/SF6EVTrZ7rs2NDS34Shqv/+W/P2HlAbcikoYXS+VSfsS1PAO8O3D8SCj1p1AWgAigF
	jAosfYm2waPycQ50Frbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4hw4-0000000H6iV-08CY;
	Mon, 23 Mar 2026 16:15:24 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4hvu-0000000H6do-1Z9W
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Mar 2026 16:15:17 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 9960F4E427AE;
	Mon, 23 Mar 2026 16:15:10 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 6D9685FEF6;
	Mon, 23 Mar 2026 16:15:10 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 8EEEA10450FE0;
	Mon, 23 Mar 2026 17:14:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1774282506; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=wz/qy3mOqhyoOYrk4BYNUG4XnoW1wVBR5GPWBTYta+k=;
	b=X8I0za+0DuH7Uricdi22M/uTCib/0T6dlZjRnidNjg5yq5jTJSBptkLD5BFMEGHu1c1Urv
	P/GlNk2/IOpNJyvIR6JFZdujnZRu/xEZn0nCpRkF313SELDqqdkb5FCR3SVckFMYEY90M9
	18vd1rwE2UFRQ3oazskYokOSUhwBLGeV0mwfPDVnZ72AuXrT6Z658yNUKugz058xy3LsuP
	ea5Ak61T2Qprayj5sy69Bh9wCks/IfLxiWrh1wKR4kT4++lr6BqaeOG7H5EFZVVsLCdGEP
	UY1R8QPgy+z09dqXUxNhPNfwhGA/TNJ7W8AAQmmc/tUg5TwCV91sJYyb5djeiQ==
Mime-Version: 1.0
Date: Mon, 23 Mar 2026 17:14:56 +0100
Message-Id: <DHAANIKVU6BV.20W1GS0MWT55E@bootlin.com>
Subject: Re: [PATCH v2 9/9] drm/rockchip: analogix_dp: Add support for
 RK3576
To: "Damon Ding" <damon.ding@rock-chips.com>, <hjc@rock-chips.com>,
 <heiko@sntech.de>, <andy.yan@rock-chips.com>,
 <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
 <tzimmermann@suse.de>, <airlied@gmail.com>, <simona@ffwll.ch>,
 <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <andrzej.hajda@intel.com>, <neil.armstrong@linaro.org>, <rfoss@kernel.org>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.20.1
References: <20260319104031.1986946-1-damon.ding@rock-chips.com>
 <20260320004554.2006299-1-damon.ding@rock-chips.com>
In-Reply-To: <20260320004554.2006299-1-damon.ding@rock-chips.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_091514_537423_CEF6E28B 
X-CRM114-Status: UNSURE (   7.85  )
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
Cc: dmitry.baryshkov@oss.qualcomm.com, devicetree@vger.kernel.org, dianders@chromium.org, linux-arm-kernel@lists.infradead.org, jonas@kwiboo.se, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, kever.yang@rock-chips.com, heiko.stuebner@cherry.de, linux-rockchip@lists.infradead.org, amadeus@jmu.edu.cn, alchark@gmail.com, Laurent.pinchart@ideasonboard.com, didi.debian@cknow.org, m.szyprowski@samsung.com, nicolas.frattaroli@collabora.com, tomeu@tomeuvizoso.net, michael.riesch@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri Mar 20, 2026 at 1:45 AM CET, Damon Ding wrote:
> RK3576 integrates the Analogix eDP 1.3 TX controller IP and the HDMI/eDP
> TX Combo PHY based on a Samsung IP block - both of which are the same as
> those on RK3588.
>
> The patch currently adds only the basic support, specifically RGB output
> up to 4K@60Hz, without the tests for audio, PSR and other eDP 1.3 specific
> features.
>
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> Reviewed-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
