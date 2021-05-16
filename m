Return-Path: <SRS0=WkAD=KL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07144C433B4
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 07:49:10 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6C5EE6108B
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 07:49:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6C5EE6108B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=U3kRCkXC6ad2p8f18RQOZZWEW35iBP5AKRB3xaLb7qo=; b=oJOtqP2xKYzvfqneDrCIn87ASL
	Fyz/NK1y0XNaw38dGXdjPxM8/ln0MVRL2uYikZ4C8sD+e7BmXWhfxroJvcWZTE1rKT36yYifQyQzZ
	0aq35f/j3yfBxB2C8Iw0JGoPcuqTzf+EEDprRru1mF0I5nen37Q/ssX5Q6TQg5qXXeIeUMBF23fYq
	4FdTZE7WbA4/VlmsAtugIN1BwmPVtY00lqAXHdNP541d2v/0+E7sspJHf+z2/inBCdGFukHesEZ1s
	gtgmuCG9gM7vp7p7p24N6o/Y0enC8RKlWlzYFQWjvpnpEcEnxspgxGcAeRXZMze3E0XQTb5xYq8Qa
	l9bfYkCw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liBWG-00Bopu-Bt; Sun, 16 May 2021 07:49:00 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liBWD-00Bopc-QN
 for linux-rockchip@desiato.infradead.org; Sun, 16 May 2021 07:48:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:Content-ID:Content-Description:In-Reply-To:References;
 bh=xMEHr3txinobPMiklkheMH3hCxm7Pua65lCR30BLejs=; b=bYU+1b+s58iOuJFIkwJ/TrIKKv
 SM4mUWHc1wy3I01A2KdUehO6sQkAbiFR9tvqV/Dp/G0gNDbNzYpXK9FzS308otxJl9Oq0bOUGJKTH
 1nBsw+fB+wEIF0DWHfNzOilK6sndQraWhbBp/ghxkn3D3THdSXoLuCFdqMJTAe0a7I/zSAHOqw9R+
 1tyC+5QbWqhFN3b6wpanikkunDXuJGjYaOPnV3uJtmSxoVzh+KLbON6xFJD57nZ8aUnB+uQxHAt8P
 Xrh4SHks7OHu0n5PdJW+eeCRUBGr6YuT7UGY2AYxQo933kjEJ4+lWXQvth1sFA5HGRWRqnrF/VaaT
 jk+26ccA==;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liBWA-00CoOw-MJ
 for linux-rockchip@lists.infradead.org; Sun, 16 May 2021 07:48:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1621151333;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=xMEHr3txinobPMiklkheMH3hCxm7Pua65lCR30BLejs=;
 b=En6c7A1SnXRy4qukNG9tR5LGlvI0AcOY90qJgWX2rkIpK5Ka32/Wdx15i5T+nq7fyPS4/I
 eea9urQrgWhYmuSL1n7VFLDu8DBhbox6ycNyw8WIunol0rYNMRwhdHEqDaEucn63dsA0/k
 o0mxdEgyNF6Plt0DwFvJ4C8vw6MbMh4=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-275-wu6ZQLfBOv6P4A-WIqoLXg-1; Sun, 16 May 2021 03:48:49 -0400
X-MC-Unique: wu6ZQLfBOv6P4A-WIqoLXg-1
Received: by mail-wr1-f72.google.com with SMTP id
 36-20020adf91a70000b029010ec34b3f27so2070596wri.10
 for <linux-rockchip@lists.infradead.org>; Sun, 16 May 2021 00:48:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xMEHr3txinobPMiklkheMH3hCxm7Pua65lCR30BLejs=;
 b=hN/yIoQdakvW9pFV7+vYM2uQeA3ExaLo231Vp+Gtl3aMCz3dXWE+mEkViiylpw+B8v
 839MW5/lnhc5oguyZhn+aCCGTD35dtaOZtPdAhA295peWgfsyw4Zs67dsPsL3xCU9ALi
 CLcrbrEWbobrjaiwuXf+upgylDbLUO1f58k1Itx1hrXazFuchIuCVjCBjt0UXwOZMPsh
 h3IEiDxeF+QgJc0L0jkuujmjjN+65S0POr+2uizmCPoWsPJAi3HYydmA0WND6XIUon9T
 yRK4FzBLx3zJg9x80tqJqBFcb1M5x1DRqnuebfaA/oOQzjsIaPBRZxzjb32a0v/vud6+
 ycjA==
X-Gm-Message-State: AOAM533xV6Q56j/3Ncy77II2LDjNsQoDiJsAEghjdohwTBPfi/hkfShO
 0qEaSgdklX0C++mZzrQaT5kkdjDqjoamgNecyU8lSfYu0D/qt6vofAgVkOxfkv6XGrEEYndXv5F
 JpzAU6B+4eS/N9CEueam8dXfmCM2XWIt9
X-Received: by 2002:a7b:c14e:: with SMTP id z14mr57335894wmi.104.1621151328866; 
 Sun, 16 May 2021 00:48:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyRkzwXMjfjJhlzuX9LLoPTb6ClHg5TLaCME19q70w8+F6ekQW/0awjb4A7BinEgHO2w+/92g==
X-Received: by 2002:a7b:c14e:: with SMTP id z14mr57335881wmi.104.1621151328701; 
 Sun, 16 May 2021 00:48:48 -0700 (PDT)
Received: from minerva.home ([92.176.231.106])
 by smtp.gmail.com with ESMTPSA id o129sm16643610wmo.22.2021.05.16.00.48.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 May 2021 00:48:48 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Peter Robinson <pbrobinson@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Javier Martinez Canillas <javierm@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v2] drm/rockchip: remove existing generic drivers to take over
 the device
Date: Sun, 16 May 2021 09:48:33 +0200
Message-Id: <20210516074833.451643-1-javierm@redhat.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210516_004854_816171_32702D8B 
X-CRM114-Status: GOOD (  13.45  )
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

If one of those drivers has registered a fbdev, then the fallback fbdev of
the DRM driver won't be bound to the framebuffer console. To avoid that,
remove any existing generic driver and take over the graphics device.

By doing that, the fb mapped to the console is switched correctly from the
early fbdev to the one registered by the rockchip DRM driver:

    [   40.752420] fb0: switching to rockchip-drm-fb from EFI VGA

Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
---

Changes in v2:
- Move drm_aperture_remove_framebuffers() call to .bind callback (tzimmermann).
- Adapt subject line, commit message, etc accordingly.

 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index 212bd87c0c4..b730b8d5d94 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -16,6 +16,7 @@
 #include <linux/console.h>
 #include <linux/iommu.h>
 
+#include <drm/drm_aperture.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_gem_cma_helper.h>
@@ -114,6 +115,15 @@ static int rockchip_drm_bind(struct device *dev)
 	struct rockchip_drm_private *private;
 	int ret;
 
+	/* Remove existing drivers that may own the framebuffer memory. */
+	ret = drm_aperture_remove_framebuffers(false, "rockchip-drm-fb");
+	if (ret) {
+		DRM_DEV_ERROR(dev,
+			      "Failed to remove existing framebuffers - %d.\n",
+			      ret);
+		return ret;
+	}
+
 	drm_dev = drm_dev_alloc(&rockchip_drm_driver, dev);
 	if (IS_ERR(drm_dev))
 		return PTR_ERR(drm_dev);
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
