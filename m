Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B5ACC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Oct 2022 18:13:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0Dy+urkTEqMPyuZjALu1hZcXavLL4HZVtCDuJ5ih/Tk=; b=a5p9jX3WvuJh1a
	CZmYOXY1R7ow8FLHUtmfCKBuT69VFn2cJHPswDv6DpqAgXCqFgJJ1LhSfWxv/nNupNusd0vLK7LQX
	YHXriLF6uVK5hSACfBdEO589/F22I5qnqcW7o8cAdRjWfD/h0COjVfNmkBqszQRh61vK0JvpBvAnq
	o2HDtb47/JrzyLxbmeNVmVxNLwUd/IUz0bghnb0pxoYWx5tn4+WTwzLtSi3Y9WcUB6lPIZNmoxtl4
	VJoc4rN9oZUQfIPgTn43w3b2HM7RTc14Y+Ivq/fW/WIzUu0bJuaO85jD4yyEriURAObIm1xvPbXU1
	vxI5D+JRWOoeyCutZdSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ola2h-00143C-Bf; Thu, 20 Oct 2022 18:13:19 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ola2W-0013ym-9h; Thu, 20 Oct 2022 18:13:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=metanate.com; s=stronger; h=Content-Transfer-Encoding:Message-Id:Date:
	Subject:Cc:To:From:Content-Type:Reply-To:Content-ID:Content-Description:
	In-Reply-To:References; bh=KdHqm/l66j6BWqUls9UaxFTsEolEqNPGfBkODMbr/GA=; b=Sv
	nNrY/A/9z+07NdZbX/h5lHzCRWSVw2LllsAYQ7NTYjUEyc6dQokA+2UwXMOf84QjssYBe+LdN5WrA
	1E+Qmxio2VQqwJbL6k3j0z5pAGMF8+oor9uvvWUOtvTugP5eIw3rnfbF3q7bWi9mZi2GZYiq4vYi7
	pB9wCXsQUK6EmSNKSoQ45FzhFrJ48fiDlduzZrWGZEuD9j0vleJfN/QQKTzZYMrFoeVxUD10V2eT/
	l9y3MuLU6ywQ9oLAEhSzPI7F9LIa/lP6xzDGDjlI7xVer+E4jPwkB/R6ImWStlIbwYEwdKwdLqukk
	wovhcKowstPQZZxPyNveoPXXvjH+JfRA==;
Received: from [81.174.171.191] (helo=donbot.metanate.com)
	by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <john@metanate.com>)
	id 1ola2F-0002sk-Tt;
	Thu, 20 Oct 2022 19:12:53 +0100
From: John Keeping <john@metanate.com>
To: dri-devel@lists.freedesktop.org
Cc: Johan Jonker <jbx6244@gmail.com>,
	John Keeping <john@metanate.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] drm/rockchip: fix fbdev on non-IOMMU devices
Date: Thu, 20 Oct 2022 19:12:47 +0100
Message-Id: <20221020181248.2497065-1-john@metanate.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_111308_351245_42877D16 
X-CRM114-Status: GOOD (  13.57  )
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

When switching to the generic fbdev infrastructure, it was missed that
framebuffers were created with the alloc_kmap parameter to
rockchip_gem_create_object() set to true.  The generic infrastructure
calls this via the .dumb_create() driver operation and thus creates a
buffer without an associated kmap.

alloc_kmap only makes a difference on devices without an IOMMU, but when
it is missing rockchip_gem_prime_vmap() fails and the framebuffer cannot
be used.

Detect the case where a buffer is being allocated for the framebuffer
and ensure a kernel mapping is created in this case.

Fixes: 24af7c34b290 ("drm/rockchip: use generic fbdev setup")
Reported-by: Johan Jonker <jbx6244@gmail.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Signed-off-by: John Keeping <john@metanate.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
index 614e97aaac80..da8a69953706 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
@@ -364,9 +364,12 @@ rockchip_gem_create_with_handle(struct drm_file *file_priv,
 {
 	struct rockchip_gem_object *rk_obj;
 	struct drm_gem_object *obj;
+	bool is_framebuffer;
 	int ret;
 
-	rk_obj = rockchip_gem_create_object(drm, size, false);
+	is_framebuffer = drm->fb_helper && file_priv == drm->fb_helper->client.file;
+
+	rk_obj = rockchip_gem_create_object(drm, size, is_framebuffer);
 	if (IS_ERR(rk_obj))
 		return ERR_CAST(rk_obj);
 
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
