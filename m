Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F475C636CC
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Feb 2023 07:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MtNxu1xqVMQR/HQ9bY0+bVq/O0yXCwd+jMbUblts85M=; b=0LnlyhZIBrPY3E
	1ny8+apGJkC+Ck/41uCKHkkSXKyrHAFHIIqqyIOg28MVJk3ozQ2beUcGEcWNA6h5QzwaMZPvB06rD
	DKQC9NplYvozVD6edlaC0JDYg77Ety6tK1uWM/EdOZwmII1fg3ABiOnf/lypqxTeDGxaYgxWHF5xd
	Kp9suB6mrywf20oUFswGdDcSo86fwUhO+6WoZgUCyB7FoXNsq4ZwzE2X7M0PMDdk8vMiNFBTn0rhU
	qf28ZLEwBrga8OdezvFKlnTlrlxBGLYf2CkVC4FExHPJlrzrQj9V7SFv3OptZKkfC0fhaldGjlKjx
	uRXEb7oTg2ce4uQUdbtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRT1Z-00DQ24-2R; Mon, 13 Feb 2023 07:13:17 +0000
Received: from smtpbgbr1.qq.com ([54.207.19.206])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRT1V-00DPxN-Jv
	for linux-rockchip@lists.infradead.org; Mon, 13 Feb 2023 07:13:16 +0000
X-QQ-mid: bizesmtp70t1676272308tfgfr02l
Received: from [192.168.30.129] ( [92.202.159.105])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 13 Feb 2023 15:11:46 +0800 (CST)
X-QQ-SSF: 01100000002000B0E000B00A0000000
X-QQ-FEAT: CR3LFp2JE4lDSCIU1cfFU98cvix/eiTofwryXjxR0CGSihdDvPFb5smRIwM9x
	c/mbifTe/bM8YQqOGm9YhmVqEeSXpR7nDQ8oxPBWV6Ys6DNdiqjSev4FHQq3i6LQte5hP/V
	wqmrQ+YJHxyST2lpuBPYGFL4oolei2CxcjigXKLum5PVsQd78KLv7+2GCu4lzn9mttUQ4iS
	kIDAseMINAes/4q8gpQEH+D1w+Zpd8rMeHh+N0Wa8Kw0i8iaFjx/KpAbbHWM7A6/lNQP0N9
	5hCePHxgw5h/5ibnNVM2QSoFR726G1lW+wPO4IyXOCBJbl6hm19FxTkKTKi4BzKpPUxcNwY
	y01S05cJLcjn7IXPqkMw+06dAVqWB3vaWl1re950TOfER8bI+g=
X-QQ-GoodBg: 0
Message-ID: <43BFE269C2D3B94A+72719122-bfdd-8e99-9176-a6f5e30abfb2@radxa.com>
Date: Mon, 13 Feb 2023 16:11:46 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v5 0/4] drm/rockchip: dw_hdmi: Add 4k@30 support
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Robin Murphy <robin.murphy@arm.com>, Dan Johansen <strit@manjaro.org>
References: <20230208090816.3810589-1-s.hauer@pengutronix.de>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20230208090816.3810589-1-s.hauer@pengutronix.de>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvr:qybglogicsvr5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230212_231314_500219_B9C2A37B 
X-CRM114-Status: GOOD (  10.81  )
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

on my rk3399 boards(ROCK Pi 4B+ and ROCK 4C+), fb0 is configured as 
1920x1080, and nothing is displayed... "no signal" on display.

--
FUKAUMI Naoki

On 2/8/23 18:08, Sascha Hauer wrote:
> Some more small changes to this series, see changelog.
> 
> Sascha
> 
> Changes since v4:
> - Use struct vop_reg to store resolutions
> - Only check for valid clock rates when clock != NULL
> 
> Changes since v3
> - Add patch to limit VOP resolutions to hardware capabilitie
> 
> Changes since v2:
> - Use correct register values for mpll_cfg
> - Add patch to discard modes we cannot achieve
> 
> Changes since v1:
> - Allow non standard clock rates only on Synopsys phy as suggested by
>    Robin Murphy
> 
> Sascha Hauer (4):
>    drm/rockchip: vop: limit maximium resolution to hardware capabilities
>    drm/rockchip: dw_hdmi: relax mode_valid hook
>    drm/rockchip: dw_hdmi: Add support for 4k@30 resolution
>    drm/rockchip: dw_hdmi: discard modes with unachievable pixelclocks
> 
>   drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c  | 41 ++++++++++++++++----
>   drivers/gpu/drm/rockchip/rockchip_drm_vop.c  | 15 +++++++
>   drivers/gpu/drm/rockchip/rockchip_drm_vop.h  |  6 +++
>   drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  5 ---
>   drivers/gpu/drm/rockchip/rockchip_vop_reg.c  | 18 +++++++++
>   5 files changed, 73 insertions(+), 12 deletions(-)
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
