Return-Path: <SRS0=vwyG=DW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C75CC43467
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2020 12:38:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2A94122254
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2020 12:38:38 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="kix0VKRx"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2A94122254
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n3Gvzi2d5Iw0oU1T+C/HFJ8jSiv8gk8pxkMXwKUgcG0=; b=kix0VKRxOIQW4LATpllm7t82i
	dfwAmum+XskxirhWsXYEaUJ7bxlh32qPzY/IwWWeUJyON3eDNGfpZE/K/S0YIab6qsRyBXuQPLnCZ
	odscf6NJQVbXQHs0XZbBWolg+i3t77TfvDVKtrEV9Utfcnx4cqO+5w2J9LLxTIY4n9mj2yzshZq+R
	AJwHg2Yw7ToUt+06psIkv8eZpnDhbiF558nlboJGPCpllNbxuOA+WvEGtqd5YROgdjuodh5g1KpAL
	tHl6qQ9OZAVgYJlU5kFvQ/ch3HI/OAUyYXJiOlM17OglWUTPH1ClsUNMVslVL2+T0q8s1qujbGRuG
	0apgqPbPw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kT2Wb-0007qW-1g; Thu, 15 Oct 2020 12:38:29 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kT2WN-0007hi-LN; Thu, 15 Oct 2020 12:38:18 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id A929AB186;
 Thu, 15 Oct 2020 12:38:12 +0000 (UTC)
From: Thomas Zimmermann <tzimmermann@suse.de>
To: maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@linux.ie,
 daniel@ffwll.ch, sam@ravnborg.org, alexander.deucher@amd.com,
 christian.koenig@amd.com, kraxel@redhat.com, l.stach@pengutronix.de,
 linux+etnaviv@armlinux.org.uk, christian.gmeiner@gmail.com,
 inki.dae@samsung.com, jy0922.shim@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, kgene@kernel.org, krzk@kernel.org,
 yuq825@gmail.com, bskeggs@redhat.com, robh@kernel.org,
 tomeu.vizoso@collabora.com, steven.price@arm.com,
 alyssa.rosenzweig@collabora.com, hjc@rock-chips.com, heiko@sntech.de,
 hdegoede@redhat.com, sean@poorly.run, eric@anholt.net,
 oleksandr_andrushchenko@epam.com, ray.huang@amd.com,
 sumit.semwal@linaro.org, emil.velikov@collabora.com, luben.tuikov@amd.com,
 apaneers@amd.com, linus.walleij@linaro.org, melissa.srw@gmail.com,
 chris@chris-wilson.co.uk, miaoqinglang@huawei.com
Subject: [PATCH v4 03/10] drm/etnaviv: Remove empty etnaviv_gem_prime_vunmap()
Date: Thu, 15 Oct 2020 14:37:59 +0200
Message-Id: <20201015123806.32416-4-tzimmermann@suse.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201015123806.32416-1-tzimmermann@suse.de>
References: <20201015123806.32416-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201015_083815_975126_EF11CACB 
X-CRM114-Status: GOOD (  13.16  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-samsung-soc@vger.kernel.org, lima@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, etnaviv@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 xen-devel@lists.xenproject.org, spice-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The function etnaviv_gem_prime_vunmap() is empty. Remove it before
changing the interface to use struct drm_buf_map.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
---
 drivers/gpu/drm/etnaviv/etnaviv_drv.h       | 1 -
 drivers/gpu/drm/etnaviv/etnaviv_gem.c       | 1 -
 drivers/gpu/drm/etnaviv/etnaviv_gem_prime.c | 5 -----
 3 files changed, 7 deletions(-)

diff --git a/drivers/gpu/drm/etnaviv/etnaviv_drv.h b/drivers/gpu/drm/etnaviv/etnaviv_drv.h
index 914f0867ff71..9682c26d89bb 100644
--- a/drivers/gpu/drm/etnaviv/etnaviv_drv.h
+++ b/drivers/gpu/drm/etnaviv/etnaviv_drv.h
@@ -52,7 +52,6 @@ int etnaviv_gem_mmap(struct file *filp, struct vm_area_struct *vma);
 int etnaviv_gem_mmap_offset(struct drm_gem_object *obj, u64 *offset);
 struct sg_table *etnaviv_gem_prime_get_sg_table(struct drm_gem_object *obj);
 void *etnaviv_gem_prime_vmap(struct drm_gem_object *obj);
-void etnaviv_gem_prime_vunmap(struct drm_gem_object *obj, void *vaddr);
 int etnaviv_gem_prime_mmap(struct drm_gem_object *obj,
 			   struct vm_area_struct *vma);
 struct drm_gem_object *etnaviv_gem_prime_import_sg_table(struct drm_device *dev,
diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gem.c b/drivers/gpu/drm/etnaviv/etnaviv_gem.c
index 67d9a2b9ea6a..bbd235473645 100644
--- a/drivers/gpu/drm/etnaviv/etnaviv_gem.c
+++ b/drivers/gpu/drm/etnaviv/etnaviv_gem.c
@@ -571,7 +571,6 @@ static const struct drm_gem_object_funcs etnaviv_gem_object_funcs = {
 	.unpin = etnaviv_gem_prime_unpin,
 	.get_sg_table = etnaviv_gem_prime_get_sg_table,
 	.vmap = etnaviv_gem_prime_vmap,
-	.vunmap = etnaviv_gem_prime_vunmap,
 	.vm_ops = &vm_ops,
 };
 
diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gem_prime.c b/drivers/gpu/drm/etnaviv/etnaviv_gem_prime.c
index 135fbff6fecf..a6d9932a32ae 100644
--- a/drivers/gpu/drm/etnaviv/etnaviv_gem_prime.c
+++ b/drivers/gpu/drm/etnaviv/etnaviv_gem_prime.c
@@ -27,11 +27,6 @@ void *etnaviv_gem_prime_vmap(struct drm_gem_object *obj)
 	return etnaviv_gem_vmap(obj);
 }
 
-void etnaviv_gem_prime_vunmap(struct drm_gem_object *obj, void *vaddr)
-{
-	/* TODO msm_gem_vunmap() */
-}
-
 int etnaviv_gem_prime_mmap(struct drm_gem_object *obj,
 			   struct vm_area_struct *vma)
 {
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
