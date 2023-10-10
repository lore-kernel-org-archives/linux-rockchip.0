Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 613E1CD68ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Oct 2023 06:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BSKKl3Hq1BnXDEBip//XiAAK7oI9nWGAH2olDC/Yh40=; b=gGAYt1ABSdCavW
	r3u7qknXqVCF79qM/1XqztJH1q4v6VZJdZhT+UGq8jrTUCJdgLsD6fM6CrPxEleWjYhCBSQJneyTe
	wshXy+wj6wQj4lSy3EPxTDxb41s/JYDCF22IMaGvz/6vzD4KSPpjfqksWYC0tR4OlU3kkwtFqz4vU
	mQt62D7E2JPmOgKtfMycuOtCS5a/oiSLwrWzvrqW6m+lt/nGcw96o7lJNfkp02LH+HQqabGlmXJ1h
	hpu4bjO/3YEdS9ZpIXIyLC09Kvor9qwE6xFR5ozYZAL8UTv2C8eyMQKt+rY9Bj/8pm/lDi46isTgt
	fjk4DowXYgsoN2xXF0VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qq66v-00CZ0h-1d;
	Tue, 10 Oct 2023 06:20:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qq66r-00CZ01-12
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Oct 2023 06:20:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qq66p-0006wE-8B; Tue, 10 Oct 2023 08:20:47 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qq66o-000ay1-LH; Tue, 10 Oct 2023 08:20:46 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qq66o-00Dg73-Is; Tue, 10 Oct 2023 08:20:46 +0200
Date: Tue, 10 Oct 2023 08:20:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Doug Brewer <brewer.doug@gmail.com>
Cc: linux-rockchip@lists.infradead.org
Subject: Re: RK356x hdmi doesn't support resolutions up to 4k@60Hz
Message-ID: <20231010062046.GC3114228@pengutronix.de>
References: <CAG0V13R4Z2iMTYHDqdKR5pkXicLz5eFPWsaLGVGBdXD-n=3Kzw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAG0V13R4Z2iMTYHDqdKR5pkXicLz5eFPWsaLGVGBdXD-n=3Kzw@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_232049_384583_73C37120 
X-CRM114-Status: GOOD (  22.67  )
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

On Tue, Oct 10, 2023 at 11:15:22AM +0800, Doug Brewer wrote:
> Hi,
> 
> I tested the Linux kernel 6.5.6 on Rock 3A, the hdmi doesn't support
> resolutions up to 4k@60Hz.  4k@30Hz works for me.
> Any idea how to fix it?  Thanks.
> 

Yes, 4k@60 is not yet working. In principle all that's missing should be
the patch below. However, it didn't work for me the time I tested it, so
I haven't tried upstreaming it.

Sascha

--------------------------------8<-------------------------------

From 069ce874a58dbd164825207377c421837de0f0e8 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Jan 2023 12:37:32 +0100
Subject: [PATCH] drm/rockchip: dw_hdmi: Add support for 4k@60 resolution

Does not work yet on our Samsung monitor, it looses synchronization
every now and then.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 725952811752b..ef219cc6e1cdd 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -168,6 +168,12 @@ static const struct dw_hdmi_mpll_config rockchip_mpll_cfg[] = {
 			{ 0x5a64, 0x0003 },
 		},
 	}, {
+		600000000, {
+			{ 0x1a40, 0x0003 },
+			{ 0x3b4c, 0x0003 },
+			{ 0x5a64, 0x0003 },
+		},
+	},{
 		~0UL, {
 			{ 0x00a0, 0x000a },
 			{ 0x2001, 0x000f },
@@ -204,6 +210,7 @@ static const struct dw_hdmi_phy_config rockchip_phy_config[] = {
 	{ 74250000,  0x8009, 0x0004, 0x0272},
 	{ 148500000, 0x802b, 0x0004, 0x028d},
 	{ 297000000, 0x8039, 0x0005, 0x028d},
+	{ 594000000, 0x8039, 0x0000, 0x019d},
 	{ ~0UL,	     0x0000, 0x0000, 0x0000}
 };
 
-- 
2.39.2

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
