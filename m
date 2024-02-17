Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ED39C48BC3
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Feb 2024 18:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t9v4Aft/IcguqpUUt1qJ5Tq6j11IUo8I4ckng/LTMeA=; b=xoGPIrsh/rif70
	4DRXeUYlF8EVfG/wOcdgLKzeMRAwnVs88dZ6mYcDxu3nGraZV5I2Y6AMhIeqbJllUXvVlg89FCBp0
	HP8kMnnBapev5McBquzSob8wo6gb9Tw8SFriSyPwOJlathcY+rIMauQKat+I1t9/FP7tTbe5xXepS
	ZmJoA47vRK6p2LMySrniIJytpXJQ8DUZRGkKY9xnl6vY5WW2qxZH3b1zmrWFoiJZ6zMea7c1i+4BS
	uEkrboPdxHEqUS0B2Vuf8E5kU42A4TIWsnukjPoOQU/cluGYZ0uyKx8peVqfchOeQOEHWv/mNZaUh
	HQW3uSNc/ldyGhvtFGxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbPnF-00000006Blw-3NoP;
	Sat, 17 Feb 2024 18:52:09 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbPnC-00000006Bl2-0Qhi;
	Sat, 17 Feb 2024 18:52:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1708195924; bh=HRBsXHjOejmZlim4WFTvQhmTd/GTxXJaVN/xTbbQgG8=;
	h=From:To:Cc:Subject:Date:From;
	b=mWjyxl/suWtNCVP3DS707u2Tlr9gLUP9/LtPcj2llvfo3lH+9+aeYKLqHZShBM5T5
	 957L5tTyBUBKzQxB4YD55mI5YEKXNuCcATMTQt9l+9JS4bWkBcMrEclljHWwZALfbh
	 BeGTYyNq14AIq/q7ysXwb2L7h3h+on5ps075co30=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: linux-kernel@vger.kernel.org
Cc: Ondrej Jirman <megi@xff.cz>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org (open list:ROCKCHIP ISP V1 DRIVER),
	linux-rockchip@lists.infradead.org (open list:ROCKCHIP ISP V1 DRIVER),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support)
Subject: [PATCH] media: rkisp1: Allow higher input resolution
Date: Sat, 17 Feb 2024 19:51:58 +0100
Message-ID: <20240217185202.1754750-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_105206_327688_B5ECFD3A 
X-CRM114-Status: UNSURE (   9.18  )
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

From: Ondrej Jirman <megi@xff.cz>

In BSP driver, it is allowed, and it works in practice. Tested on
Pinephone Pro/RK3399 with IMX258 at full res.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-common.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index 4b6b28c05b89..74098ddbeeb3 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -33,8 +33,8 @@ struct dentry;
 #define RKISP1_ISP_SD_SINK			BIT(1)
 
 /* min and max values for the widths and heights of the entities */
-#define RKISP1_ISP_MAX_WIDTH			4032
-#define RKISP1_ISP_MAX_HEIGHT			3024
+#define RKISP1_ISP_MAX_WIDTH			4416
+#define RKISP1_ISP_MAX_HEIGHT			3312
 #define RKISP1_ISP_MIN_WIDTH			32
 #define RKISP1_ISP_MIN_HEIGHT			32
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
