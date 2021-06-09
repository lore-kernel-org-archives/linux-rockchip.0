Return-Path: <SRS0=4kB8=LD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 323C9C48BD1
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Jun 2021 11:31:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F25AD61364
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Jun 2021 11:31:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F25AD61364
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/j+/xHTtZI5YIJAJC1EStzlekBYXcI+ZKCnqx+510FQ=; b=l4jZHOk3e3LQXw
	mbz03zwfWkujiAgrOVTs938V5V5fL3n/aSUYnj5TTkb0Un37vyRl5idiZ0Mt1Zx0Olmn9dl5eNlY9
	sQJglE8EB76HJX1fM+GvQ4bz6AP+7nTQcpEPUHla6quN56fPGR7SmOKjxK5HqR1qhwEvNtGwCrWGe
	iKfAh1mkXCV0CDbVQ6SQ0XcByxgsOBte1rSMwP/wkdHSxabm9tDjwOCgoAkXV9q6mW60+yVJ1ZcyU
	t1t79Etl/jYSoGARXvjzG78VjpvRxL8gZtixIebG1V/064v5G4RINHaky/iPOc/QXpTlzOZQMRvy3
	A65dgLc566QMEWNL42Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqwQu-00DL9i-Pr; Wed, 09 Jun 2021 11:31:40 +0000
Received: from smtp-out1.suse.de ([195.135.220.28])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqwFv-00DHGs-Gc; Wed, 09 Jun 2021 11:20:22 +0000
Received: from imap.suse.de (imap-alt.suse-dmz.suse.de [192.168.254.47])
 (using TLSv1.2 with cipher ECDHE-ECDSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 1EEE2219DE;
 Wed,  9 Jun 2021 11:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1623237618; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IRUa/mvyWAtsipKLLVmWT7cpX13C9nTjn7UKOIQtpok=;
 b=Qqr+wxRHDfcailoytXEx2oS2lcd/30JrzOhkpalX061VmVUSrdLwmnhSN0MtbG7SF3Lswx
 sQnQ8cPp3QB4PF/l8crVWeS09RmiLZkfgwuhMYtcPRnrUahhNxSrscRyW90luzSwv3G0CF
 7A0GUIi66rqUX0OkNYcpsZIV/8EwyQU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1623237618;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IRUa/mvyWAtsipKLLVmWT7cpX13C9nTjn7UKOIQtpok=;
 b=EYZQ1fZ4GiUePdUKfwvu3c7uANqrcaYHVRwXY+xLr2rs0MZBPp9J/4r/U+gB27YIyBmPIF
 iyt7y2F2VM4VApDw==
Received: from imap3-int (imap-alt.suse-dmz.suse.de [192.168.254.47])
 by imap.suse.de (Postfix) with ESMTP id 77538118DD;
 Wed,  9 Jun 2021 11:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1623237618; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IRUa/mvyWAtsipKLLVmWT7cpX13C9nTjn7UKOIQtpok=;
 b=Qqr+wxRHDfcailoytXEx2oS2lcd/30JrzOhkpalX061VmVUSrdLwmnhSN0MtbG7SF3Lswx
 sQnQ8cPp3QB4PF/l8crVWeS09RmiLZkfgwuhMYtcPRnrUahhNxSrscRyW90luzSwv3G0CF
 7A0GUIi66rqUX0OkNYcpsZIV/8EwyQU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1623237618;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IRUa/mvyWAtsipKLLVmWT7cpX13C9nTjn7UKOIQtpok=;
 b=EYZQ1fZ4GiUePdUKfwvu3c7uANqrcaYHVRwXY+xLr2rs0MZBPp9J/4r/U+gB27YIyBmPIF
 iyt7y2F2VM4VApDw==
Received: from director2.suse.de ([192.168.254.72]) by imap3-int with ESMTPSA
 id 4KVTHPGjwGBTUgAALh3uQQ
 (envelope-from <tzimmermann@suse.de>); Wed, 09 Jun 2021 11:20:17 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: daniel@ffwll.ch, mripard@kernel.org, maarten.lankhorst@linux.intel.com,
 l.stach@pengutronix.de, linux+etnaviv@armlinux.org.uk,
 christian.gmeiner@gmail.com, inki.dae@samsung.com, jy0922.shim@samsung.com,
 sw0312.kim@samsung.com, kyungmin.park@samsung.com,
 krzysztof.kozlowski@canonical.com, chunkuang.hu@kernel.org,
 p.zabel@pengutronix.de, matthias.bgg@gmail.com, robdclark@gmail.com,
 sean@poorly.run, airlied@redhat.com, kraxel@redhat.com, hjc@rock-chips.com,
 heiko@sntech.de, oleksandr_andrushchenko@epam.com, sumit.semwal@linaro.org,
 christian.koenig@amd.com
Cc: dri-devel@lists.freedesktop.org, etnaviv@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 spice-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 xen-devel@lists.xenproject.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH 6/9] drm/vgem: Implement mmap as GEM object function
Date: Wed,  9 Jun 2021 13:20:09 +0200
Message-Id: <20210609112012.10019-7-tzimmermann@suse.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609112012.10019-1-tzimmermann@suse.de>
References: <20210609112012.10019-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210609_042019_756736_1A62F9FF 
X-CRM114-Status: GOOD (  13.66  )
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

The respective vgem functions are being removed. The file_operations
structure vgem_driver_fops is now being created by the helper macro
DEFINE_DRM_GEM_FOPS().

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
---
 drivers/gpu/drm/vgem/vgem_drv.c | 46 ++++-----------------------------
 1 file changed, 5 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/vgem/vgem_drv.c b/drivers/gpu/drm/vgem/vgem_drv.c
index bf38a7e319d1..df634aa52638 100644
--- a/drivers/gpu/drm/vgem/vgem_drv.c
+++ b/drivers/gpu/drm/vgem/vgem_drv.c
@@ -239,32 +239,7 @@ static struct drm_ioctl_desc vgem_ioctls[] = {
 	DRM_IOCTL_DEF_DRV(VGEM_FENCE_SIGNAL, vgem_fence_signal_ioctl, DRM_RENDER_ALLOW),
 };
 
-static int vgem_mmap(struct file *filp, struct vm_area_struct *vma)
-{
-	unsigned long flags = vma->vm_flags;
-	int ret;
-
-	ret = drm_gem_mmap(filp, vma);
-	if (ret)
-		return ret;
-
-	/* Keep the WC mmaping set by drm_gem_mmap() but our pages
-	 * are ordinary and not special.
-	 */
-	vma->vm_flags = flags | VM_DONTEXPAND | VM_DONTDUMP;
-	return 0;
-}
-
-static const struct file_operations vgem_driver_fops = {
-	.owner		= THIS_MODULE,
-	.open		= drm_open,
-	.mmap		= vgem_mmap,
-	.poll		= drm_poll,
-	.read		= drm_read,
-	.unlocked_ioctl = drm_ioctl,
-	.compat_ioctl	= drm_compat_ioctl,
-	.release	= drm_release,
-};
+DEFINE_DRM_GEM_FOPS(vgem_driver_fops);
 
 static struct page **vgem_pin_pages(struct drm_vgem_gem_object *bo)
 {
@@ -387,24 +362,12 @@ static void vgem_prime_vunmap(struct drm_gem_object *obj, struct dma_buf_map *ma
 	vgem_unpin_pages(bo);
 }
 
-static int vgem_prime_mmap(struct drm_gem_object *obj,
-			   struct vm_area_struct *vma)
+static int vgem_prime_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma)
 {
-	int ret;
-
-	if (obj->size < vma->vm_end - vma->vm_start)
-		return -EINVAL;
-
-	if (!obj->filp)
-		return -ENODEV;
-
-	ret = call_mmap(obj->filp, vma);
-	if (ret)
-		return ret;
-
 	vma_set_file(vma, obj->filp);
 	vma->vm_flags |= VM_DONTEXPAND | VM_DONTDUMP;
 	vma->vm_page_prot = pgprot_writecombine(vm_get_page_prot(vma->vm_flags));
+	vma->vm_page_prot = pgprot_decrypted(vma->vm_page_prot);
 
 	return 0;
 }
@@ -416,6 +379,7 @@ static const struct drm_gem_object_funcs vgem_gem_object_funcs = {
 	.get_sg_table = vgem_prime_get_sg_table,
 	.vmap = vgem_prime_vmap,
 	.vunmap = vgem_prime_vunmap,
+	.mmap = vgem_prime_mmap,
 	.vm_ops = &vgem_gem_vm_ops,
 };
 
@@ -433,7 +397,7 @@ static const struct drm_driver vgem_driver = {
 	.prime_fd_to_handle = drm_gem_prime_fd_to_handle,
 	.gem_prime_import = vgem_prime_import,
 	.gem_prime_import_sg_table = vgem_prime_import_sg_table,
-	.gem_prime_mmap = vgem_prime_mmap,
+	.gem_prime_mmap = drm_gem_prime_mmap,
 
 	.name	= DRIVER_NAME,
 	.desc	= DRIVER_DESC,
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
