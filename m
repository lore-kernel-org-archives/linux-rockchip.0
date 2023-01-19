Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9F59C004D4
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jan 2023 23:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zh3UFbqiVwo1cP6LB3CjHYxAMoHQB5ItKngYZL6LukI=; b=1apX4jyVOzFiV2
	IKm+Zf1woLRM9/J1/2LWf+50ztJFFE+P9nHQ8UPAQ50+n/mNHqiRAXoPGJMGKFtrCST2n08Ve2C8x
	KK3bhiSPIEQHOEkjsZQavDRj/2h/6ICFMzCNRCdNB+9D8RKIs2YpXG5q8BPc+xqzPeQRFNhf6Ek0D
	61u+3GpvLVFZtnSLPFQxAWgIYhBRdd1DCaL9NQIwnIUizfZ8+6GSPPCecXHFRYw3mCQZvKtgsma41
	WnMKkUrGWq/i9VQgFtxVde8pxRq2RqHF6li36QIZZwssskZgiw9RnTPyLg9HK2ZbNDaTwQpjzAvIJ
	mv6Ro0/UHu9SDDEtwUaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIeAU-007Zzg-6p; Thu, 19 Jan 2023 23:18:02 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIeA8-007Ztx-NC; Thu, 19 Jan 2023 23:17:53 +0000
Received: by mail-pl1-x62e.google.com with SMTP id k13so3844814plg.0;
        Thu, 19 Jan 2023 15:17:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LoPT1qZTZAiwXdlOT9grX8TQ8vUdaTmpWhI7QC60cXs=;
        b=awbv6pu4ENIEU6blOT7ognTpQESQ7PK3rksK/Li2rhuFEXMIgQPIVEQJgFOhFvQZMM
         z1qM4WyqdoS2qycGh4iuFu9CzCkCDEfCbVYcbnocOQ7X1mUJgZVJhmNsgz3AlsXZgPUB
         RX97qZm5KkyND7oXpFMe0e2zN0iJX9R+1xiaDmDggFxLobRLz1OMtHlXQkYCe1wVVC5R
         KpQzyTJyUjkfG++QAB7DBxJVT/mrBUa9OaNpwR4qPXrRx41TB4YSI7k8VM5lQxsLN+O5
         M99Y6PF0ogupxXhew39KKeCyvLrEVzlAYA2tabdXeE7cqz/2SrRlENPKajqHTlez5Hwt
         udUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LoPT1qZTZAiwXdlOT9grX8TQ8vUdaTmpWhI7QC60cXs=;
        b=qqKSRScTBElPAf/rBAuTrZ6dhyHnFf4MGBTkQL3/XppJv0WfHKCrvgagmci0JpARPy
         jbcoQfo0e+7iJmNC0Qu1yRd4K6ahFRNFX9V+X8fHP55qRn2d6cW18rjqhnrZ4mg3jrQe
         TzCy6PsOVcSWb+FW8DjOYEYYhV8PEwEQMVg6k4sIM0qzc9EWiPp7bhwBpM+/ySiC3TkR
         HgWXyS3H39IxDaAgK9HIwVuD5EguOYD3SovTVnlB0NF+AP7/T/GZ8lIZ1idGlcOxFL//
         HWz168hr7/iu5UJ8aFSHpY60xw855PpGhSwhAjNzqVUwURJUTCaO9zB8MQKjMoDBCIeo
         lg0Q==
X-Gm-Message-State: AFqh2krOW90JuVx24a/leTBoWfUeom+RqVgqIAX/m6mG11dorLzcdbZx
	Sef+2ABa36n/KyerCw9EQPk=
X-Google-Smtp-Source: AMrXdXsVdDw+YB0Zgvq034UW+xelPx2PPY4N5TAKF0D/Jclal3YFKMREgNQamm7c8VfVvfM/mVcIug==
X-Received: by 2002:a17:903:200b:b0:194:ab2a:b74a with SMTP id s11-20020a170903200b00b00194ab2ab74amr11069280pla.38.1674170250390;
        Thu, 19 Jan 2023 15:17:30 -0800 (PST)
Received: from localhost ([2a00:79e1:abd:4a00:2703:3c72:eb1a:cffd])
        by smtp.gmail.com with ESMTPSA id l15-20020a170903120f00b00188fce6e8absm22498801plh.280.2023.01.19.15.17.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 15:17:29 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Rob Clark <robdclark@chromium.org>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Daniel Kurtz <djkurtz@chromium.org>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] drm/rockchip: Drop unbalanced obj unref
Date: Thu, 19 Jan 2023 15:17:34 -0800
Message-Id: <20230119231734.2884543-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_151749_276014_4B28876C 
X-CRM114-Status: UNSURE (   7.85  )
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

From: Rob Clark <robdclark@chromium.org>

In the error path, rockchip_drm_gem_object_mmap() is dropping an obj
reference that it doesn't own.

Fixes: 41315b793e13 ("drm/rockchip: use drm_gem_mmap helpers")
Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
index 6edb7c52cb3d..19b46c00dcbf 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
@@ -262,9 +262,6 @@ static int rockchip_drm_gem_object_mmap(struct drm_gem_object *obj,
 	else
 		ret = rockchip_drm_gem_object_mmap_dma(obj, vma);
 
-	if (ret)
-		drm_gem_vm_close(vma);
-
 	return ret;
 }
 
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
