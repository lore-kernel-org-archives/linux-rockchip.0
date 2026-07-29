Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3F6CC54F52
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 01:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X78hLE0nGCHgmU3H5Sl5oBaM8R0vPgqy9lQi8p1x0zg=; b=tdK86boug8Y9nv
	u3wqFdplRjREl1+SAHUCFdbWvrvv2V78Uo5VAjPUaVk4kJFIFKmU5GzcYrc/wbbMM/GCxIkwjpGP0
	vhs3hCL0KQNUysygTkyCBwIOyTwSOC+7bctxAjPx11s0VpO72uSyxIU+I+DG8Ornh72mmpwlketIz
	Kx4fkp3cwaVUZpS+CxMXOOZAISG18ngIkfSYML+5K7ezB8OaHcRN98dkMCxM+AP1wERGbQqcQbW7H
	8cuBzUNrTbL9z/2cOcp0Imw9W8P+7keXyDGvu3ao/g/Fgx7t3hEmMy1VMxc4paBXXkH0yq61JZjWw
	ogG/U3WSZBdO8gM+G48w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wotCK-00000006c0W-1IGy;
	Wed, 29 Jul 2026 01:35:05 +0000
Received: from mail-m6080.netease.com ([210.79.60.80])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wotCE-00000006bw4-0Pj4;
	Wed, 29 Jul 2026 01:35:00 +0000
Received: from [172.16.12.90] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 47f0092e5;
	Wed, 29 Jul 2026 09:34:46 +0800 (GMT+08:00)
Message-ID: <e4b1051c-fc91-44a7-ab29-1da888fcc0c2@rock-chips.com>
Date: Wed, 29 Jul 2026 09:34:44 +0800
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
 <e22072d9-7fee-4f83-9ae9-5428e45c7507@rock-chips.com>
 <amh1sK_4KnD5zTlZ@venus>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <amh1sK_4KnD5zTlZ@venus>
X-HM-Tid: 0a9fab82895203a7kunm36abcb353ae33c
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDHR0aVh1NT0xNSU0dS0hKSVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUJCSU
	5LVUpLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=euk3LVDokfDwuFpxIXJN4jzuLkRvCtZqL8jRDZoAMRvU+JjIgJ35lxzKyNXNiyGRtGCK9NBFxvWfNY3AwjI7dfY2R/DKuVwUmhyZKQT6VIaXik4yqyNkfEz9392PYWmVGRCtPRe5Cchs2S75m7iquG3+ruNflhaXQLxwkVZbv1o=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=R4MBbntBTw+WzVk7B5pQ1YM1qPjQxWB0im3ZJJbI4sU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_183458_669118_E9135069 
X-CRM114-Status: GOOD (  17.86  )
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

On 7/28/2026 6:44 PM, Sebastian Reichel wrote:
> Hello Chaoyi,
> 
> On Tue, Jul 28, 2026 at 10:33:48AM +0800, Chaoyi Chen wrote:
>>>> Changes in v4:
>>>> - Link to v3: https://lore.kernel.org/all/20260717072323.96-1-kernel@airkyi.com/
>>>> - Scan the entire typec_bus and attempt to register the hpd bridge,
>>>>   so as not to miss devices that were already added during initialization.
>>>
>>> While that may help with the module being loaded late, it does not
>>> help with triggering the module load in the first place.
>>>
>>> The module does not have any MODULE_DEVICE_TABLE() helping with
>>> that. So basically any system relying on the automatic hpd bridge
>>> registration and using a modular kernel (e.g. the arm64 defconfig or
>>> the kernels usually provided by Linux distributions) requires
>>> manually loading that module to get any graphical output.
>>>
>>
>> Thank you for pointing this out. I will add it in v5.
> 
> Add what exactly? As this code is quite generic, you don't have
> anything for a MODULE_DEVICE_TABLE() (i.e. no OF, no I2C, ...).
> 

That is:

static const struct typec_device_id dp_typec_id[] = {
	{ USB_TYPEC_DP_SID },
	{ },
};
MODULE_DEVICE_TABLE(typec, dp_typec_id);

Just like the modules in drivers/usb/typec/altmodes/ .

> One solution I see to keep the notifier design would be to add
> 
> MODULE_SOFTDEP("pre: aux-hpd-typec-dp-bridge")
> 
> to some other module and piggy-back on it. Alternatively integrate
> it directly to some other module, such as "drm_display_helper",
> which already has DRM_DISPLAY_DP_HELPER and DRM_DISPLAY_DP_TUNNEL.
> Adding TypeC DP AltMode as part of it seems sensible to me.
>

I agree, placing it on the DRM side looks more reasonable.

> FWIW I suggest you test booting your patches work with the arm64
> defconfig before your next submission ;)
>

Oh, I will. It's just that I've always been using buildroot. I'll check 
the situation with other distributions.


> Greetings,
> 
> -- Sebastian

-- 
Best, 
Chaoyi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
