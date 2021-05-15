Return-Path: <SRS0=uf4h=KK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24AC6C433ED
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 May 2021 22:19:03 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 69A35610E6
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 May 2021 22:19:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 69A35610E6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=l1lLI6K0hhhjn7FeFDdRdDK/KVA0K/mheKzWmRFXeuA=; b=RGqPR/AafxLjVy6U4NJXja0BPq
	Vz8kIfws7LIkOQKMscFcSp+2wII+/uVIY7beM16VWoaObYfN6ry3aNyYfU7UnW2abhSbd7pOXdjK+
	P/qy3OqiIJ+8ABiCWTXAmaUyiqEavh8YpmW9gtsXHKX6KyFgYxIE3fVBrv0/+3lxxEx86Rexcg7Px
	Ul1/eqLnE17QkZIsjrwBGziqgMc2qwjHZbamGNMvbgzU8rYQ627uCijXp+xicLs/8NsEwaUZN3CCZ
	oWMyPoUtuxezm4k7CDHQexqLPi81LDJVMtQhQmOfJVSzgLBUu3maP4NzuBKkoQT2OAfNES8GYZg6C
	PeddjbLQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1li2cY-00B4NO-22; Sat, 15 May 2021 22:18:54 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1li2am-00B4EC-Ef
 for linux-rockchip@desiato.infradead.org; Sat, 15 May 2021 22:17:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:Content-ID:Content-Description:In-Reply-To:References;
 bh=uj0FnsDmx2/pl2qaIJyZPTU7rem4vQ2vcjf8oF9Zpos=; b=IzYHkb07I5ZS3Y+8EkUTKVBJgf
 LemmuZrTtbl6HaOgI3kGIIHtcnnX5xMYvwg7cl5upkWMpXV4GNavyVZb9JXb467s9l453AuPIY9GK
 px3dvwxpStC/gXoGAiSl7zF8Sgo0GKzQBuJufSxrMnCNDJqHs84sxCavRKI7gzaiOeRRKAHYIzv1f
 iGkbzB3Lyzo9+rrX2jB8JPocI0vdioVNcvaYmn0JNAG8mBu660S5DkImjNtGpGvdmUWRnhuzugxvf
 jkMTTkM6g+2jhHzVT+DId5cIa29dgl6dQQR3mUj6k8YS/YDIv73BAfWPd9y7DeaZzgDkl+8R61u8Z
 Srd9ax4g==;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1li2aj-00ChgA-W2
 for linux-rockchip@lists.infradead.org; Sat, 15 May 2021 22:17:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1621117021;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=uj0FnsDmx2/pl2qaIJyZPTU7rem4vQ2vcjf8oF9Zpos=;
 b=WwdFrl6awfcIJ+FzBf5E0U6q4QRdRtIiN/uTE79YqHbVN4Muns2yoTjxXOId3+p/AL1Dj9
 nn3PvHkprOfK14HXMo0ixmjw56oJrf7Tu7Tc+Hxp/Y7nPwgHfZ1gR7dTxDq5+jmbeXX9xJ
 YqfVT4eT3qrLLh8MT/rtjbhopEB6YM4=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-182-Xj1krXpnMluXzcCVIs_Riw-1; Sat, 15 May 2021 18:15:03 -0400
X-MC-Unique: Xj1krXpnMluXzcCVIs_Riw-1
Received: by mail-wr1-f69.google.com with SMTP id
 67-20020adf81490000b029010756d109e6so1528045wrm.13
 for <linux-rockchip@lists.infradead.org>; Sat, 15 May 2021 15:15:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uj0FnsDmx2/pl2qaIJyZPTU7rem4vQ2vcjf8oF9Zpos=;
 b=hlTsuHkdELE+EP1IiaRboxnp5oe1efbFn5JmOejMnZS/JsqalakxUw0YgUdrPeyO7D
 zZwX5+HZeBvyxPKrrcmYIOOfEuy+a1ZhnGT9O3KNnWRbFHbqmBtFhbX5zvLU//1sMJ7g
 WhjwZ4Le4GK2bX2ziXUyiWWSl3KHY7ehP/xk7DOOFXK6iJAvQCB/iXnHehHXtNKuSPRt
 UbnAPCay6/Xhc3dMFC7lOYZ8vWnoJdXtH4+8wkGAWZzFgEZYH8Xe2+aq16eLA4L3rQo7
 p4yG22+05a9LZ6SHWFHwc+9TGNabdq+WoKLSusLVGLkGNUt4xeqi46lK8u+CVJUuwsDQ
 YQiw==
X-Gm-Message-State: AOAM530IFNcEy5sfmh82NgTc2MaNgaKyjnpSh9jkLG6In1JOP/dp5Ty8
 842t6rKKUMaD6Tz0P5rBwS1XSd0VI+Hs9/qogNlOG2HULEOkTJShmwSIm1VwKTTh1aL20cWhbzF
 v4004jJrkKdpH3LWihH4XK/mmTnBFaSbK
X-Received: by 2002:a1c:9a4a:: with SMTP id c71mr14231674wme.136.1621116902165; 
 Sat, 15 May 2021 15:15:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy3DRAaEOsMocZIjWgXpJWHgD+0UBOgPkcyX7580Aop0DadT4fIcQ2zAgGZMo+oom1e3PWTXA==
X-Received: by 2002:a1c:9a4a:: with SMTP id c71mr14231663wme.136.1621116902006; 
 Sat, 15 May 2021 15:15:02 -0700 (PDT)
Received: from minerva.home ([92.176.231.106])
 by smtp.gmail.com with ESMTPSA id b15sm10632945wru.64.2021.05.15.15.15.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 15 May 2021 15:15:01 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Javier Martinez Canillas <javierm@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Robinson <pbrobinson@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH] drm/rockchip: remove early framebuffers before registering
 the fbdev
Date: Sun, 16 May 2021 00:14:47 +0200
Message-Id: <20210515221447.429779-1-javierm@redhat.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210515_151702_122246_E3172A23 
X-CRM114-Status: GOOD (  12.27  )
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

There are drivers that register framebuffer devices very early in the boot
process and make use of the existing framebuffer as setup by the firmware.

If one of those drivers has registered a fbdev, then the fbdev registered
by a DRM driver won't be bound to the framebuffer console. To avoid that,
remove any early framebuffer before registering a DRM framebuffer device.

By doing that, the fb mapped to the console is switched correctly from the
early fbdev to the one registered by the rockchip DRM driver:

    [   40.752420] fb0: switching to rockchip-drm-fb from EFI VGA

Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
---

 drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c b/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
index 2fdc455c4ad..e3e5b63fdcc 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
@@ -4,6 +4,7 @@
  * Author:Mark Yao <mark.yao@rock-chips.com>
  */
 
+#include <drm/drm_aperture.h>
 #include <drm/drm.h>
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_fourcc.h>
@@ -124,6 +125,15 @@ int rockchip_drm_fbdev_init(struct drm_device *dev)
 
 	drm_fb_helper_prepare(dev, helper, &rockchip_drm_fb_helper_funcs);
 
+	/* Remove early framebuffers (e.g: simplefb or efifb) */
+	ret = drm_aperture_remove_framebuffers(false, "rockchip-drm-fb");
+	if (ret) {
+		DRM_DEV_ERROR(dev->dev,
+			      "Failed to remove early framebuffers - %d.\n",
+			      ret);
+		return ret;
+	}
+
 	ret = drm_fb_helper_init(dev, helper);
 	if (ret < 0) {
 		DRM_DEV_ERROR(dev->dev,
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
