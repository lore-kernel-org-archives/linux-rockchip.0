Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82D19C636D4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 09:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xvHp5Tc6RS9swAtJ9IGBRC2iz/2Xd63Raf68yAjORBA=; b=kji8XbMpcXIAKI
	935LIVGWyEYMkgZ14vvLdWzP7jKgIkRtLDSL+EQle/ta4POWETnyOCsHmLi3Yvi4RsdaSCmjApCvM
	tkVvN2KOiQ1Xq7nc7DpBuCXQNEIDUujmjP6MYANv1WUnEJneyFoGkfTem5t/jc4Pf8hG2XYWHuFt5
	hksRVXvQlVOzTU02A4GqDxsof4t75tv5emH6cp+thtZWAxGsB0IYipUjccX3qDIWDDf2AqqF2PwA3
	js7iNLceGR2Au2Z0yl9UQ1Y3hfTsBodSgq9JGUllybmkPykV5QxzD1aO3wTwg+QUsyk1IAgMXENrO
	2RLhYUKpNVdGePbZQX1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSE1D-005JjL-K7; Wed, 15 Feb 2023 09:24:03 +0000
Received: from smtpbgeu2.qq.com ([18.194.254.142])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSE17-005Jfl-9h
	for linux-rockchip@lists.infradead.org; Wed, 15 Feb 2023 09:24:02 +0000
X-QQ-mid: bizesmtp71t1676452965t41009ye
Received: from [192.168.30.129] ( [92.202.159.105])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 15 Feb 2023 17:22:42 +0800 (CST)
X-QQ-SSF: 01100000002000B0E000B00A0000000
X-QQ-FEAT: Sq1LnYMfAwmoBjvnIEJmOxVDAemDz55fYRmB6YOuB1tKSy1DRFCkQgobhe8M8
	KsF940IXOM3qfjLczBQEfwPzckdszYlUYYmwrCTTDtAKakYR+Yeu52Bwy4nUj32ja7nIGQf
	wnaZl1nsgHKTXwDI3cKp5xCCVNdvFgSnGEJvys+68fsASRZZGumXt0GeDCdPYnjUWR+Mo+Q
	wCQrp5ClXxmazZ7StkPRVa8fC825A6ZJp1qxuNxS7wE1DEhWWeaGX6nDMgjUPcOpUcEolEG
	4zEHu33/r8KtKSd89PAg28Z6coBx8whahqkNFINNxWoH2bJ1uHO2GLsQp8qQ1GWOBXyj7ud
	SRveQWxefBDunOe80SD72II8pxrmKdILoZrv/G+X75LE/Kcja+1t/Lu6Ed6ig==
X-QQ-GoodBg: 0
Message-ID: <07B52E90388B2C3C+dce2736d-7976-a3ce-d805-28997dee7b18@radxa.com>
Date: Wed, 15 Feb 2023 18:22:42 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v5 0/4] drm/rockchip: dw_hdmi: Add 4k@30 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Robin Murphy <robin.murphy@arm.com>, Dan Johansen <strit@manjaro.org>,
 Daniel Stone <daniel@fooishbar.org>
References: <20230208090816.3810589-1-s.hauer@pengutronix.de>
 <43BFE269C2D3B94A+72719122-bfdd-8e99-9176-a6f5e30abfb2@radxa.com>
 <20230214154304.GK10447@pengutronix.de>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20230214154304.GK10447@pengutronix.de>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvr:qybglogicsvr5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_012357_890960_FD147FD5 
X-CRM114-Status: GOOD (  24.12  )
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

hi,

On 2/15/23 00:43, Sascha Hauer wrote:
> On Mon, Feb 13, 2023 at 04:11:46PM +0900, FUKAUMI Naoki wrote:
>> hi,
>>
>> on my rk3399 boards(ROCK Pi 4B+ and ROCK 4C+), fb0 is configured as
>> 1920x1080, and nothing is displayed... "no signal" on display.
> 
> I can confirm this.
> 
> First of all there is a stupid bug in my patch:
> 
>> +       if (vop->data->max_output.width && mode->hdisplay > vop->data->max_output.height)
>> +               return MODE_BAD_HVALUE;
> 
> The comparison should be against the width here of course, not against
> the height. Fixing this should at least allow you to display something
> when a 1080p display is connected.

with above fix, and modified dts either VOPL or VOPB enabled, I could 
get expected resolution on the display.

thank you so much for your nice work :)

--
FUKAUMI Naoki

> The other problem comes with the legacy fbdev emulation. I think failure
> is pretty much expected here. The fbdev emulation happens to use the
> VOPL to display a 4k picture, but the VOPL can only do up to 2560x1600
> and so the mode is denied in vop_crtc_mode_valid(). Quoting Daniel Stone
> on this topic:
> 
>> You've done the right thing. Userspace should detect this and try with
>> alternative CRTC routing. The kernel shouldn't be trying to solve this
>> problem.
> 
> Trying an alternative CRTC routing is exactly what the fbdev emulation
> doesn't do. Now my "userspace" is in kernel and the kernel shouldn't try
> to solve this problem. We're trapped :-/
> 
> Sascha
> 
>>
>> --
>> FUKAUMI Naoki
>>
>> On 2/8/23 18:08, Sascha Hauer wrote:
>>> Some more small changes to this series, see changelog.
>>>
>>> Sascha
>>>
>>> Changes since v4:
>>> - Use struct vop_reg to store resolutions
>>> - Only check for valid clock rates when clock != NULL
>>>
>>> Changes since v3
>>> - Add patch to limit VOP resolutions to hardware capabilitie
>>>
>>> Changes since v2:
>>> - Use correct register values for mpll_cfg
>>> - Add patch to discard modes we cannot achieve
>>>
>>> Changes since v1:
>>> - Allow non standard clock rates only on Synopsys phy as suggested by
>>>     Robin Murphy
>>>
>>> Sascha Hauer (4):
>>>     drm/rockchip: vop: limit maximium resolution to hardware capabilities
>>>     drm/rockchip: dw_hdmi: relax mode_valid hook
>>>     drm/rockchip: dw_hdmi: Add support for 4k@30 resolution
>>>     drm/rockchip: dw_hdmi: discard modes with unachievable pixelclocks
>>>
>>>    drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c  | 41 ++++++++++++++++----
>>>    drivers/gpu/drm/rockchip/rockchip_drm_vop.c  | 15 +++++++
>>>    drivers/gpu/drm/rockchip/rockchip_drm_vop.h  |  6 +++
>>>    drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  5 ---
>>>    drivers/gpu/drm/rockchip/rockchip_vop_reg.c  | 18 +++++++++
>>>    5 files changed, 73 insertions(+), 12 deletions(-)
>>>
>>
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
