Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D67D0C4453E
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jul 2026 06:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jBNmHxTA7l7btifbQ0hRIiDHMLol3SBsnGf50RM5BZ8=; b=k9b3mXoZ1GnRan
	Psma6tA7rAoch+Cxgt3MpUllBIuaToY+H4zjLzw6o48JPvJKdJ2YmDBbb6MA/WL2azj6h49xbWgI0
	wiaYgInakXB6mHSjCMGFAy9WoMWMO4SEMrlUvx8mY9vtY4t7vH0JVOKNv8OJDQreRUBvFIiF8pQMo
	CfiYSJsdKdWzlBgNUlmc9U2fFiyuFLuKZOBtKvOlm40uKQGbyTRt/cHK9ScspZL7Y9T70/70LHZ1S
	V3gMEOjw3v2vRnUY6ubveIfI2ioJcV4lpBopZAQH+Aa0nqVCoAjQPaein2mCkQv7yQrhlv+s4gmbp
	0r+OvHfPoaJwCmwzyAmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmn4G-0000000DYcq-1SD4;
	Thu, 23 Jul 2026 06:38:04 +0000
Received: from mail-m60119.netease.com ([210.79.60.119])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmn4B-0000000DYbW-3D15;
	Thu, 23 Jul 2026 06:38:02 +0000
Received: from [172.16.12.74] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4746d9e60;
	Thu, 23 Jul 2026 14:37:43 +0800 (GMT+08:00)
Message-ID: <97e28cf5-dd68-499f-9b05-95690807a5b6@rock-chips.com>
Date: Thu, 23 Jul 2026 14:37:43 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/5] Add eDP lane mapping support
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <20260707040613.1992841-1-damon.ding@rock-chips.com>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <20260707040613.1992841-1-damon.ding@rock-chips.com>
X-HM-Tid: 0a9f8db1bbfc03a8kunmce2c72a238580c
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGh1IS1ZCQxlOHk5NGB
	pMSE1WFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSEpKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=BRDErc+nOga+bu2rulXIPEgszcRtzplx0OBArAZBL8pXrQtJGw2+BRjUNroUJKjfDGWnaHBTTqPQhcrAsMdYAORLDKlyrnpFquwd/zm15pJqzIeaHNc3sV6C06heK9Nu1/Z3lF0D6jdo0w77EZEhEmpvp2/J+n1epPFgzk+9QV4=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=hPnxwzBAhZxcG9oWTVfy2nq7tEgZYFpIDiq2DYBjWcA=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_233800_425899_BA1A2C1E 
X-CRM114-Status: GOOD (  14.98  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Gentle ping.

On 7/7/2026 12:06 PM, Damon Ding wrote:
> This series adds configurable eDP physical lane mapping support via
> device tree data-lanes property.
> 
> Lane mapping is mainly used for below scenarios:
> 1. Correct PCB lane swap and differential line routing crossover
>     without hardware changes;
> 2. Adapt mismatched lane pin definitions between SoC and eDP panel;
> 3. Support multiple panel hardware variants on the same board
>     by configuring data-lanes in device tree only.
> 
> The series includes driver implementation and device tree binding
> updates to support custom lane mapping configuration from endpoint
> node, and keeps default linear lane order if no configuration is given.
> 
> Patch 1: Add endpoint data-lanes property to analogix-dp binding
> Patch 2: Add DRM DP helper API to validate DP lane counts
> Patch 3: Restore mandatory for samsung,link-rate and samsung,lane-count
>           properties
> Patch 4: Add validation for samsung,lane-count property as preparation
> Patch 5: Implement lane mapping in analogix_dp driver
> 
> Damon Ding (5):
>    dt-bindings: display: bridge: analogix-dp: Add data-lanes support for
>      endpoint
>    drm/dp: Add helper to validate DP lane counts
>    drm/bridge: analogix_dp: Restore mandatory samsung DP DT properties
>    drm/bridge: analogix_dp: Add validation for samsung,lane-count
>      property
>    drm/bridge: analogix_dp: Add support for optional data-lanes mapping
> 
>   .../bindings/display/bridge/analogix,dp.yaml  | 19 +++--
>   .../rockchip/rockchip,analogix-dp.yaml        |  1 +
>   .../drm/bridge/analogix/analogix_dp_core.c    | 70 +++++++++++++++++--
>   .../drm/bridge/analogix/analogix_dp_core.h    |  4 +-
>   .../gpu/drm/bridge/analogix/analogix_dp_reg.c | 15 ++--
>   .../gpu/drm/bridge/analogix/analogix_dp_reg.h |  4 ++
>   include/drm/display/drm_dp_helper.h           |  6 ++
>   7 files changed, 101 insertions(+), 18 deletions(-)
> 
> ---
> 
> Changes in v2:
> - Add lane mapping application scenarios in commit message.
> - Remove redundant deprecated property 'data-lanes' for eDP node.
> - Update port@1 $ref to /schemas/graph.yaml#/$defs/port-base.
> 
> Changes in v3:
> - Squash [PATCH v2 2/3] into [PATCH v2 1/3].
> - Add unevaluatedProperties: false to both the port@1 and endpoint
>    nodes.
> 
> Changes in v4:
> - Add validation for samsung,lane-count property as preparation.
> 
> Changes in v5:
> - Add DRM DP helper API to validate DP lane counts.
> - Apply DRM DP helper API to check the validity of samsung,lane-count
>    property.
> - Add Acked-by and Reviewed-by tags.
> 
> Changes in v6:
> - Add a seperate commit to restore mandatory samsung DP DT properties.
> - Add Reviewed-by tag.
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
