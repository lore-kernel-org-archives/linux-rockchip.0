Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9568DC83F0B
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jul 2025 09:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MXTKsOLWQ7v3Z6M4o+cxKEOsLghQm+5pYD5Z6UYx8zM=; b=mst3LxkLxV2oP9
	ekhkzgx8DoTAJpqgq0bhpagMNHWhMw5LMTYpnPQINVWWS6kO0VWbDqVKjPHzkEr9XgmQjntlWjUAG
	njmHXiaGSsDUnZC8nBcrkDTh3KF5f+8CSerMCc+EGi+rjHCJHJJJPadL1nny8RHqpqSf1rh4aIEJa
	KIpW37xvLog69lTx3rmYUl14nTtm9caD4xPvgYGIfQVPrOWIeHnabiafHzrzj3rvsq4vox4DPptRv
	jZS7bB2HfmsC+f1bZi1qU9gwL+MdHOOclY6qdu/b0x/sAErBKey5KxENlvMjb3UaP/Mi1bk/jauJP
	DSx3Cnx8jZ16dGL+s3TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXcIJ-0000000DqqW-3P5L;
	Fri, 04 Jul 2025 09:01:19 +0000
Received: from m16.mail.163.com ([220.197.31.4])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXbeS-0000000Dhz7-25cw;
	Fri, 04 Jul 2025 08:20:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=mibiWF16hdn0bP5qO7tnSAg+k3n38sdVq+w+Ms8wFHY=; b=g
	3kz60z3AYDuGu9PCSO3ovTsSFZsx7LxoJhDEdAEQB7JO4VMWzGp0zDd3E49U+zbe
	X08CMairuKKEg26hx1rGIyGKoUol6qlAcwd9nsI9a0qz029u1yGd2fyT0RcyuePt
	zIAphFeNyGFbC4q7Kf3U8svfzq5icHNxXiTn33wuv4=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-143 (Coremail) ; Fri, 4 Jul 2025 16:19:30 +0800 (CST)
X-Originating-IP: [58.22.7.114]
Date: Fri, 4 Jul 2025 16:19:30 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Piotr Zalewski" <pZ010001011111@proton.me>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	"Diederik de Haas" <didi.debian@cknow.org>
Subject: Re:[PATCH] rockchip/drm: vop2: make vp registers nonvolatile
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <20250628180914.1177177-2-pZ010001011111@proton.me>
References: <20250628180914.1177177-2-pZ010001011111@proton.me>
X-NTES-SC: AL_Qu2eA/qauEks5iWbYOkfmkcVgOw9UcO5v/Qk3oZXOJF8jC/rxCoxfntMEmPnyfOOFCWcrheYUhhh58BWV4JgQoINVNPLzzTi97dc2ZFl3s1NsQ==
MIME-Version: 1.0
Message-ID: <9947ce4.7929.197d484ec6b.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: jygvCgD3V2KSjmdo0I0CAA--.22062W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEhSAXmhnjU0l2AABsr
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250704_012008_903849_1E5826DB 
X-CRM114-Status: GOOD (  12.84  )
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

Hello Piotr,

At 2025-06-29 02:11:00, "Piotr Zalewski" <pZ010001011111@proton.me> wrote:
>Make video port registers nonvolatile. As DSP_CTRL register is written
>to twice due to gamma LUT enable bit which is set outside of the main
>DSP_CTRL initialization within atomic_enable (for rk356x case it is also
>necesarry to always disable gamma LUT before writing a new LUT) there is
>a chance that DSP_CTRL value read-out in gamma LUT init/update code is
>not the one which was written by the preceding DSP_CTRL initialization
>code within atomic_enable. This might result in misconfigured DSP_CTRL
>which leads to no visual output[1]. Since DSP_CTRL write takes effect
>after VSYNC[1] the issue is not always present. When tested on Pinetab2
>with kernel 6.14 it happenes only when DRM is compiled as a module[1].
>In order to confirm that it is because of timing I inserted 18ms udelay
>before vop2_crtc_atomic_try_set_gamma in atomic enable and compiled DRM
>as module - this has also fixed the issue on Pinetab2.
>
>[1] https://lore.kernel.org/linux-rockchip/562b38e5.a496.1975f09f983.Coremail.andyshrk@163.com/
>
>Reported-by: Diederik de Haas <didi.debian@cknow.org>
>Closes: https://lore.kernel.org/linux-rockchip/DAEVDSTMWI1E.J454VZN0R9MA@cknow.org/
>Suggested-by: Andy Yan <andy.yan@rock-chips.com>
>Signed-off-by: Piotr Zalewski <pZ010001011111@proton.me>
>---
> drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 9 +++++----
> 1 file changed, 5 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>index d0f5fea15e21..241060cc24cb 100644
>--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>@@ -2589,12 +2589,13 @@ static int vop2_win_init(struct vop2 *vop2)
> }
> 
> /*
>- * The window registers are only updated when config done is written.
>- * Until that they read back the old value. As we read-modify-write
>- * these registers mark them as non-volatile. This makes sure we read
>- * the new values from the regmap register cache.
>+ * The window and video port registers are only updated when config
>+ * done is written. Until that they read back the old value. As we
>+ * read-modify-write these registers mark them as non-volatile. This
>+ * makes sure we read the new values from the regmap register cache.
>  */
> static const struct regmap_range vop2_nonvolatile_range[] = {
>+	regmap_reg_range(RK3568_VP0_CTRL_BASE, RK3588_VP3_CTRL_BASE+255),

Small nit: there should be spaces before and after the  + 

> 	regmap_reg_range(0x1000, 0x23ff),
> };
> 
>-- 
>2.50.0
>
>
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
