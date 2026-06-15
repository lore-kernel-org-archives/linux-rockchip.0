Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBB69CD98C5
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jun 2026 12:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kgCPMK7Pt+RfRzWJXn9dUnaZkxEVXTq/Lz99lh5waWQ=; b=Fa0w5A1EhWOVVuLQxwlhaFmsAR
	I0IDCqYdPlIRD1VX76U3IxUQrzFbvWJC97mkd/ZHr8SeZUcyuPttbwYi5KlAiMIDnDbKAI61l9Aby
	Cb20gGpWtIIY1E7piPajBuGJbM/0wymqlwtOmuG0JN6J0ag13CaxYYYMsMBypUAtlKV2glUVo3V9w
	OFR+n04GJg93cc1fwBQXUgUCK6LztoUXepBtOj+CXF5NeN49Ivr83WJapdrR8ajUyLzAn23uR2cqm
	FEZt8QLChDO3i5f/fkrouG7YaXa0SbLnNMxZMcB3WVf0V8ifwXYPE2EY85e1ukW69HzeNv/XlYTQw
	O0Nbe60g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ6Wv-0000000EDNL-2HwA;
	Mon, 15 Jun 2026 12:35:06 +0000
Received: from mail-m9337.xmail.ntesmail.com ([103.126.93.37])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ6Ws-0000000EDMA-2VoF;
	Mon, 15 Jun 2026 12:35:04 +0000
Received: from [172.16.12.74] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 427046fb6;
	Mon, 15 Jun 2026 20:34:58 +0800 (GMT+08:00)
Message-ID: <8da02c6f-030d-4033-935b-a44c777a14d2@rock-chips.com>
Date: Mon, 15 Jun 2026 20:34:58 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/4] Add eDP lane mapping support
To: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org,
 rfoss@kernel.org
References: <20260604085220.2862986-1-damon.ding@rock-chips.com>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <20260604085220.2862986-1-damon.ding@rock-chips.com>
X-HM-Tid: 0a9ecb4725bc03a8kunmad12dd9f4325
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZShkaVhkYTxoaGEsYQhpIGVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=H2pYc5H4U519kPcqsLXiGZSqfal7roIZHKjog0oUnFm77yfp9eZTtdfOGTPLM5/Lcsv+XL4jWuNSRzLTovnS6ukbqMHh0l4IBojJTjDT+R0HGDUMdDikxtVT4j36p8sRGDPrJFuqrwx4ZAj5tX2uj6ZkKN0BqpTpcTwOo+O86QA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=qY5kOzqcJfORXQNkdCMcMwTxAyKHZxf9POk2wrTq/zs=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_053502_895776_D8FD7D03 
X-CRM114-Status: GOOD (  13.72  )
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
Cc: dmitry.baryshkov@oss.qualcomm.com, devicetree@vger.kernel.org, jonas@kwiboo.se, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, dianders@chromium.org, linux-rockchip@lists.infradead.org, Laurent.pinchart@ideasonboard.com, luca.ceresoli@bootlin.com, nicolas.frattaroli@collabora.com, linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi all,

Gentle ping on this patch series.

Best regards,
Damon

On 6/4/2026 4:52 PM, Damon Ding wrote:
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
> Patch 3: Add validation for samsung,lane-count property as preparation
> Patch 4: Implement lane mapping in analogix_dp driver
> 
> Damon Ding (4):
>    dt-bindings: display: bridge: analogix-dp: Add data-lanes support for
>      endpoint
>    drm/dp: Add helper to validate DP lane counts
>    drm/bridge: analogix_dp: Add validation for samsung,lane-count
>      property
>    drm/bridge: analogix_dp: Add support for optional data-lanes mapping
> 
>   .../bindings/display/bridge/analogix,dp.yaml  | 19 ++++--
>   .../rockchip/rockchip,analogix-dp.yaml        |  1 +
>   .../drm/bridge/analogix/analogix_dp_core.c    | 64 ++++++++++++++++++-
>   .../drm/bridge/analogix/analogix_dp_core.h    |  4 +-
>   .../gpu/drm/bridge/analogix/analogix_dp_reg.c | 15 ++---
>   .../gpu/drm/bridge/analogix/analogix_dp_reg.h |  4 ++
>   include/drm/display/drm_dp_helper.h           |  6 ++
>   7 files changed, 97 insertions(+), 16 deletions(-)
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


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
