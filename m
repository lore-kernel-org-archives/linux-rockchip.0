Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3187CC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Nov 2022 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZX2w0hFekJNsAIz/xFqkgmR3bYAVQ7uoPrhj4tnzGLE=; b=iRJYzSUM3tibCG
	rVFaWD8hz9TZxbx95eDrYBENUK3hueereVJa9XiV+68ciiNxMsnOJ7kZT9K7iQbaUTXoVbfsCJwXd
	iDjCfR7XDvj8/bXSO9IXgyo2NXvvdJ/ExzZa+YZmbt1+TVRW0EizKuO9GTfotKJYNGyd13FUz8zRs
	tcfcTagAbnFo2bi91nXWzOInXUwe5e/q40xGPlO0jpfzWyQm6v/pJtjWI8oQUS0nsfDOBR7fuE46B
	xJ9bI+fgHtV/22pE+WsEMyLeVldkXiD7uZyel3Ia9FO094weKAKv7J/yrsIuh+EUev4amHoflqwdx
	6gCNG4F2b2ik719d4zRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otBIB-007bwi-R6; Thu, 10 Nov 2022 17:24:43 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otBHz-007bqs-JF; Thu, 10 Nov 2022 17:24:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=metanate.com; s=stronger; h=Content-Transfer-Encoding:Message-Id:Date:
	Subject:Cc:To:From:Content-Type:Reply-To:Content-ID:Content-Description:
	In-Reply-To:References; bh=YqIoRq3Z6BinSF+viJeXIC76+f26dp/HQr/mPgW3vTw=; b=LK
	CqEWu3FRBbkDn2746+8mSjzoEBQ197JuGr3ZYKf/zPj4JnAEf05qHggOGhwXGyEZOGS6wyY0Io6Xj
	5oqJ4/MENCCMU6JTcJBf+PGxl+CO9nqv98YHkANkcEeWMnhEFSnrekXjnN1wyWiNYddI1ETGxC4o0
	hRVOBBaQXGisXEPJI/Zmy2cOwm8TzhkPz3AqN1RhbPRrT5VNyvlHY7TvkukPf2/8C43nvSWP2vXWC
	3gWITrczDK7AfvQREU0zwgDEir32zOzTZ6jcRPmdEZyF4nWgK0ZYlFm2HnJyiLnqkOFfJuHq1dSyC
	vWohxZABHm6LfYXAzxUkfdRwrifzaFsg==;
Received: from [81.174.171.191] (helo=donbot.metanate.com)
	by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <john@metanate.com>)
	id 1otBHn-0000C1-NK;
	Thu, 10 Nov 2022 17:24:20 +0000
From: John Keeping <john@metanate.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Cc: John Keeping <john@metanate.com>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] drm/rockchip: avoid duplicate mappings for IOMMU devices
Date: Thu, 10 Nov 2022 17:24:14 +0000
Message-Id: <20221110172415.2853420-1-john@metanate.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_092431_653691_86294F7F 
X-CRM114-Status: GOOD (  10.44  )
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

If a buffer is allocated with alloc_kmap, then it is vmap'd on creation
and there is no reason to map it again in rockchip_gem_prime_vmap() when
the existing mapping can be used.

Signed-off-by: John Keeping <john@metanate.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
index 6edb7c52cb3d..c9507d27f0ba 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
@@ -519,8 +519,14 @@ int rockchip_gem_prime_vmap(struct drm_gem_object *obj, struct iosys_map *map)
 	struct rockchip_gem_object *rk_obj = to_rockchip_obj(obj);
 
 	if (rk_obj->pages) {
-		void *vaddr = vmap(rk_obj->pages, rk_obj->num_pages, VM_MAP,
-				  pgprot_writecombine(PAGE_KERNEL));
+		void *vaddr;
+
+		if (rk_obj->kvaddr)
+			vaddr = rk_obj->kvaddr;
+		else
+			vaddr = vmap(rk_obj->pages, rk_obj->num_pages, VM_MAP,
+				     pgprot_writecombine(PAGE_KERNEL));
+
 		if (!vaddr)
 			return -ENOMEM;
 		iosys_map_set_vaddr(map, vaddr);
@@ -540,7 +546,8 @@ void rockchip_gem_prime_vunmap(struct drm_gem_object *obj,
 	struct rockchip_gem_object *rk_obj = to_rockchip_obj(obj);
 
 	if (rk_obj->pages) {
-		vunmap(map->vaddr);
+		if (map->vaddr != rk_obj->kvaddr)
+			vunmap(map->vaddr);
 		return;
 	}
 
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
