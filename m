Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57765C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Oct 2022 21:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5l0FL5W6JNXOANf7G6rfbbLZmKxfmIiASMKqijCx3DE=; b=PmsgqeM3TqsVc4
	KPzViVcLrmvG9BK8iVnyfcDLEC33dxC8SmA40rrDZxo1kYmRbb7v/P8+w56I8lzxyFgRHKcmyvEky
	tZh0mxt0zJII2FcuFhHdwS/8r9Ak2mGnBNCWhbNqMjpkJxbqJYjrlcqS2/ixBseYgjPX+SJCN93NG
	fm42dHKkX7M1DDwAZfhP1Q1j5a741cuD5svpH4VlfsXjCYvX1/FsFLkDPXS73ryNlYFHDMozFqzq0
	13tk7175kQzAWNre3IoftltQRvda1VOurnBKaB6C9YTGwoEGIlBtoMSEgYykg6bcdCQfWb4I2C5YX
	Mo/VCf889Ki9gxwlJ7AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olGif-005Hfe-Kg; Wed, 19 Oct 2022 21:35:21 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olGiR-005Hcc-Pq; Wed, 19 Oct 2022 21:35:12 +0000
Received: by mail-ed1-x535.google.com with SMTP id e18so27156959edj.3;
        Wed, 19 Oct 2022 14:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yiqpubSSRjqi+xo3Zt6mRBDg4WQe+McsHWUueSRR8rc=;
        b=ZVPAHbECm9m1eYbMBBh9dm9FZ/PRwITiBRs6KLA8kM4fWSiN6WK8hRCLJA3OYDEkrm
         ajNYPk9TcK/15qfelg34GMb1JG5u6n68n4/ipxOk0IqHwLoTULy3Wxv/iqWvsR0oBjjn
         9ynUYvg6TuCuclTLiQ3uctoTFs6UQkUCRuz4qMOV0dMPouTfTaYNqDq+Jywr4gFmAg8x
         dfFIODgyW5KcsvbZyrGeFA9B5ZgfmmxKwD4UQXIZL0owjwst7MYYXyPsbjGMVo8k61DI
         P1ZBdj9Zn38YNki9eyU0x1HVKadKQdTzYQYQtAyyPzIJlQJmxBpnHRk5qChQ8D1jwO0z
         aQVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yiqpubSSRjqi+xo3Zt6mRBDg4WQe+McsHWUueSRR8rc=;
        b=CCTC8tM6+O4TDAt6MdGQC5NFcS0VKF61VZWsG0N+y7yqFulP7UYpOpcynzT/TjvbAd
         r60H0jjbUCneQP+Jk1UqCMvgiVy/xEcRYHN3k2lvwxlthWsmeXT+vu4SFKgGNd2r0Q4M
         vmcocNuxROqhFEik9ct3DoBZs7Zjxk6qYoh0KG4luGTOmye5ZKxxZdw5gpu0WZR5VBv5
         1UAw2jJ5d6bKFcZzZ4E2iXhki3dBIP8X4+eYIIARxdJh0EVAS8o5miEUkc3TGjr9NxCk
         Eh2khf95YcJlNlvYgUd1yhpsRnUNqZPJZkxSFxWqAhvSVis0FyBynFkCWOML93Zosjvb
         iVyg==
X-Gm-Message-State: ACrzQf0eOII7l/62iLovLZb9BeXY/oXb0HHBXUTgFz0lnuD5hvkT47Nl
	wkkl0SXD0E8xvkj3Dyubvns=
X-Google-Smtp-Source: AMsMyM5p5Q+y3GHvQ1uQlf0tVyPoWXJvSJ0/bWAEhhHlK32H8om8vlPlJ0nMYGLQnHUtl0k07WGQmQ==
X-Received: by 2002:a05:6402:360d:b0:459:5f40:5b0a with SMTP id el13-20020a056402360d00b004595f405b0amr9017951edb.168.1666215305362;
        Wed, 19 Oct 2022 14:35:05 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id bs15-20020a170906d1cf00b0077958ddaec6sm9232118ejb.186.2022.10.19.14.35.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 14:35:04 -0700 (PDT)
Message-ID: <ebe91504-c5df-99e4-635f-832218584051@gmail.com>
Date: Wed, 19 Oct 2022 23:35:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] drm: rockchip: remove rockchip_drm_framebuffer_init()
 function
To: john@metanate.com
Cc: heiko@sntech.de, hjc@rock-chips.com, airlied@gmail.com, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_143507_876543_FFF79E2E 
X-CRM114-Status: GOOD (  12.81  )
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

The function rockchip_drm_framebuffer_init() was in use
in the rockchip_drm_fbdev.c file, but that is now replaced
by a generic fbdev setup. Reduce the image size by
removing the rockchip_drm_framebuffer_init() and sub function
rockchip_fb_alloc() and cleanup the rockchip_drm_fb.h header file.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_fb.c | 43 ----------------------
 drivers/gpu/drm/rockchip/rockchip_drm_fb.h |  6 ---
 2 files changed, 49 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
index 092bf863110b..409eaa1bf092 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
@@ -25,35 +25,6 @@ static const struct drm_framebuffer_funcs rockchip_drm_fb_funcs = {
 	.dirty	       = drm_atomic_helper_dirtyfb,
 };
 
-static struct drm_framebuffer *
-rockchip_fb_alloc(struct drm_device *dev, const struct drm_mode_fb_cmd2 *mode_cmd,
-		  struct drm_gem_object **obj, unsigned int num_planes)
-{
-	struct drm_framebuffer *fb;
-	int ret;
-	int i;
-
-	fb = kzalloc(sizeof(*fb), GFP_KERNEL);
-	if (!fb)
-		return ERR_PTR(-ENOMEM);
-
-	drm_helper_mode_fill_fb_struct(dev, fb, mode_cmd);
-
-	for (i = 0; i < num_planes; i++)
-		fb->obj[i] = obj[i];
-
-	ret = drm_framebuffer_init(dev, fb, &rockchip_drm_fb_funcs);
-	if (ret) {
-		DRM_DEV_ERROR(dev->dev,
-			      "Failed to initialize framebuffer: %d\n",
-			      ret);
-		kfree(fb);
-		return ERR_PTR(ret);
-	}
-
-	return fb;
-}
-
 static const struct drm_mode_config_helper_funcs rockchip_mode_config_helpers = {
 	.atomic_commit_tail = drm_atomic_helper_commit_tail_rpm,
 };
@@ -106,20 +77,6 @@ static const struct drm_mode_config_funcs rockchip_drm_mode_config_funcs = {
 	.atomic_commit = drm_atomic_helper_commit,
 };
 
-struct drm_framebuffer *
-rockchip_drm_framebuffer_init(struct drm_device *dev,
-			      const struct drm_mode_fb_cmd2 *mode_cmd,
-			      struct drm_gem_object *obj)
-{
-	struct drm_framebuffer *fb;
-
-	fb = rockchip_fb_alloc(dev, mode_cmd, &obj, 1);
-	if (IS_ERR(fb))
-		return ERR_CAST(fb);
-
-	return fb;
-}
-
 void rockchip_drm_mode_config_init(struct drm_device *dev)
 {
 	dev->mode_config.min_width = 0;
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.h b/drivers/gpu/drm/rockchip/rockchip_drm_fb.h
index 1a696521096d..bae4e079dfb1 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.h
@@ -7,11 +7,5 @@
 #ifndef _ROCKCHIP_DRM_FB_H
 #define _ROCKCHIP_DRM_FB_H
 
-struct drm_framebuffer *
-rockchip_drm_framebuffer_init(struct drm_device *dev,
-			      const struct drm_mode_fb_cmd2 *mode_cmd,
-			      struct drm_gem_object *obj);
-void rockchip_drm_framebuffer_fini(struct drm_framebuffer *fb);
-
 void rockchip_drm_mode_config_init(struct drm_device *dev);
 #endif /* _ROCKCHIP_DRM_FB_H */
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
