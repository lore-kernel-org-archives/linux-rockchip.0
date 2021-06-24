Return-Path: <SRS0=8D6r=LS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83125C48BDF
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jun 2021 09:55:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 55FDC613F9
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jun 2021 09:55:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 55FDC613F9
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E8e2TSUJSPNJZ29Ff7EKYPMYsoAgx8Ufu6nNSJbGHmU=; b=gq0V9NlAcXCFzF
	aNmzpBOHwlywQ0WWsNYmMDBmR1iLBWPoYXGRLzwH8v4rG95kzFV5Fvh53UngopCwr6h6bMkvVw4zX
	z8JoJpwB81Wy0Ao8YcVCmSR1v8vjsR0Zz/6Do7Njz886zx7CKcwrcdngKwy0LP6yUwfj2aLVOGUIV
	g9Iup5hBGooaQlmj/iD7D+FafC98qyrX6IiXx7T0HOfrwyWWviYSoHpDBiFxVp2BKtj4K8RXVqWLL
	12glNt+wo6VkNjnLRmXJ312x7cfYPMXcA5RhHtXN8im5lp+9OpFf62qSf2Q5tDNM2ZrlkaDafu6VV
	wsRVuN/Zzf5P61TTDYhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwM4v-00Dq76-JL; Thu, 24 Jun 2021 09:55:21 +0000
Received: from smtp-out2.suse.de ([195.135.220.29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwM4g-00Dq0A-2V; Thu, 24 Jun 2021 09:55:07 +0000
Received: from imap.suse.de (imap-alt.suse-dmz.suse.de [192.168.254.47])
 (using TLSv1.2 with cipher ECDHE-ECDSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 83EFF1FD35;
 Thu, 24 Jun 2021 09:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1624528503; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=y89PAPzhBNVoaWez7lt5Zhqw9cAexX0Sfmxbsofr47E=;
 b=mHwAxzxiWRY7vhRToxdzayjcujo4t7LoaZ6EV72d6HdZ4ohdahHUhqpnbvfJocTqZsnbdW
 gtpXpgX2P09Aw4ynuuP2GH9jsV5qRsWYIIkPx44EVPENwfBiAeID8KPf3Id2mvjzdj+igb
 8vh8RhfGZML3MbQJgxUZ/dGZc1R9Re8=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1624528503;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=y89PAPzhBNVoaWez7lt5Zhqw9cAexX0Sfmxbsofr47E=;
 b=S7oPQAmv3YL7GktbW6vKREv/1lrE6LPjNlOmmCSH5DDIMZGl32tW6hTqmmjMb6FpqTC2pX
 lbZWhfZ0ZVlRWKDw==
Received: from imap3-int (imap-alt.suse-dmz.suse.de [192.168.254.47])
 by imap.suse.de (Postfix) with ESMTP id 5394911A97;
 Thu, 24 Jun 2021 09:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1624528503; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=y89PAPzhBNVoaWez7lt5Zhqw9cAexX0Sfmxbsofr47E=;
 b=mHwAxzxiWRY7vhRToxdzayjcujo4t7LoaZ6EV72d6HdZ4ohdahHUhqpnbvfJocTqZsnbdW
 gtpXpgX2P09Aw4ynuuP2GH9jsV5qRsWYIIkPx44EVPENwfBiAeID8KPf3Id2mvjzdj+igb
 8vh8RhfGZML3MbQJgxUZ/dGZc1R9Re8=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1624528503;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=y89PAPzhBNVoaWez7lt5Zhqw9cAexX0Sfmxbsofr47E=;
 b=S7oPQAmv3YL7GktbW6vKREv/1lrE6LPjNlOmmCSH5DDIMZGl32tW6hTqmmjMb6FpqTC2pX
 lbZWhfZ0ZVlRWKDw==
Received: from director2.suse.de ([192.168.254.72]) by imap3-int with ESMTPSA
 id mVxjE3dW1GB5UQAALh3uQQ
 (envelope-from <tzimmermann@suse.de>); Thu, 24 Jun 2021 09:55:03 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	airlied@linux.ie,
	daniel@ffwll.ch
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH] drm/rockchip: Implement mmap as GEM object function
Date: Thu, 24 Jun 2021 11:55:02 +0200
Message-Id: <20210624095502.8945-1-tzimmermann@suse.de>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_025506_330298_1A145164 
X-CRM114-Status: GOOD (  16.43  )
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

Moving the driver-specific mmap code into a GEM object function allows
for using DRM helpers for various mmap callbacks.

The respective rockchip functions are being removed. The file_operations
structure fops is now being created by the helper macro
DEFINE_DRM_GEM_FOPS().

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
---
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c   | 13 +-----
 drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c |  3 +-
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c   | 44 +++++--------------
 drivers/gpu/drm/rockchip/rockchip_drm_gem.h   |  7 ---
 4 files changed, 15 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index b730b8d5d949..2e3ab573a817 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -208,16 +208,7 @@ static void rockchip_drm_unbind(struct device *dev)
 	drm_dev_put(drm_dev);
 }
 
-static const struct file_operations rockchip_drm_driver_fops = {
-	.owner = THIS_MODULE,
-	.open = drm_open,
-	.mmap = rockchip_gem_mmap,
-	.poll = drm_poll,
-	.read = drm_read,
-	.unlocked_ioctl = drm_ioctl,
-	.compat_ioctl = drm_compat_ioctl,
-	.release = drm_release,
-};
+DEFINE_DRM_GEM_FOPS(rockchip_drm_driver_fops);
 
 static const struct drm_driver rockchip_drm_driver = {
 	.driver_features	= DRIVER_MODESET | DRIVER_GEM | DRIVER_ATOMIC,
@@ -226,7 +217,7 @@ static const struct drm_driver rockchip_drm_driver = {
 	.prime_handle_to_fd	= drm_gem_prime_handle_to_fd,
 	.prime_fd_to_handle	= drm_gem_prime_fd_to_handle,
 	.gem_prime_import_sg_table	= rockchip_gem_prime_import_sg_table,
-	.gem_prime_mmap		= rockchip_gem_mmap_buf,
+	.gem_prime_mmap		= drm_gem_prime_mmap,
 	.fops			= &rockchip_drm_driver_fops,
 	.name	= DRIVER_NAME,
 	.desc	= DRIVER_DESC,
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c b/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
index 2fdc455c4ad7..d8418dd39d0e 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
@@ -7,6 +7,7 @@
 #include <drm/drm.h>
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_fourcc.h>
+#include <drm/drm_prime.h>
 #include <drm/drm_probe_helper.h>
 
 #include "rockchip_drm_drv.h"
@@ -24,7 +25,7 @@ static int rockchip_fbdev_mmap(struct fb_info *info,
 	struct drm_fb_helper *helper = info->par;
 	struct rockchip_drm_private *private = to_drm_private(helper);
 
-	return rockchip_gem_mmap_buf(private->fbdev_bo, vma);
+	return drm_gem_prime_mmap(private->fbdev_bo, vma);
 }
 
 static const struct fb_ops rockchip_drm_fbdev_ops = {
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
index 7971f57436dd..63eb73b624aa 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
@@ -240,12 +240,22 @@ static int rockchip_drm_gem_object_mmap(struct drm_gem_object *obj,
 	int ret;
 	struct rockchip_gem_object *rk_obj = to_rockchip_obj(obj);
 
+	/*
+	 * Set vm_pgoff (used as a fake buffer offset by DRM) to 0 and map the
+	 * whole buffer from the start.
+	 */
+	vma->vm_pgoff = 0;
+
 	/*
 	 * We allocated a struct page table for rk_obj, so clear
 	 * VM_PFNMAP flag that was set by drm_gem_mmap_obj()/drm_gem_mmap().
 	 */
+	vma->vm_flags |= VM_IO | VM_DONTEXPAND | VM_DONTDUMP;
 	vma->vm_flags &= ~VM_PFNMAP;
 
+	vma->vm_page_prot = pgprot_writecombine(vm_get_page_prot(vma->vm_flags));
+	vma->vm_page_prot = pgprot_decrypted(vma->vm_page_prot);
+
 	if (rk_obj->pages)
 		ret = rockchip_drm_gem_object_mmap_iommu(obj, vma);
 	else
@@ -257,39 +267,6 @@ static int rockchip_drm_gem_object_mmap(struct drm_gem_object *obj,
 	return ret;
 }
 
-int rockchip_gem_mmap_buf(struct drm_gem_object *obj,
-			  struct vm_area_struct *vma)
-{
-	int ret;
-
-	ret = drm_gem_mmap_obj(obj, obj->size, vma);
-	if (ret)
-		return ret;
-
-	return rockchip_drm_gem_object_mmap(obj, vma);
-}
-
-/* drm driver mmap file operations */
-int rockchip_gem_mmap(struct file *filp, struct vm_area_struct *vma)
-{
-	struct drm_gem_object *obj;
-	int ret;
-
-	ret = drm_gem_mmap(filp, vma);
-	if (ret)
-		return ret;
-
-	/*
-	 * Set vm_pgoff (used as a fake buffer offset by DRM) to 0 and map the
-	 * whole buffer from the start.
-	 */
-	vma->vm_pgoff = 0;
-
-	obj = vma->vm_private_data;
-
-	return rockchip_drm_gem_object_mmap(obj, vma);
-}
-
 static void rockchip_gem_release_object(struct rockchip_gem_object *rk_obj)
 {
 	drm_gem_object_release(&rk_obj->base);
@@ -301,6 +278,7 @@ static const struct drm_gem_object_funcs rockchip_gem_object_funcs = {
 	.get_sg_table = rockchip_gem_prime_get_sg_table,
 	.vmap = rockchip_gem_prime_vmap,
 	.vunmap	= rockchip_gem_prime_vunmap,
+	.mmap = rockchip_drm_gem_object_mmap,
 	.vm_ops = &drm_gem_cma_vm_ops,
 };
 
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.h b/drivers/gpu/drm/rockchip/rockchip_drm_gem.h
index 5a70a56cd406..47c1861eece0 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.h
@@ -34,13 +34,6 @@ rockchip_gem_prime_import_sg_table(struct drm_device *dev,
 int rockchip_gem_prime_vmap(struct drm_gem_object *obj, struct dma_buf_map *map);
 void rockchip_gem_prime_vunmap(struct drm_gem_object *obj, struct dma_buf_map *map);
 
-/* drm driver mmap file operations */
-int rockchip_gem_mmap(struct file *filp, struct vm_area_struct *vma);
-
-/* mmap a gem object to userspace. */
-int rockchip_gem_mmap_buf(struct drm_gem_object *obj,
-			  struct vm_area_struct *vma);
-
 struct rockchip_gem_object *
 	rockchip_gem_create_object(struct drm_device *drm, unsigned int size,
 				   bool alloc_kmap);
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
