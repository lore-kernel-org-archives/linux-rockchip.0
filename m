Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CB4EC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 May 2022 23:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AJXTjU/YNADaRJwqlDF2RGfhHgWGgg6pKk/ZcQXsE3I=; b=X01km0wJaJsgbp
	qPiYDaoR60GMk5XUZMdytS/i15Ltj3lEfCxRPM9HQdhso0YbCAc+dumwcY5OdZWQULxWRaXmSTRRe
	nKrL8J9+yt/ez8ch2Dwt9EPB7FZwO0phfHHeOd5DA2HK8Eil05FA0NukPdkPEPkrsINRbkvlF7FtM
	phK3Z5iDGIIxf6Aafuby42AlsxWbNry602Aq0YYYjo5C7FKuBSHdvZqlQqIFApbuN+qdIubh58+cI
	OaZqHvP/a+wphx3t5Zoerz+vnKW0SdN8uQa2NHmPRdNw+ss6y1BD7pv3TgIKVdxf+AJdaK45KF7ja
	15VdTJXgTmBxaE11X0wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmksV-000W3w-S9; Thu, 05 May 2022 23:27:23 +0000
Received: from out30-56.freemail.mail.aliyun.com ([115.124.30.56])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmksK-000W1W-En; Thu, 05 May 2022 23:27:14 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R131e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04394; MF=yang.lee@linux.alibaba.com;
 NM=1; PH=DS; RN=10; SR=0; TI=SMTPD_---0VCOzSIf_1651793220; 
Received: from localhost(mailfrom:yang.lee@linux.alibaba.com
 fp:SMTPD_---0VCOzSIf_1651793220) by smtp.aliyun-inc.com(127.0.0.1);
 Fri, 06 May 2022 07:27:01 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: hjc@rock-chips.com
Cc: heiko@sntech.de, airlied@linux.ie, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Yang Li <yang.lee@linux.alibaba.com>, Abaci Robot <abaci@linux.alibaba.com>
Subject: [PATCH -next] drm/rockchip: remove unneeded semicolon
Date: Fri,  6 May 2022 07:26:59 +0800
Message-Id: <20220505232659.4405-1-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_162712_689804_E8E28D25 
X-CRM114-Status: UNSURE (   7.05  )
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

Eliminate the following coccicheck warning:
./drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:1476:2-3: Unneeded
semicolon

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
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
2.20.1.7.g153144c


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
