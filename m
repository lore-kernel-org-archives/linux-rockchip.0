Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72558C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 May 2022 01:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sdg+IshHEiafKy3V7SM4VW6Agebpiy5h1qM/Qd+GN5A=; b=f8Vf1bo9ne9vGR
	57OS/9YtHDMowKnotq3PK7YOns5ls6lQdW/b/oCUhIPwL/P/NYjphYyOnM1S6KHsdth/4hPSfJeS5
	iNjeO74mgrn7ynSgO4w2omglNRQpdP8XezeRgoqqjkqjg7YYlrYNbLCWR8Xr18aCD/rFNZyrwNrsc
	dpnO6ewN1gqKKYqYieDa8iooRDBzRM0lvrEDmflL+T4NmkOhqGR0ClNmeFfMlHi6gH4Ht9LdOQZvj
	nFpO/st+8qIkPqGAl6YDhs0iGzlWUS1S6mpvlY8oOUHWr921LIyjDQ0+ANhWxKnPIeoj+xqB3EOTe
	vcuovX96rYsdmo5pzQ2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmnCy-000rml-M6; Fri, 06 May 2022 01:56:40 +0000
Received: from edge01.meizu.com ([14.29.68.187] helo=mail.meizu.com)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmnCd-000rbS-0t; Fri, 06 May 2022 01:56:21 +0000
Received: from IT-EXMB-1-125.meizu.com (172.16.1.125) by mz-mail04.meizu.com
 (172.16.1.16) with Microsoft SMTP Server (TLS) id 14.3.487.0; Fri, 6 May 2022
 09:56:03 +0800
Received: from meizu.meizu.com (172.16.137.70) by IT-EXMB-1-125.meizu.com
 (172.16.1.125) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Fri, 6 May
 2022 09:55:58 +0800
From: Haowen Bai <baihaowen@meizu.com>
To: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?=
 <heiko@sntech.de>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>
CC: Haowen Bai <baihaowen@meizu.com>, <dri-devel@lists.freedesktop.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-rockchip@lists.infradead.org>, 
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] drm/rockchip: Remove unneeded semicolon
Date: Fri, 6 May 2022 09:55:57 +0800
Message-ID: <1651802157-25092-1-git-send-email-baihaowen@meizu.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [172.16.137.70]
X-ClientProxiedBy: IT-EXMB-1-126.meizu.com (172.16.1.126) To
 IT-EXMB-1-125.meizu.com (172.16.1.125)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_185619_401636_5EE2AD4A 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Fixes coccicheck warning:

drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:1476:2-3: Unneeded semicolon

Signed-off-by: Haowen Bai <baihaowen@meizu.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 0b49fed16535..7f9d88634a77 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1473,7 +1473,7 @@ static void rk3568_set_intf_mux(struct vop2_video_port *vp, int id,
 	default:
 		drm_err(vop2->drm, "Invalid interface id %d on vp%d\n", id, vp->id);
 		return;
-	};
+	}
 
 	dip |= RK3568_DSP_IF_POL__CFG_DONE_IMD;
 
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
