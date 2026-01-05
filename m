Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B41CC79FB0
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jan 2026 18:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ahhfrhoGv3vyKsgZlF61ShSDXwxd46FUTW8idQNxaPs=; b=InbyXCV+Nfdm9W
	dtNgtAx511+wEkVQ8Wfv4uRIj+cyHUThi/evdiIuYSs/80DK4btJsG0Xaa4lYMhFcvO3Tdr83bCWW
	lD/JTr893n/ln4GHqwBptw9dPWEJzBYzn8A0Krmx8+P4jj/LuTHVU1PmpuPsOMkfqdA7baUnddOkf
	cZkn4qrvCKWQDpUXi5uxGdfzYOzSzEMtFU6KVs91sDUnUvbGOQjE9rEh5AcsU8ht2WJhZa0UEOD2j
	g6uEOhXgrtmSfTTUC3bchpYEBmBAwmbMxdnOL5075U7Q3NvW14RxMIxix+4xEIWVZwAiVH63U44Qt
	QEIBqP54JkGXiLyWRrGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcow7-0000000BtjL-2Cuv;
	Mon, 05 Jan 2026 18:04:11 +0000
Received: from out-171.mta1.migadu.com ([95.215.58.171])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcow4-0000000Bthx-0nFa
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Jan 2026 18:04:09 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1767636235;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cAA+oxavMgc4zkXOGFmiSvR8+PD1TtQP41ZqvlXUThs=;
	b=kMajOfcdtk45xWH0kGb3b41xCo1bO+xiDbACL0VyqrPG3w9btouiEBdZv+LwWEoIP7MJ8B
	USaCShheXrvb1lw/XI10J/HOyAnqobbaXhuxDOXAnuuUeAcKVeggBwiSxEICCQNPb8tpEB
	MaRwhBriswMcj17ycDs2ygwaOe4tlBRKJAm9VwhcKS6XhawGN33GGWsHUMhgJP26wCM6SF
	Mh717+XFhjTJ5JctfLAGzs3VQRutSF6GwyfYMJrKM+Ns1JPRf4hjYa0PYNncc4881I/BP+
	TtmkYBi+dp6ojwdq/YSbEKTNOR6am64xFn7uTFDk49IRSjkyC4fP8C8uZ8e1zQ==
Date: Mon, 05 Jan 2026 19:03:32 +0100
Message-Id: <DFGUQPIJWYDR.2LEI3CON9X7GJ@cknow-tech.com>
Cc: <kernel@collabora.com>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH 0/4] Add HDMI 2.0 support to DW HDMI QP TX
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>, "Andrzej Hajda"
 <andrzej.hajda@intel.com>, "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Robert Foss" <rfoss@kernel.org>, "Laurent Pinchart"
 <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman" <jonas@kwiboo.se>,
 "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Sandy Huang"
 <hjc@rock-chips.com>, =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "Andy Yan" <andy.yan@rock-chips.com>
References: <20251203-dw-hdmi-qp-scramb-v1-0-836fe7401a69@collabora.com>
In-Reply-To: <20251203-dw-hdmi-qp-scramb-v1-0-836fe7401a69@collabora.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_100408_373147_719325BD 
X-CRM114-Status: GOOD (  15.40  )
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

On Wed Dec 3, 2025 at 7:27 PM CET, Cristian Ciocaltea wrote:
> This patch series provides the missing support for high TMDS clock ratio
> and scrambling to DW HDMI QP TX library, required for handling HDMI 2.0
> display modes on RK3576 & RK3588 SoCs.

I tested this patch set with my 4K TV and Rock 5B and without it I did
not see 4K@60, only 4K@30. With this patch set also a number of 4K
related display settings appeared which were not there without it.
So thanks a lot for this patch set. Feel free to add:

Tested-by: Diederik de Haas <diederik@cknow-tech.com>

Cheers,
  Diederik

> In order to allow addressing the SCDC status lost on sink disconnects,
> it adds an atomic variant of the drm_bridge_funcs.detect callback and a
> new drm_bridge_detect_ctx() helper, which is further used in
> drm_bridge_connector to switch to ->detect_ctx hook.
>
> Furthermore, optimize HPD event handling in dw_hdmi_qp Rockchip platform
> driver to run the detect cycle on the affected connector only.
>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
> Cristian Ciocaltea (4):
>       drm/bridge: Add ->detect_ctx hook and drm_bridge_detect_ctx()
>       drm/bridge-connector: Switch to using ->detect_ctx hook
>       drm/bridge: dw-hdmi-qp: Add high TMDS clock ratio and scrambling support
>       drm/rockchip: dw_hdmi_qp: Do not send HPD events for all connectors
>
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c   | 174 +++++++++++++++++++++++--
>  drivers/gpu/drm/display/drm_bridge_connector.c |  73 ++++++-----
>  drivers/gpu/drm/drm_bridge.c                   |  58 +++++++++
>  drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c |  44 +++----
>  include/drm/drm_bridge.h                       |  30 +++++
>  5 files changed, 308 insertions(+), 71 deletions(-)
> ---
> base-commit: ac5b392a8c355001c4c3f230a0e4b1f904e359ca
> change-id: 20251203-dw-hdmi-qp-scramb-cdbd8b57ccf9
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
