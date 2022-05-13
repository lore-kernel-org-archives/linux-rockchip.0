Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 134D8C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 May 2022 13:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=unPA40KVMTXYCPjCFa0qDcNm+LS9f2SUtKQxVIS1u7g=; b=ZN2wgHIeFzLzXY
	rIHDXWzDvgHAH9yOU8XY0zx3m7HS7NZsqUbkl8Mco7MOL0GVXVLU9NSqe2HEjLCkQYq6H8OS1vuiQ
	Z5ogGAW6qUbAZNZ4E/FiFxspnPFSdzaY4q1nGW/mfF/nEIrl73zAFGwqN/P+6zizorDWNq+kNg/5T
	+2aGBYrzX0K1BVM/1ZODXXljQcELC6DJDJH6e8gVnaMtIZ7Mf/kCLzvHQxiMKuckJwAp2Q6K0mH0O
	xsvzsfi3piKlhbQxp2Lbsky7vuzQKcfmmuJC3rQI+42mJF1z7yixjas4CGz+sO8ROL57rCoVgXMxV
	MDaLAyG7igHnbmF0ceog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npVk4-00GLgT-NX; Fri, 13 May 2022 13:54:04 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npVjr-00GLdY-H4; Fri, 13 May 2022 13:53:54 +0000
Received: by mail-wr1-x430.google.com with SMTP id k2so11569288wrd.5;
 Fri, 13 May 2022 06:53:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7fZe7ZuhkcHkphV8RgWm+aqXThfc6HEs1D3+w7fnW1E=;
 b=c8pvij0fZVSEifHuKb4ntHQFJbaoWeF16rwR0TUUzsGtGA4msQL9RdM3IaImMp0HAJ
 QybhumSZY9ZmpjDfK/fwoZnyzH3wD712NJ8c6u6ePfCDoEDZBz7biWzeFeDbVQFjRqOK
 izQcfAhhn3OGdfF1r1Z5Y3v1DI5xkS7k7cuUNUBvyTtuqDNSjLeVJNZx4KAZeIvO27cg
 zHbge6ihXS69wXl3rGwOcBwzz/jumGXO/LNhxp0A1FqdwCenAty2cAih7XJMp2hu4r4Y
 jocIg7tcpjXOeKeUPLiYGzz78K/M4ZYMC6cDamRbPwOW+Q+NEU7Xt+8lg2+zHdOweNd+
 RQlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7fZe7ZuhkcHkphV8RgWm+aqXThfc6HEs1D3+w7fnW1E=;
 b=Xir8uOsoPpfaiZle+atROUBZ6PIH9QW/3ZLU9b1VxUWmW1Vi51xJ6J4N2gHKKsKR8V
 Uhvoeh9DAfld4hchYDx2FCHkFsahLMEyy5wXAjDHF+I0bsZ6r/Wf9v31sJbKoDVVSu7l
 hs8rXi+5D6YlTHUU5stddCwNXctmNdrKZZFcrn/SDI23D3HA+oJIOBKjLD6MTNwR/O10
 FvyDi0rs2ot33EuIB9I/ecww5rLrlaTGCd/NxloJt0OAVIfKkRVXxL1l0xuAYSGtzjnj
 JtVDVipfT9T9V/NbsrH0TQiTEHqQf052vvApgm/t2U0jWxWEIxVtalvFXlKyq6gXS8yP
 LRHg==
X-Gm-Message-State: AOAM532Dwzl7OyKnPLglAxmNceuRZxghFl7B/JtXMJk75blFthYxx1HR
 sCvXW3XjUKgKf9lLOaYkyDs=
X-Google-Smtp-Source: ABdhPJy+EwUp69L0cz2uBqQcXBfzCCAdTcl2Tk4p9WOhncRmnlPiaIfBKRewmbH8Fj20a+w1hQxW0w==
X-Received: by 2002:adf:e449:0:b0:20c:d56a:6020 with SMTP id
 t9-20020adfe449000000b0020cd56a6020mr4067091wrm.425.1652450023108; 
 Fri, 13 May 2022 06:53:43 -0700 (PDT)
Received: from localhost (245.218.125.91.dyn.plus.net. [91.125.218.245])
 by smtp.gmail.com with ESMTPSA id
 l6-20020adfa386000000b0020c5253d903sm2161229wrb.79.2022.05.13.06.53.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 May 2022 06:53:42 -0700 (PDT)
From: Colin Ian King <colin.i.king@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH][next] drm/rockchip: Fix spelling mistake "aligened" ->
 "aligned"
Date: Fri, 13 May 2022 14:53:41 +0100
Message-Id: <20220513135341.290289-1-colin.i.king@gmail.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220513_065351_593882_F1490C24 
X-CRM114-Status: GOOD (  10.78  )
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

There is a spelling mistake in a drm_err message. Fix it.

Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 0b49fed16535..04e8e22a8640 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1202,7 +1202,7 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 		 */
 		stride = (fb->pitches[0] << 3) / bpp;
 		if ((stride & 0x3f) && (xmirror || rotate_90 || rotate_270))
-			drm_err(vop2->drm, "vp%d %s stride[%d] not 64 pixel aligened\n",
+			drm_err(vop2->drm, "vp%d %s stride[%d] not 64 pixel aligned\n",
 				vp->id, win->data->name, stride);
 
 		rb_swap = vop2_afbc_rb_swap(fb->format->format);
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
