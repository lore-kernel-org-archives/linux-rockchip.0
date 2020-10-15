Return-Path: <SRS0=vwyG=DW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB8EC433DF
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2020 12:39:14 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0733B22254
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2020 12:39:13 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="IrXiSgpf"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0733B22254
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WDWc8DW0IwEBeS7YlPNP9sbCl9gOnjmYRspRufzLpKI=; b=IrXiSgpfcxvr8sgFwFKv2zgVs
	vz4FuPL5O1Jn2Yee2qjxmhs/nwpOJI507d9KvUnxXokfffjtdfsyP0jrsWAIB5aYe3TCV+u7slNqY
	SAJJ5RmatzX2AazCVmhenrGItHfwcwKfPnOfJazmaU8cdbzamJOY/r6ULFPpoGGG4PjedglqumhVV
	qpiBu4eROBf5bhpM7hG7YqDCea3ZU/a15Wz0PEpcq8Dqwr5yOpcbM1X3ldgkoWfGGuRJ3Z93mEqHw
	NCCa9gK21N1JgB2/u1SPHV1N9Fl4NBSyUsnGeKFc9Mx70eIyEDi7gSeCw4MhTDymSwbk+9n5/Tn1k
	Hf9qaDjCg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kT2XE-0008Bq-2N; Thu, 15 Oct 2020 12:39:08 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kT2WR-0007l9-8M; Thu, 15 Oct 2020 12:38:29 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 8804EB1AD;
 Thu, 15 Oct 2020 12:38:17 +0000 (UTC)
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
Subject: [PATCH v4 10/10] drm/fb_helper: Support framebuffers in I/O memory
Date: Thu, 15 Oct 2020 14:38:06 +0200
Message-Id: <20201015123806.32416-11-tzimmermann@suse.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201015123806.32416-1-tzimmermann@suse.de>
References: <20201015123806.32416-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201015_083819_577744_241217D8 
X-CRM114-Status: GOOD (  27.00  )
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

At least sparc64 requires I/O-specific access to framebuffers. This
patch updates the fbdev console accordingly.

For drivers with direct access to the framebuffer memory, the callback
functions in struct fb_ops test for the type of memory and call the rsp
fb_sys_ of fb_cfb_ functions.

For drivers that employ a shadow buffer, fbdev's blit function retrieves
the framebuffer address as struct dma_buf_map, and uses dma_buf_map
interfaces to access the buffer.

The bochs driver on sparc64 uses a workaround to flag the framebuffer as
I/O memory and avoid a HW exception. With the introduction of struct
dma_buf_map, this is not required any longer. The patch removes the rsp
code from both, bochs and fbdev.

v4:
	* move dma_buf_map changes into separate patch (Daniel)
	* TODO list: comment on fbdev updates (Daniel)

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
---
 Documentation/gpu/todo.rst        |  19 ++-
 drivers/gpu/drm/bochs/bochs_kms.c |   1 -
 drivers/gpu/drm/drm_fb_helper.c   | 217 ++++++++++++++++++++++++++++--
 include/drm/drm_mode_config.h     |  12 --
 4 files changed, 220 insertions(+), 29 deletions(-)

diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
index 7e6fc3c04add..638b7f704339 100644
--- a/Documentation/gpu/todo.rst
+++ b/Documentation/gpu/todo.rst
@@ -197,13 +197,28 @@ Convert drivers to use drm_fbdev_generic_setup()
 ------------------------------------------------
 
 Most drivers can use drm_fbdev_generic_setup(). Driver have to implement
-atomic modesetting and GEM vmap support. Current generic fbdev emulation
-expects the framebuffer in system memory (or system-like memory).
+atomic modesetting and GEM vmap support. Historically, generic fbdev emulation
+expected the framebuffer in system memory or system-like memory. By employing
+struct dma_buf_map, drivers with frambuffers in I/O memory can be supported
+as well.
 
 Contact: Maintainer of the driver you plan to convert
 
 Level: Intermediate
 
+Reimplement functions in drm_fbdev_fb_ops without fbdev
+-------------------------------------------------------
+
+A number of callback functions in drm_fbdev_fb_ops could benefit from
+being rewritten without dependencies on the fbdev module. Some of the
+helpers could further benefit from using struct dma_buf_map instead of
+raw pointers.
+
+Contact: Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter
+
+Level: Advanced
+
+
 drm_framebuffer_funcs and drm_mode_config_funcs.fb_create cleanup
 -----------------------------------------------------------------
 
diff --git a/drivers/gpu/drm/bochs/bochs_kms.c b/drivers/gpu/drm/bochs/bochs_kms.c
index 13d0d04c4457..853081d186d5 100644
--- a/drivers/gpu/drm/bochs/bochs_kms.c
+++ b/drivers/gpu/drm/bochs/bochs_kms.c
@@ -151,7 +151,6 @@ int bochs_kms_init(struct bochs_device *bochs)
 	bochs->dev->mode_config.preferred_depth = 24;
 	bochs->dev->mode_config.prefer_shadow = 0;
 	bochs->dev->mode_config.prefer_shadow_fbdev = 1;
-	bochs->dev->mode_config.fbdev_use_iomem = true;
 	bochs->dev->mode_config.quirk_addfb_prefer_host_byte_order = true;
 
 	bochs->dev->mode_config.funcs = &bochs_mode_funcs;
diff --git a/drivers/gpu/drm/drm_fb_helper.c b/drivers/gpu/drm/drm_fb_helper.c
index 6212cd7cde1d..462b0c130ebb 100644
--- a/drivers/gpu/drm/drm_fb_helper.c
+++ b/drivers/gpu/drm/drm_fb_helper.c
@@ -372,24 +372,22 @@ static void drm_fb_helper_resume_worker(struct work_struct *work)
 }
 
 static void drm_fb_helper_dirty_blit_real(struct drm_fb_helper *fb_helper,
-					  struct drm_clip_rect *clip)
+					  struct drm_clip_rect *clip,
+					  struct dma_buf_map *dst)
 {
 	struct drm_framebuffer *fb = fb_helper->fb;
 	unsigned int cpp = fb->format->cpp[0];
 	size_t offset = clip->y1 * fb->pitches[0] + clip->x1 * cpp;
 	void *src = fb_helper->fbdev->screen_buffer + offset;
-	void *dst = fb_helper->buffer->map.vaddr + offset;
 	size_t len = (clip->x2 - clip->x1) * cpp;
 	unsigned int y;
 
-	for (y = clip->y1; y < clip->y2; y++) {
-		if (!fb_helper->dev->mode_config.fbdev_use_iomem)
-			memcpy(dst, src, len);
-		else
-			memcpy_toio((void __iomem *)dst, src, len);
+	dma_buf_map_incr(dst, offset); /* go to first pixel within clip rect */
 
+	for (y = clip->y1; y < clip->y2; y++) {
+		dma_buf_map_memcpy_to(dst, src, len);
+		dma_buf_map_incr(dst, fb->pitches[0]);
 		src += fb->pitches[0];
-		dst += fb->pitches[0];
 	}
 }
 
@@ -417,8 +415,9 @@ static void drm_fb_helper_dirty_work(struct work_struct *work)
 			ret = drm_client_buffer_vmap(helper->buffer, &map);
 			if (ret)
 				return;
-			drm_fb_helper_dirty_blit_real(helper, &clip_copy);
+			drm_fb_helper_dirty_blit_real(helper, &clip_copy, &map);
 		}
+
 		if (helper->fb->funcs->dirty)
 			helper->fb->funcs->dirty(helper->fb, NULL, 0, 0,
 						 &clip_copy, 1);
@@ -755,6 +754,136 @@ void drm_fb_helper_sys_imageblit(struct fb_info *info,
 }
 EXPORT_SYMBOL(drm_fb_helper_sys_imageblit);
 
+static ssize_t drm_fb_helper_cfb_read(struct fb_info *info, char __user *buf,
+				      size_t count, loff_t *ppos)
+{
+	unsigned long p = *ppos;
+	u8 *dst;
+	u8 __iomem *src;
+	int c, err = 0;
+	unsigned long total_size;
+	unsigned long alloc_size;
+	ssize_t ret = 0;
+
+	if (info->state != FBINFO_STATE_RUNNING)
+		return -EPERM;
+
+	total_size = info->screen_size;
+
+	if (total_size == 0)
+		total_size = info->fix.smem_len;
+
+	if (p >= total_size)
+		return 0;
+
+	if (count >= total_size)
+		count = total_size;
+
+	if (count + p > total_size)
+		count = total_size - p;
+
+	src = (u8 __iomem *)(info->screen_base + p);
+
+	alloc_size = min(count, PAGE_SIZE);
+
+	dst = kmalloc(alloc_size, GFP_KERNEL);
+	if (!dst)
+		return -ENOMEM;
+
+	while (count) {
+		c = min(count, alloc_size);
+
+		memcpy_fromio(dst, src, c);
+		if (copy_to_user(buf, dst, c)) {
+			err = -EFAULT;
+			break;
+		}
+
+		src += c;
+		*ppos += c;
+		buf += c;
+		ret += c;
+		count -= c;
+	}
+
+	kfree(dst);
+
+	if (err)
+		return err;
+
+	return ret;
+}
+
+static ssize_t drm_fb_helper_cfb_write(struct fb_info *info, const char __user *buf,
+				       size_t count, loff_t *ppos)
+{
+	unsigned long p = *ppos;
+	u8 *src;
+	u8 __iomem *dst;
+	int c, err = 0;
+	unsigned long total_size;
+	unsigned long alloc_size;
+	ssize_t ret = 0;
+
+	if (info->state != FBINFO_STATE_RUNNING)
+		return -EPERM;
+
+	total_size = info->screen_size;
+
+	if (total_size == 0)
+		total_size = info->fix.smem_len;
+
+	if (p > total_size)
+		return -EFBIG;
+
+	if (count > total_size) {
+		err = -EFBIG;
+		count = total_size;
+	}
+
+	if (count + p > total_size) {
+		/*
+		 * The framebuffer is too small. We do the
+		 * copy operation, but return an error code
+		 * afterwards. Taken from fbdev.
+		 */
+		if (!err)
+			err = -ENOSPC;
+		count = total_size - p;
+	}
+
+	alloc_size = min(count, PAGE_SIZE);
+
+	src = kmalloc(alloc_size, GFP_KERNEL);
+	if (!src)
+		return -ENOMEM;
+
+	dst = (u8 __iomem *)(info->screen_base + p);
+
+	while (count) {
+		c = min(count, alloc_size);
+
+		if (copy_from_user(src, buf, c)) {
+			err = -EFAULT;
+			break;
+		}
+		memcpy_toio(dst, src, c);
+
+		dst += c;
+		*ppos += c;
+		buf += c;
+		ret += c;
+		count -= c;
+	}
+
+	kfree(src);
+
+	if (err)
+		return err;
+
+	return ret;
+}
+
 /**
  * drm_fb_helper_cfb_fillrect - wrapper around cfb_fillrect
  * @info: fbdev registered by the helper
@@ -2027,6 +2156,66 @@ static int drm_fbdev_fb_mmap(struct fb_info *info, struct vm_area_struct *vma)
 		return -ENODEV;
 }
 
+static ssize_t drm_fbdev_fb_read(struct fb_info *info, char __user *buf,
+				 size_t count, loff_t *ppos)
+{
+	struct drm_fb_helper *fb_helper = info->par;
+	struct drm_client_buffer *buffer = fb_helper->buffer;
+
+	if (drm_fbdev_use_shadow_fb(fb_helper) || !buffer->map.is_iomem)
+		return drm_fb_helper_sys_read(info, buf, count, ppos);
+	else
+		return drm_fb_helper_cfb_read(info, buf, count, ppos);
+}
+
+static ssize_t drm_fbdev_fb_write(struct fb_info *info, const char __user *buf,
+				  size_t count, loff_t *ppos)
+{
+	struct drm_fb_helper *fb_helper = info->par;
+	struct drm_client_buffer *buffer = fb_helper->buffer;
+
+	if (drm_fbdev_use_shadow_fb(fb_helper) || !buffer->map.is_iomem)
+		return drm_fb_helper_sys_write(info, buf, count, ppos);
+	else
+		return drm_fb_helper_cfb_write(info, buf, count, ppos);
+}
+
+static void drm_fbdev_fb_fillrect(struct fb_info *info,
+				  const struct fb_fillrect *rect)
+{
+	struct drm_fb_helper *fb_helper = info->par;
+	struct drm_client_buffer *buffer = fb_helper->buffer;
+
+	if (drm_fbdev_use_shadow_fb(fb_helper) || !buffer->map.is_iomem)
+		drm_fb_helper_sys_fillrect(info, rect);
+	else
+		drm_fb_helper_cfb_fillrect(info, rect);
+}
+
+static void drm_fbdev_fb_copyarea(struct fb_info *info,
+				  const struct fb_copyarea *area)
+{
+	struct drm_fb_helper *fb_helper = info->par;
+	struct drm_client_buffer *buffer = fb_helper->buffer;
+
+	if (drm_fbdev_use_shadow_fb(fb_helper) || !buffer->map.is_iomem)
+		drm_fb_helper_sys_copyarea(info, area);
+	else
+		drm_fb_helper_cfb_copyarea(info, area);
+}
+
+static void drm_fbdev_fb_imageblit(struct fb_info *info,
+				   const struct fb_image *image)
+{
+	struct drm_fb_helper *fb_helper = info->par;
+	struct drm_client_buffer *buffer = fb_helper->buffer;
+
+	if (drm_fbdev_use_shadow_fb(fb_helper) || !buffer->map.is_iomem)
+		drm_fb_helper_sys_imageblit(info, image);
+	else
+		drm_fb_helper_cfb_imageblit(info, image);
+}
+
 static const struct fb_ops drm_fbdev_fb_ops = {
 	.owner		= THIS_MODULE,
 	DRM_FB_HELPER_DEFAULT_OPS,
@@ -2034,11 +2223,11 @@ static const struct fb_ops drm_fbdev_fb_ops = {
 	.fb_release	= drm_fbdev_fb_release,
 	.fb_destroy	= drm_fbdev_fb_destroy,
 	.fb_mmap	= drm_fbdev_fb_mmap,
-	.fb_read	= drm_fb_helper_sys_read,
-	.fb_write	= drm_fb_helper_sys_write,
-	.fb_fillrect	= drm_fb_helper_sys_fillrect,
-	.fb_copyarea	= drm_fb_helper_sys_copyarea,
-	.fb_imageblit	= drm_fb_helper_sys_imageblit,
+	.fb_read	= drm_fbdev_fb_read,
+	.fb_write	= drm_fbdev_fb_write,
+	.fb_fillrect	= drm_fbdev_fb_fillrect,
+	.fb_copyarea	= drm_fbdev_fb_copyarea,
+	.fb_imageblit	= drm_fbdev_fb_imageblit,
 };
 
 static struct fb_deferred_io drm_fbdev_defio = {
diff --git a/include/drm/drm_mode_config.h b/include/drm/drm_mode_config.h
index 5ffbb4ed5b35..ab424ddd7665 100644
--- a/include/drm/drm_mode_config.h
+++ b/include/drm/drm_mode_config.h
@@ -877,18 +877,6 @@ struct drm_mode_config {
 	 */
 	bool prefer_shadow_fbdev;
 
-	/**
-	 * @fbdev_use_iomem:
-	 *
-	 * Set to true if framebuffer reside in iomem.
-	 * When set to true memcpy_toio() is used when copying the framebuffer in
-	 * drm_fb_helper.drm_fb_helper_dirty_blit_real().
-	 *
-	 * FIXME: This should be replaced with a per-mapping is_iomem
-	 * flag (like ttm does), and then used everywhere in fbdev code.
-	 */
-	bool fbdev_use_iomem;
-
 	/**
 	 * @quirk_addfb_prefer_xbgr_30bpp:
 	 *
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
