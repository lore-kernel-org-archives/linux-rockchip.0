Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7A7FCD4F54
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 May 2026 01:14:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TY5aJMgpfo8XkEE85oB1fvOP75NC1YJkrnyUg7Nx2rQ=; b=o8ZORyeKV0c5nw
	AS+pfrI+VOkmmRVKnElUBtcLNtSUQE2Wfi+VxSl8oa63gxXfk2gdjk0N6m+warnJdqbS8HZ/8thL/
	9G9PSN2Ksui9FT4YAEBPczdkULF1hVxXa29ZUj+pAmXqiLMrICjk/ghcbHO2BfdnjWXKZrnkdEa1P
	0oKnZNfNEtSvhSSem3LLwu1AqS77eIa0ysQHJtRe8ExSQlzYZUxERdV76yfG32YYUdle7Zla4FHa4
	GAtArD3bQCv34W3wUp039m6+x9+zj5n4FkH2SgOlCeQGpg2f3wQ3zkDjngTaZ8nAkIScH+A7NvZUm
	sug1MS4EoKesKGfgt4hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPVVZ-00000003D2C-0Tw2;
	Wed, 20 May 2026 01:14:01 +0000
Received: from mail-m60156.netease.com ([210.79.60.156])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPVVV-00000003D0u-1DiI;
	Wed, 20 May 2026 01:13:59 +0000
Received: from [172.16.12.51] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3f0f4bf32;
	Wed, 20 May 2026 09:13:41 +0800 (GMT+08:00)
Message-ID: <c0bc4796-afe5-40ff-8816-9605a6114d23@rock-chips.com>
Date: Wed, 20 May 2026 09:13:25 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v15 0/9] Add Type-C DP support for RK3399 EVB IND board
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Chaoyi Chen <kernel@airkyi.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Peter Chen <hzpeterchen@gmail.com>, Luca Ceresoli
 <luca.ceresoli@bootlin.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>, Dragan Simic <dsimic@manjaro.org>,
 Johan Jonker <jbx6244@gmail.com>, Diederik de Haas <didi.debian@cknow.org>,
 Peter Robinson <pbrobinson@gmail.com>, Hugh Cole-Baker <sigmaris@gmail.com>,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org
References: <20260304094152.92-1-kernel@airkyi.com> <agxo8ic94e81nQRx@kuha>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <agxo8ic94e81nQRx@kuha>
X-HM-Tid: 0a9e42f214cf03abkunmde1056153a93c
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDQkoaVhhOGE9LGE9LQ01JTFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pPSExVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=gwTF78PPuLUm1sysWyZUVBaAIEKd3WixyNY3bmjSc5enP6t3T7LjW1vDPot1Ro5hpeJzDUUuaKmRf3Cz6DX9uu/L1JxbBv2q7RmlverbAPspYQqTopSj5X3/+EdlkoFK2PHIs+UdzLX137UjUapaHB2spXQq0d9N+RLByQu9LFk=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=Puww1BH0j/oGm+Paq7ifcsE10dx5Hg0yZyciu4GUl4o=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_181357_878603_EB04483E 
X-CRM114-Status: GOOD (  13.75  )
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

Hello Heikki,

On 5/19/2026 9:43 PM, Heikki Krogerus wrote:
> Hi,
> 
> On Wed, Mar 04, 2026 at 05:41:43PM +0800, Chaoyi Chen wrote:
>> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
>>
>> This series focuses on adding Type-C DP support for USBDP PHY and DP
>> driver. The USBDP PHY and DP will perceive the changes in cable status
>> based on the USB PD and Type-C state machines provided by TCPM. Before
>> this, the USBDP PHY and DP controller of RK3399 sensed cable state
>> changes through extcon, and devices such as the RK3399 Gru-Chromebook
>> rely on them. This series should not break them.
> 
> What's the status with this series?
> Are these inteded to go via the DRM tree?
> 
> thanks,
> 

Thank you very much for your continued attention to this series.
The maintainers seem quite busy... Despite there being no further review
comments, this series have yet to be merged into the DRM tree. 

And some of my other patches are in the same situation. 
Do you happen to know what the next steps should be? Thank you.

-- 
Best, 
Chaoyi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
