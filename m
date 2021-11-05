Return-Path: <SRS0=A0J0=PY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 107FAC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 08:33:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4DBCA60232
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 08:33:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4DBCA60232
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wc3cOBhEq6uytw3fZc3BkjFEQve37Tysx1Y3upgO4AQ=; b=VO615z05FG57qN
	KcdU4AuAlfjNpwpBlZDPrMVhpHNcAqkuwcbaBX8M7DJMC3EsAEXb3E+YBQPZxrmh5g+/nVmkcDvcF
	aMCpxssNCFom/Ep1LAxz/luX6XYjAP+qAjV6M9uwXh3sLHpiHmf6kCeiJFFeV4U/F2KDJ69fEzHkn
	mMq3uyVW1Z2ETk/q41J9SU2IiAUpOu4CPE2tDbx6XYrSHGzonUfWEKypRab8U20U4F6zLu7Sc0ySv
	GbnDwcKN1KGWmDDsx56vFcw3JMlb7FA2acEsm5Jv3mF31d6iivMhAY6I55dVCGT404boGgcBKCw7a
	CmUeZztuzZCrh/Iktytg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miuf9-00Asmk-0C; Fri, 05 Nov 2021 08:33:27 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miuf5-00Aslz-DH
 for linux-rockchip@lists.infradead.org; Fri, 05 Nov 2021 08:33:25 +0000
Received: from localhost (unknown [192.168.167.70])
 by lucky1.263xmail.com (Postfix) with ESMTP id AF940D1250;
 Fri,  5 Nov 2021 16:33:11 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P31296T140158673274624S1636101189603309_; 
 Fri, 05 Nov 2021 16:33:11 +0800 (CST)
X-IP-DOMAINF: 1
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: maarten.lankhorst@linux.intel.com
X-RCPT-COUNT: 14
X-LOCAL-RCPT-COUNT: 2
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-UNIQUE-TAG: <b0618e41130f8db6484a6eaac288d033>
X-System-Flag: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@linux.ie, daniel@ffwll.ch, sumit.semwal@linaro.org,
 christian.koenig@amd.com
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 linux-rockchip@lists.infradead.org, jay.xu@rock-chips.com,
 andy.yan@rock-chips.com
Subject: [PATCH] drm/prime/gem: drm_gem_object_release_handle by handle
Date: Fri,  5 Nov 2021 16:33:08 +0800
Message-Id: <20211105083308.392156-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211105_013323_827060_2D493788 
X-CRM114-Status: GOOD (  15.72  )
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

The drm_gem_handle_delete is called by DRM_IOCTL_GEM_CLOSE from
userspace.

drm_gem_handle_delete(handle)
  drm_gem_object_release_handle(handle)
    drm_gem_remove_prime_handles()
	drm_prime_remove_buf_handle_locked()
	  if (member->dma_buf == dma_buf)
	    free member
	    return

The api description of drm_gem_handle_delete says to delete the given
file-private handle.

But the drm_gem_remove_prime_handles seems to remove *handles* from
rbtree of drm file-private structure.

And then the drm_gem_remove_prime_handles only remove the first handle
lookuped from rbtree, as following codes:

	rb = prime_fpriv->dmabufs.rb_node;
	while (rb) {
		struct drm_prime_member *member;

		member = rb_entry(rb, struct drm_prime_member, dmabuf_rb);
		if (member->dma_buf == dma_buf) {
			rb_erase(&member->handle_rb, &prime_fpriv->handles);
			rb_erase(&member->dmabuf_rb, &prime_fpriv->dmabufs);

			dma_buf_put(dma_buf);
			kfree(member);
			return;
		}

This patch fixes to remove the rbtree member by given handle.

Test

handle_1 = drm_alloc(1MB)
fd_1     = drm_handle_to_fd(handle_1)
name_1   = drm get flink name from handle(handle_1)        // DRM_IOCTL_GEM_FLINK

handle_2 = drm get handle,size_2 from flink name(name_1)   // DRM_IOCTL_GEM_OPEN
fd_2     = drm_handle_to_fd(handle_2)

handle_3 = drm get handle,size_3 from flink name(name_1)   // DRM_IOCTL_GEM_OPEN
fd_3     = drm_handle_to_fd(handle_3)

drm close handle(handle_3) // DRM_IOCTL_GEM_CLOSE

handle_4 = drm_alloc(4MB)
fd_4     = drm_handle_to_fd(handle_4)

We find that the fd_4 dmabuf size is 1MB. Tested by following:

handle_5 = drm_fd_to_handle(fd_4)
name_5   = drm get flink name from handle(handle_5)        // DRM_IOCTL_GEM_FLINK
handle_3 = drm get handle,size_5 from flink name(name_5)   // DRM_IOCTL_GEM_OPEN

Without this patch, the size_5 = 1MB
With this patch, the size_5 = 4MB

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/gpu/drm/drm_gem.c      | 7 ++++---
 drivers/gpu/drm/drm_internal.h | 2 +-
 drivers/gpu/drm/drm_prime.c    | 4 ++--
 3 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
index 09c820045859..bfa5637f54d2 100644
--- a/drivers/gpu/drm/drm_gem.c
+++ b/drivers/gpu/drm/drm_gem.c
@@ -168,7 +168,8 @@ void drm_gem_private_object_init(struct drm_device *dev,
 EXPORT_SYMBOL(drm_gem_private_object_init);
 
 static void
-drm_gem_remove_prime_handles(struct drm_gem_object *obj, struct drm_file *filp)
+drm_gem_remove_prime_handle(struct drm_gem_object *obj, struct drm_file *filp,
+			    int handle)
 {
 	/*
 	 * Note: obj->dma_buf can't disappear as long as we still hold a
@@ -177,7 +178,7 @@ drm_gem_remove_prime_handles(struct drm_gem_object *obj, struct drm_file *filp)
 	mutex_lock(&filp->prime.lock);
 	if (obj->dma_buf) {
 		drm_prime_remove_buf_handle_locked(&filp->prime,
-						   obj->dma_buf);
+						   obj->dma_buf, handle);
 	}
 	mutex_unlock(&filp->prime.lock);
 }
@@ -252,7 +253,7 @@ drm_gem_object_release_handle(int id, void *ptr, void *data)
 	if (obj->funcs->close)
 		obj->funcs->close(obj, file_priv);
 
-	drm_gem_remove_prime_handles(obj, file_priv);
+	drm_gem_remove_prime_handle(obj, file_priv, id);
 	drm_vma_node_revoke(&obj->vma_node, file_priv);
 
 	drm_gem_object_handle_put_unlocked(obj);
diff --git a/drivers/gpu/drm/drm_internal.h b/drivers/gpu/drm/drm_internal.h
index 17f3548c8ed2..17c4f6cac21c 100644
--- a/drivers/gpu/drm/drm_internal.h
+++ b/drivers/gpu/drm/drm_internal.h
@@ -75,7 +75,7 @@ int drm_prime_fd_to_handle_ioctl(struct drm_device *dev, void *data,
 void drm_prime_init_file_private(struct drm_prime_file_private *prime_fpriv);
 void drm_prime_destroy_file_private(struct drm_prime_file_private *prime_fpriv);
 void drm_prime_remove_buf_handle_locked(struct drm_prime_file_private *prime_fpriv,
-					struct dma_buf *dma_buf);
+					struct dma_buf *dma_bufi, int handle);
 
 /* drm_drv.c */
 struct drm_minor *drm_minor_acquire(unsigned int minor_id);
diff --git a/drivers/gpu/drm/drm_prime.c b/drivers/gpu/drm/drm_prime.c
index deb23dbec8b5..080476296715 100644
--- a/drivers/gpu/drm/drm_prime.c
+++ b/drivers/gpu/drm/drm_prime.c
@@ -188,7 +188,7 @@ static int drm_prime_lookup_buf_handle(struct drm_prime_file_private *prime_fpri
 }
 
 void drm_prime_remove_buf_handle_locked(struct drm_prime_file_private *prime_fpriv,
-					struct dma_buf *dma_buf)
+					struct dma_buf *dma_buf, int handle)
 {
 	struct rb_node *rb;
 
@@ -197,7 +197,7 @@ void drm_prime_remove_buf_handle_locked(struct drm_prime_file_private *prime_fpr
 		struct drm_prime_member *member;
 
 		member = rb_entry(rb, struct drm_prime_member, dmabuf_rb);
-		if (member->dma_buf == dma_buf) {
+		if ((member->dma_buf == dma_buf) && (member->handle == handle)) {
 			rb_erase(&member->handle_rb, &prime_fpriv->handles);
 			rb_erase(&member->dmabuf_rb, &prime_fpriv->dmabufs);
 
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
