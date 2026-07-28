Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FC82C53219
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 02:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yk/XOkgtUmIIEawwWaWpvEUQuVd9Pu/XZiTkVVXN+Tk=; b=x+GG6RxbbT5sNR
	rDkGnegCCP2p/z9jNtnujB51YeJuvyfHxQ2xIIqh//exn0SEGmAPs3DJsYdB6NUTYyr1dxX2sDQkh
	da3NMbh9iNG6mDN7SNs5GNrz8YjZRXVRvh/HrurvAfw/u9yFvaFUsT2CW65ocNmEapiJo5lzfEW9h
	IOvaKh5d+nLrgFr0XNI/4P8iRTBiE/15Q8Z4LeAZps4Co6aC8qU26bU9Utd3VCjnznJiOtk/Y/KjJ
	t6uT5Emvuj9fRI8WIPaSLJNd2r8QlrpXDvX3hmVhowdf82OSfu3qp6zcGACWpHtt0On1kxaGhkdS3
	L9l94FjqQBz/glCl4s7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woXdt-00000004H4y-0lTd;
	Tue, 28 Jul 2026 02:34:05 +0000
Received: from mail-m158185.netease.com ([47.251.158.185])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woXdm-00000004H4H-3Q9Y;
	Tue, 28 Jul 2026 02:34:04 +0000
Received: from [172.16.12.90] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 47cc2d725;
	Tue, 28 Jul 2026 10:33:51 +0800 (GMT+08:00)
Message-ID: <e22072d9-7fee-4f83-9ae9-5428e45c7507@rock-chips.com>
Date: Tue, 28 Jul 2026 10:33:48 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/5] This series is split from the v15 "Add Type-C DP
 support for RK3399 EVB
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Vinod Koul <vkoul@kernel.org>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org
References: <20260727064408.101-1-kernel@airkyi.com> <amgMXujurBrB5B0L@venus>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <amgMXujurBrB5B0L@venus>
X-HM-Tid: 0a9fa692427f03a7kunm22e4635d2dc5eb
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaH00YVh9JTB1CHR8aTR8dGlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=ZCyjeSSSdnQ5MqlVWg9iw3Z33MtEjjiTFIQ9v4H2BxaLkwkpmqKqU1f4qcU0yX7DNj6E3AcGdvacJPDFOQJ7E84H6io18soSiLG9kZgbYE850m7+bAVCsM+QzcCWqsN2/qnKyg4t7pJdcXjlHeC2YLrbmo9vi6nvSHSAC5ZtW1I=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=RfQDYEdmRUHNrUpuV5WSYlT1Ln/TvaGRYKh3vCdBDu0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_193400_188331_E7DF3236 
X-CRM114-Status: GOOD (  19.54  )
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

Hi Sebastian,

On 7/28/2026 10:08 AM, Sebastian Reichel wrote:
> Hello Chaoyi,
> 
> On Mon, Jul 27, 2026 at 02:44:03PM +0800, Chaoyi Chen wrote:
>> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
>>
>> [1] https://lore.kernel.org/all/20260304094152.92-1-kernel@airkyi.com/
>>
>> ====
>> 1. Generic Type-C DP HPD bridge
>>
>> Currently, several USB-C controller drivers register their own DP HPD
>> bridge via aux-hpd-bridge.c, each duplicating the same logic. For
>> devicetree based platforms, the USB-C controller may vary across boards,
>> and not every USB-C controller driver implements this feature. Patch 1
>> implements a generic DP HPD bridge that monitors Type-C bus events and
>> automatically creates an HPD bridge when a Type-C port device with DP
>> SVID is registered.
>>
>> 2. Multiple bridge model for CDN-DP
>>
>> The RK3399 has two USB/DP combo PHY and one CDN-DP controller. Patch 5
>> introduces a multi-bridge model where each PHY port gets a separate
>> encoder and bridge, allowing flexible selection of the output PHY port.
>> This is based on the DRM AUX HPD bridge rather than extcon.
>>
>> ====
>> Patch 1 adds generic USB Type-C DP HPD bridge (Dmitry, Heikki).
>> Patch 2 adds new API drm_aux_bridge_register_from_node() (Neil).
>> Patch 3 adds DRM AUX bridge support for RK3399 USBDP PHY (Neil).
>> Patch 4 drops CDN-DP's extcon dependency when Type-C is present (Dmitry).
>> Patch 5 adds multiple bridges to support PHY port selection (Dmitry, Luca).
>>
>> Changes in v4:
>> - Link to v3: https://lore.kernel.org/all/20260717072323.96-1-kernel@airkyi.com/
>> - Scan the entire typec_bus and attempt to register the hpd bridge,
>>   so as not to miss devices that were already added during initialization.
> 
> While that may help with the module being loaded late, it does not
> help with triggering the module load in the first place.
> 
> The module does not have any MODULE_DEVICE_TABLE() helping with
> that. So basically any system relying on the automatic hpd bridge
> registration and using a modular kernel (e.g. the arm64 defconfig or
> the kernels usually provided by Linux distributions) requires
> manually loading that module to get any graphical output.
>

Thank you for pointing this out. I will add it in v5.

> Greetings,
> 
> -- Sebastian
> 
>> Changes in v3:
>> - Link to v2: https://lore.kernel.org/all/20260608070805.88-1-kernel@airkyi.com/
>>   (Sorry, I forgot to add the "v2" title, so it looks like v1.)
>> - Remove now-redundant call to drm_connector_attach_encoder()
>> - Rebase to v7.2-rc2
>>
>> Changes in v2:
>> - Link to v1: https://lore.kernel.org/all/20260521032854.103-1-kernel@airkyi.com/
>> - Add copyright text.
>> - Remove useless goto.
>> - Fix incorrect function names in the documentation comments.
>> - Fix the check logic for dp->active_port (0 is valid).
>> - Fix the uninitialized prev_port.
>> - Remove duplicate logic from cdn_dp_switch_port().
>> - Fix the prototype of cdn_dp_bridge_hpd_notify().
>> - Properly release connector->fwnode.
>> - Properly release next_bridge.
>>
>> Chaoyi Chen (5):
>>   drm/bridge: Implement generic USB Type-C DP HPD bridge
>>   drm/bridge: aux: Add drm_aux_bridge_register_from_node()
>>   phy: rockchip: phy-rockchip-typec: Add DRM AUX bridge
>>   drm/rockchip: cdn-dp: Support handle lane info without extcon
>>   drm/rockchip: cdn-dp: Add multiple bridges to support PHY port
>>     selection
>>
>>  drivers/gpu/drm/bridge/Kconfig                |  10 +
>>  drivers/gpu/drm/bridge/Makefile               |   1 +
>>  drivers/gpu/drm/bridge/aux-bridge.c           |  26 +-
>>  .../gpu/drm/bridge/aux-hpd-typec-dp-bridge.c  |  64 ++++
>>  drivers/gpu/drm/rockchip/Kconfig              |   1 +
>>  drivers/gpu/drm/rockchip/cdn-dp-core.c        | 358 ++++++++++++++----
>>  drivers/gpu/drm/rockchip/cdn-dp-core.h        |  18 +-
>>  drivers/phy/rockchip/Kconfig                  |   2 +
>>  drivers/phy/rockchip/phy-rockchip-typec.c     |  13 +-
>>  include/drm/bridge/aux-bridge.h               |   6 +
>>  10 files changed, 428 insertions(+), 71 deletions(-)
>>  create mode 100644 drivers/gpu/drm/bridge/aux-hpd-typec-dp-bridge.c
>>
>> -- 
>> 2.53.0
>>
>>

-- 
Best, 
Chaoyi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
