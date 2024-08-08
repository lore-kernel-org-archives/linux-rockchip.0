Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33A28C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 11:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z3UMav+mqx8zRK56pDidstKJGjTYYfjTqx2Qp+KASyE=; b=1a/VnCbzHed1O8
	NiXonqrT8ppFQ77bS7FGmRIFWtctqCDsR2KwXDLN4YHFOXBFAsW0r5ei63XPNbKub2Il26iFV8942
	O6/um954PaN7huZWnrEjML+grr8G/8mvzsfyG3s61Ji0jkL//k931Ua9MiyGiPES9YgtBR6BEtoe2
	yGQ2rYneNoT9fxQUVSG3yohUP5No+8kpQgK8X9YYwjJre40iZvkRzreYf/0Lgkrokzsx/hBVJBo7g
	d36++UTSiD39sZnDAI1KojTn+cifL0ShsoViCQoUQncWxV0GLbop39GfwuF26VbKbzqV6s6hf0Wur
	c8YWHUMc/op/MsWKBTkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc1nD-000000087zM-1tLn;
	Thu, 08 Aug 2024 11:58:55 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc1n8-000000087y6-2yA7;
	Thu, 08 Aug 2024 11:58:52 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723118318; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=mURPLIA4vd7lWdffQkpZXcs3WAN+g6N1oy/1Aw9AaQc3FkZSUGq4Azha/56zJ7gy3Be8SSeeKUMcBGXzQf4/H4Q7ObkO8JDaojKQkXyicJB/SzNX007HaxPR7BCXXURaez8KTQvCe2x++C/aYzTfrq/l2d8V+st2EKX/Bpdhlmc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723118318; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=WMDBItI2xogayssnAPBndPmg8HyuNPCtZlERCJnLHAQ=; 
	b=kvbzknc31A9FHaiMDjqyPSVVgRxW5VLnQlX61scOWrw+TjhXJzyV6AgHI8dD79tFRCz64iM9F8C+Iwz8CnPNF9LjfVkh7ujzfdrxI3d+LsPWOljGt4lnRO/FV79QSP9Ej67V0Niuo9l3ZkuXEcweo5E12toCsrmFp2LZ+QnEyN8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=cristian.ciocaltea@collabora.com;
	dmarc=pass header.from=<cristian.ciocaltea@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723118318;
	s=zohomail; d=collabora.com; i=cristian.ciocaltea@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:To:To:Cc:Cc:Reply-To;
	bh=WMDBItI2xogayssnAPBndPmg8HyuNPCtZlERCJnLHAQ=;
	b=DjMy8tRg+xKo2lpOY9ZK0xWCQP3Ov/9q4yCqsKDjyHTv/hhKT4nr7nusEHsAusaT
	D8iWzJXQT0IrKG6m1drCEnd+3qS2mAXW62JrgtIBvs1DzfJTnBaUiW9bYXWOYDtk5fh
	Im54m0QoMMf8H4ri3hxTXhV4yoh1CCivTfICcV4o=
Received: by mx.zohomail.com with SMTPS id 172311831804658.98418777154552;
	Thu, 8 Aug 2024 04:58:38 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Thu, 08 Aug 2024 14:58:02 +0300
Subject: [PATCH RESEND] drm/rockchip: Unregister platform drivers in
 reverse order
MIME-Version: 1.0
Message-Id: <20240808-rk-drm-fix-unreg-v1-1-c30d9a754722@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Sean Paul <seanpaul@chromium.org>, Jeffy Chen <jeffy.chen@rock-chips.com>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, Mark Yao <markyao0591@gmail.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.1
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_045850_871584_F0D66078 
X-CRM114-Status: UNSURE (   9.46  )
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

Move rockchip_drm_platform_driver unregistration after its sub-drivers,
which ensures all drivers are unregistered in the reverse order used
when they were registered.

Fixes: 8820b68bd378 ("drm/rockchip: Refactor the component match logic.")
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index 44d769d9234d..ca7b07503fbe 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -528,10 +528,9 @@ static int __init rockchip_drm_init(void)
 
 static void __exit rockchip_drm_fini(void)
 {
-	platform_driver_unregister(&rockchip_drm_platform_driver);
-
 	platform_unregister_drivers(rockchip_sub_drivers,
 				    num_rockchip_sub_drivers);
+	platform_driver_unregister(&rockchip_drm_platform_driver);
 }
 
 module_init(rockchip_drm_init);

---
base-commit: 1eb586a9782cde8e5091b9de74603e0a8386b09e
change-id: 20240702-rk-drm-fix-unreg-9f3f29996a00
-- 
Cristian Ciocaltea <cristian.ciocaltea@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
