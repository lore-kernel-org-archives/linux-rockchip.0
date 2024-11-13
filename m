Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 875A0D597C3
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Nov 2024 01:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=60sFoClAPMcEkNk4iPL20o3R80RCzlCc/584Z7DxFwY=; b=Na0mEv85d7TA0Z
	fxbgggunhwXOoPTdkaLQ19ppK8X0exZtxxIfVF7UIS7r0Q48gG0HKnYBLXVffS08XMPhmM0iJDevS
	5PYiw5LoxbGLr0zWXN0BmS+OZcfHARS8FCGcnE1gy/f/RHisx+Si2N34hDOV8cxsvz9Px2cV8qi6k
	iMHUGli7deLf8r8FDxsjRwfSV9tHQrFL2G+72j380rrwIf6V5n+8dDkMmmgOFbcHQy8aGG3JOdMGX
	cCWdl20sjcoQAglf3HLvEfAUQOmjlJdMalKa8KP+lKWTu86VHRYJyJwUajh4qpfQKeY0VVdrNU6r8
	T95nytbPYX3O140PJ2eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tB22F-00000005UtD-1bOR;
	Wed, 13 Nov 2024 01:19:07 +0000
Received: from m16.mail.163.com ([117.135.210.2])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tB20P-00000005UbF-1vqD;
	Wed, 13 Nov 2024 01:17:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=fZZMT+/Mq1IzQAs8XttbFYcD4jt6sLWoadgWnzFFMgI=; b=E
	U8hazD+bQ+l5AfskLn/jugyDjzXaPEQ4avhYDLxkgiJ4l7Xpze87V0YMGaDtzJnA
	PrQKW6fa1oNO5SAna9Xmqk/W4HcXzecT6w4NQTfrZGM6xpX9ijKVnRxznzmLX29/
	y2zXOcLr9m5H5FHalDHS5VDn1JIDQAkZIhWXV2zB50=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-129 (Coremail) ; Wed, 13 Nov 2024 09:16:49 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Wed, 13 Nov 2024 09:16:49 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Heiko Stuebner" <heiko@sntech.de>
Cc: quentin.schulz@theobroma-systems.com, hjc@rock-chips.com, 
	andy.yan@rock-chips.com, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	"Heiko Stuebner" <heiko.stuebner@cherry.de>, 
	sebastian.reichel@collabora.com
Subject: Re:[PATCH 1/2] drm/rockchip: vop2: fix rk3588 dp+dsi maxclk
 verification
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <20240425195506.2935955-2-heiko@sntech.de>
References: <20240425195506.2935955-1-heiko@sntech.de>
 <20240425195506.2935955-2-heiko@sntech.de>
X-NTES-SC: AL_Qu2YA/idv04r7ySbY+kZnEobh+Y5UcK2s/ki2YFXN5k0mCTmyg4+bG5cLH7q9fmiKiCmoQmLURl14P5jTa5KbpiYvcCAmhgeX8QvpwslBgwR
MIME-Version: 1.0
Message-ID: <4cbc446f.f07.193231835a1.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: gSgvCgDHTywB_jNnjV0lAA--.56349W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMx2WXmcz+UKPeAACs8
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_171713_989247_D7B8FE17 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
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


+ Sebastina,
Hi Sebastian,  I think you also need this patch when you test DSI on rk3588 with  DSI2 support patch from Heiko.

At 2024-04-26 03:55:05, "Heiko Stuebner" <heiko@sntech.de> wrote:
>From: Heiko Stuebner <heiko.stuebner@cherry.de>
>
>The clock is in Hz while the value checked against is in kHz, so
>actual frequencies will never be able to be below to max value.
>Fix this by specifying the max-value in Hz too.
>
>Fixes: 5a028e8f062f ("drm/rockchip: vop2: Add support for rk3588")
>Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
>---
> drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>index 9bee1fd88e6a2..523880a4e8e74 100644
>--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>@@ -1719,7 +1719,7 @@ static unsigned long rk3588_calc_cru_cfg(struct vop2_video_port *vp, int id,
> 		else
> 			dclk_out_rate = v_pixclk >> 2;
> 
>-		dclk_rate = rk3588_calc_dclk(dclk_out_rate, 600000);
>+		dclk_rate = rk3588_calc_dclk(dclk_out_rate, 600000000);
> 		if (!dclk_rate) {
> 			drm_err(vop2->drm, "DP dclk_out_rate out of range, dclk_out_rate: %ld KHZ\n",
> 				dclk_out_rate);
>@@ -1736,7 +1736,7 @@ static unsigned long rk3588_calc_cru_cfg(struct vop2_video_port *vp, int id,
> 		 * dclk_rate = N * dclk_core_rate N = (1,2,4 ),
> 		 * we get a little factor here
> 		 */
>-		dclk_rate = rk3588_calc_dclk(dclk_out_rate, 600000);
>+		dclk_rate = rk3588_calc_dclk(dclk_out_rate, 600000000);
> 		if (!dclk_rate) {
> 			drm_err(vop2->drm, "MIPI dclk out of range, dclk_out_rate: %ld KHZ\n",
> 				dclk_out_rate);
>-- 
>2.39.2
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
