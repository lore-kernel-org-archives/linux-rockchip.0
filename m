Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FFD6D1266D
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Dec 2025 06:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q7qyb9Bmnysgl5uP63n4qbjomiIfCmBLJfIXL3DSaKk=; b=QKA+/jn/OsORXa
	558ueHeCi4xybNvBMEWtZRQkDTduBsRSaSSXSWCnnOLuHFTgS86/HileqZOd8NxR8mjOZNvx5x4Io
	85tn5p2WQIU8dFWZnGJjM0srGXNnceKFA8jPTME6k55KLMjs/lzEm8tQizQXfcKqE/x0GrXyEaWvF
	nxi4vhiLYoxNF5vuo2PA2pAYmidVKCiG6gc5smLDQXf8xJ2GsEfY1SXHGoVxJTNXqFXEzzGDLaiaF
	hsEPEaXlxV1wiDRJnepXVqGD1yU9vadqfiJ9nvMnPVXlrCEWY7c/k9KEOkPy4z+DYggznBxqGyBFg
	rWALmtFNAvE/tlG2OzGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQgLF-00000006BQy-1ORh;
	Wed, 03 Dec 2025 06:27:57 +0000
Received: from mail-m49232.qiye.163.com ([45.254.49.232])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQgLB-00000006BQY-21Uf
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Dec 2025 06:27:55 +0000
Received: from [127.0.0.1] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2bcc85205;
	Wed, 3 Dec 2025 14:27:45 +0800 (GMT+08:00)
Message-ID: <c3c5f62f-98fd-49a7-9b39-c4c4f798ad2c@rock-chips.com>
Date: Wed, 3 Dec 2025 14:27:43 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/4] drm/mcde: Create custom commit tail
To: Linus Walleij <linusw@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Linus Walleij <linusw@kernel.org>,
 Vicente Bergas <vicencb@gmail.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Marek Vasut <marek.vasut+renesas@mailbox.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Aradhya Bhatia <a-bhatia1@ti.com>,
 Dmitry Baryshkov <lumag@kernel.org>, Linus Walleij
 <linus.walleij@linaro.org>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>
References: <20251202-mcde-drm-regression-thirdfix-v6-0-f1bffd4ec0fa@kernel.org>
 <20251202-mcde-drm-regression-thirdfix-v6-2-f1bffd4ec0fa@kernel.org>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <20251202-mcde-drm-regression-thirdfix-v6-2-f1bffd4ec0fa@kernel.org>
X-HM-Tid: 0a9ae2e53bf503abkunmb7d2791c353e48
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh8YT1ZOSBoaH0tNGENKGkxWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=djYusm6pS0+pMIapj8xh+gs/DqDtcJRW8+mpxL/6lcdtZp0TzIWGx5Yj6s7MRD0SbDLWx3Ow+7PHVHOlS8gWEpsD2RFb7+hVqZhdhs/frYFVpFnckb3AunPzu4NkEN1TwOoKrbZJ6Tgx7evJgA93Q4U2QJO8zD8w7vqipJcgifs=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=Hl1llcmR8SOfK1eOhtD+UsrAqSI6oxzsZH9lICPtG0I=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_222754_268606_88C1BF1D 
X-CRM114-Status: GOOD (  14.42  )
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

Hi Linus,

On 12/3/2025 5:02 AM, Linus Walleij wrote:
> commit c9b1150a68d9362a0827609fc0dc1664c0d8bfe1
> "drm/atomic-helper: Re-order bridge chain pre-enable and post-disable"
> caused a series of regressions in all panels that send
> DSI commands in their .prepare() and .unprepare()
> callbacks when used with MCDE.
> 
> As the CRTC is no longer online at bridge_pre_enable()
> and gone at brige_post_disable() which maps to the panel
> bridge .prepare()/.unprepare() callbacks, any CRTC that
> enable/disable the DSI transmitter in it's enable/disable
> callbacks will be unable to send any DSI commands in the
> .prepare() and .unprepare() callbacks.
> 
> However the MCDE driver definitely need the CRTC to be
> enabled during .prepare()/.unprepare().
> 
> Solve this by implementing a custom commit tail function
> in the MCDE driver that always enables the CRTC first
> and disables it last, using the newly exported helpers.
> 
> Link: https://lore.kernel.org/dri-devel/20251026-fix-mcde-drm-regression-v2-0-8d799e488cf9@linaro.org/
> Link: https://lore.kernel.org/all/20251107230517.471894-1-marek.vasut%2Brenesas%40mailbox.org/
> Fixes: c9b1150a68d9 ("drm/atomic-helper: Re-order bridge chain pre-enable and post-disable")
> Tested-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> Signed-off-by: Linus Walleij <linusw@kernel.org>
> ---
>  drivers/gpu/drm/mcde/mcde_drv.c | 45 ++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 44 insertions(+), 1 deletion(-)
> 

The bridge document says: "The display pipe (i.e. clocks and timing
signals) feeding this bridge will not yet be running when the 
@atomic_pre_enable is called."

Therefore, your approach seems to be merely a workaround and does not
meet the current requirements of the bridge.

And document also says: "The bridge can assume that the display pipe
(i.e. clocks and timing signals) feeding it is running when 
@atomic_enable callback is called."

If DSI commands need to wait for the display pipe (CRTC) to be ready,
why not perform them inside @atomic_enable instead of @atomic_pre_enable?

-- 
Best, 
Chaoyi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
