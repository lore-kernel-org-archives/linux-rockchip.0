Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 168B0C531D0
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 03:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3i560UbghUYsddTXHr1bPAAJIRbeQJ3NsguwtFWN0b0=; b=dRoFOVRbZJUg3A
	F3U63V2+1MMNh38r9q30qUXBfNqdIl8yM8aaG9UbbuehO/q4plFJmehkwUntVSLZ83f1rJapElNC0
	8W8EvTm7jNn1IN/df+TickLEZQG0m5fsqKxtnF7HNydpsEqXx+p8EqOgQCVscuqKY5/crpKlHLDJ4
	BjZ9PXM41Ovc7qgtuvclNfOFUZ9XBChco7royk4DV4UkSyUQ0sb/RBN7IEre8vSYuWeuX3ln376+M
	/JJRFX1CJtxRnTMAGc/1z2uSgfcAgLrmurcxiev1G8cyjMAPH+ijf/pse67NO1Uw2ZzNCu5c4Lx25
	2ZU//uQmC3fX7M/uC1aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpHle-00000009S49-11R0;
	Thu, 30 Jul 2026 03:49:10 +0000
Received: from mail-m128175.netease.com ([103.209.128.175])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpHla-00000009S3U-33f0;
	Thu, 30 Jul 2026 03:49:08 +0000
Received: from [127.0.0.1] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 481d48273;
	Thu, 30 Jul 2026 11:49:02 +0800 (GMT+08:00)
Message-ID: <a791f935-1634-4e21-966d-6d75bec87566@rock-chips.com>
Date: Thu, 30 Jul 2026 11:49:00 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/rockchip: vop2: give rk3576 VP2 a primary plane
To: Tomonori Nakagawa <jack@supremeoverlordjabs.co>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260729232450.13797-1-jack@supremeoverlordjabs.co>
 <24547ed2-0950-48be-92cb-bbb0e1653258@rock-chips.com>
 <7b6b347d-f5d9-45fe-8255-27e01f23578c@supremeoverlordjabs.co>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <7b6b347d-f5d9-45fe-8255-27e01f23578c@supremeoverlordjabs.co>
X-HM-Tid: 0a9fb123d26603a7kunme747ba0b4a4eb8
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZHk4fVktLHRlCGk1CGE5KGVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=InTrd8rEXIAzz/o+tE2MmWAT/BagpE1/UvSTJclh6647mKFu5oSGVEKDY5NX9PrMvKoT1W+RcFFCT1rV820atajhNjkP/W3Qsyp55Xzod5LJQWw3w0jlzGbVn/UTkubXh6i+mc6r7HZGPQcQMoQ/uRJPL9XCToxlvFGQcTHNbwM=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=X7Mux6FE7z9fKIoWpY6C8S3xx1B7JjI8DMShzGceysM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_204906_999821_B40B1863 
X-CRM114-Status: GOOD (  11.67  )
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

On 7/30/2026 11:39 AM, Tomonori Nakagawa wrote:
> On 2026/07/30 10:56, Chaoyi Chen wrote:
>> The description here is not accurate. VP2 can wire to different
>> display interfaces which depending on your board configuration.
> 
> You're right, thanks. VP2 isn't tied to DP - the VP-to-interface
> routing is board/DT dependent. The actual issue is the plane topology:
> on rk3576 the two Cluster windows (the only DRM_PLANE_TYPE_PRIMARY
> windows) both have possible_vp_mask = BIT(0) | BIT(1), so they can only
> attach to VP0/VP1. VP2's only attachable windows are the Esmart ones,
> which are all DRM_PLANE_TYPE_OVERLAY. So whenever a board's DT wires any
> output to video_port2, vop2_create_crtcs() finds no primary plane for it
> and fails with -ENOENT ("no primary plane for vp 2").
> 
> I'll reword the commit message accordingly (dropping the DP framing) in
> a v2. Does the fix itself - promoting Esmart0 to PRIMARY - look
> acceptable, or would you prefer a different window or a driver-side
> approach for VP2's primary?
> 
> 
> 

No, it looks good to me. Let's see if anyone else has any opinions.

-- 
Best, 
Chaoyi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
