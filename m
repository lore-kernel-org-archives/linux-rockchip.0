Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16CBFD116EA
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Nov 2025 03:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6recyKRvWmpp3Lj/XHOY2mLfVkkfjgNBGDyp9d3+r+Y=; b=BCApDwwHKrHjrM
	lEvs1B2auEqfkh9ogXRZ1Gvm97T9HcqMF5F3la2QmjRyJJckpb8tVOSUNaWYf1HkqOJoGplfkBBlU
	O/u9PQvu2PR7ffWjTiG6B2qO5RyDh7H2oog73B0iYpc92DGff6TNPfQzDBt+ei5K5O9CYoqzFfKlk
	DtjS7C3lkk1n3TZb98MMaY7YE9SSuKIQW1ENEynd2FTHIWKoS8DnLpBHrfCP0PDFBpnL/VaHggSpU
	IpfwTC8PnybC6O+67+5kCNQSNlN1OtVqbWb9znHZxKOg3TkEUy1TI+qN9/soejePisJloNLZ+wDg1
	wmtACk7IGP4v1IG8JIgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPBxQ-00000001F2n-2yyZ;
	Sat, 29 Nov 2025 03:49:12 +0000
Received: from mail-m49220.qiye.163.com ([45.254.49.220])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPBxN-00000001F2H-117B;
	Sat, 29 Nov 2025 03:49:11 +0000
Received: from [172.16.12.51] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2b55618e9;
	Sat, 29 Nov 2025 11:49:04 +0800 (GMT+08:00)
Message-ID: <b8819463-cc61-432f-b451-db90e3b43884@rock-chips.com>
Date: Sat, 29 Nov 2025 11:49:02 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] drm/rockchip: vop2: Support setting custom
 background color
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Louis Chauvet <louis.chauvet@bootlin.com>,
 Haneen Mohammed <hamohammed.sa@gmail.com>,
 Melissa Wen <melissa.srw@gmail.com>
Cc: Robert Mader <robert.mader@collabora.com>, kernel@collabora.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20251118-rk3588-bgcolor-v3-0-a2cc909428ea@collabora.com>
 <20251118-rk3588-bgcolor-v3-4-a2cc909428ea@collabora.com>
 <0ed71b8d-5a2e-4213-bd2f-7ba317d1e4cb@rock-chips.com>
 <4a6443b8-d440-4921-8a43-7c20e4e265e7@collabora.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <4a6443b8-d440-4921-8a43-7c20e4e265e7@collabora.com>
X-HM-Tid: 0a9acdba840603abkunm9c46392384a375
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUkYGVZLHUtMGENOHUMaQx5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=c6wopmKfyDolnWvTPbit1XwhT08o5Zv0zULgsSyfi3Dtja0iCKDqH/xnbF1hx6RFjSTJpTdEctw/YQHhePCcrQm3DKxTlc5yPAHJ4ctqKHwnrEfyUVuXlDxAW7ZadraHBa0nth1c8d++0Qk4IkaaHKrzQPiIXlP8mSNwPjdkqpc=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Rv0oPloj8Gtj1ksfFZ9mxS7fwxH945KByum30N5q1wA=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_194909_795396_19122E4A 
X-CRM114-Status: GOOD (  13.87  )
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

Hello Cristian, 

On 11/28/2025 5:44 PM, Cristian Ciocaltea wrote:
> The precision was something I initially looked into for CRC verification, in the
> context of the related IGT test.  But since I've added the VKMS support, I think
> we should not worry about that anymore. 
> 
> Moreover, as already pointed out in [1], only RK3576 supports CRC generation at
> display controller level, and that is not particularly useful because it doesn't

I believe you can get the CRTC CRC on the RK3576, even when only the 
background is visible and all plane is disabled. Feel free to let me
know if you run into any issues :)

> take the background color into account.  Therefore I had to capture the frame
> CRCs at DisplayPort AUX channel level, by using the USB-C DP AltMode capable

Oh that sounds interesting! I'm not sure how complex it would be to
implement.

> port of my RK3588-based board.  However, that solution is not yet available
> upstream, as it requires further work for cleanup and improving the overall
> USB-C reliability. 
> 
> Hence I'll move on with your suggestion and switch to the simple bit-shifting
> approach for the next revision.

-- 
Best, 
Chaoyi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
