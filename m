Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 760B7CD98D2
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Jun 2026 16:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cPu1RVq3IHUo/+NDlt+jQd5RtoO/EgefB2NZmGVIHQc=; b=M4O9Ph5m9QYzqN
	ZPeBxZA2ee00lKyNGvtUqBJ7Nlx7WXDHQ4TMHkYSBFvlYsNtTuOORf35A9egc90xiOnV7Bvv+Bdxy
	IHLfLzAZ9DesRsBtktB0EaNiSik8YRem28pZghTKag+ACKhD5rZql61Tq3JNlxj3uDroANvB2pgM+
	azi7WKZwc0l3ozExnxgCL1Ne5HoKQjj86Ntekv8gisehgNikJb23cre0gXwSraBGUmjfC0Cy3xcLy
	EfsFJ838pamW6sYwWImW9StImGGsOy7xjp1aNU6JETNl65WJfjuv5v09O2evFCyjOt6js7Khuw6zC
	tu9DOACGjvK2w38gmXUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYo9m-0000000DCMl-05ps;
	Sun, 14 Jun 2026 16:57:58 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYo9j-0000000DCLl-2AVl
	for linux-rockchip@lists.infradead.org;
	Sun, 14 Jun 2026 16:57:56 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-2bf125989f2so18544535ad.3
        for <linux-rockchip@lists.infradead.org>; Sun, 14 Jun 2026 09:57:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781456275; x=1782061075; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lrWzw8QqzhBXRcDuoAQQBRc2zIXQC2Yh/JGGLwvdA1I=;
        b=URilYqRhK2bPjTlMV8sRlMWv/fAvHNkW5WZ62AQlIGj1Z+f44MPWMzOOtwNRz432c2
         +SRIMBTjfhB79tamda+3zImIH2qMqquAsMas0MpRwWMTdj6hCAzyNSYx87oHM6w7o89z
         uYXwYiT7DP9iDddO7oOCvH7Utzyt/i62BGL3oUTAfEQum9eqoMwtodNHEFoRGirzSvEL
         TzCg3gweS9vaBjvrzVMx06YBfVR3YRoa1gTAyS8UOKVk/C7mr9g/Sr26qhqNPTgvG88A
         eTljwDj0zH4Dg58hlE0IZsDwI7/AQeEjNz40++xjZ37tIxUoDtETeJcO5/gxaD/My/x4
         i71A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781456275; x=1782061075;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lrWzw8QqzhBXRcDuoAQQBRc2zIXQC2Yh/JGGLwvdA1I=;
        b=Krs+w9ga4/TAqoRDkI2CN14xXe4Dqy61GJLEfLWXErEg/+cjsHEcvh4t0vr3V37kyG
         wFv0RMkC2QgdDglwf5H9EZVxaHTE/D3+lVBaF9U/POa3oPFIW9o63ULY0KM3WbFdt/iJ
         x3BO4Sl2L3C+IgHgCErk4R6Tn7mWNhWIGR1N5q7JxSYup+4F6cqNaomR7iUSsuwU4v6f
         e0jkxz5EiMcn54zstzcBrDXqyTTE4mC8oLPoSqkkalvqE6AcHE9kbMmvoTWm29d/yVzN
         4CSlyDIy5ZoOv2HDw2VcZ39aqxrf8yFS7ZOfSIcKyKOWsS0nmzZLbxRlH7kYI3zc3jdp
         S+lg==
X-Forwarded-Encrypted: i=1; AFNElJ9jXP/V73/2Bw0S+hlhfhlUtLvZFKcg4oDV6LsbkA6zzmDKTote74zEm9MOzYl0Z6JZABVMBk2h7H6kLql9MQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy8oK6p3F16I/F/CNUu3RFkRCNZiJhER48LIKhlgetSjn39K9PU
	NfAe2nOjpBjw7NIYVsmLOGc7eQBPf309mqtVLEdl9psxcgJSfxBENPYepHSuofGB
X-Gm-Gg: Acq92OHIl5RAmMvmckeZeqPyaJff5/lFQgDgKAP+EESUqTa1J4EZVBfMRpSaE7DeJA0
	2xatjWKtcGDaLAYkVrjbnwQEpNIxkeJ25vxHH2YjnAdwxrFFah9oxXMWNz2WDNN0LTNmyTNxJCe
	Sx1RgpORcJwDag+sMYWy+IZhheCkusLJrKi975F9eL8xtU2Yj0ynR1xI+B8Xg1XJ6RLP8d+Me4I
	MHoUEL2niAjX7I9JJ96yW55RE8TDL8cdN8QYiO5XWg6gr8xTki17Xvb6/hUM0hZ34MxozPl8wDl
	g96xbAcaWTcOZFVSyxB0HO6fAfHcSFhtSXLHQgfrwck73nmX1gF6G61d32Rx7LBfmDO4P17e/Uo
	Ugm77+rRybBqNCzP5mOy93N4fEukCJ27HS0v+9pJg4VeYLVwSntff+rvsxLQFfeFo1m3ndCsYMI
	e4ZAGJcM3bYRKyT0CjbcYxytB48Ts19ewp4tixaPr8FUKE6tN7ebcI
X-Received: by 2002:a17:903:2301:b0:2bf:27b2:4b80 with SMTP id d9443c01a7336-2c411f6dca1mr118507075ad.14.1781456274563;
        Sun, 14 Jun 2026 09:57:54 -0700 (PDT)
Received: from localhost.localdomain ([49.207.217.37])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c42f2e5590sm85284025ad.14.2026.06.14.09.57.51
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sun, 14 Jun 2026 09:57:54 -0700 (PDT)
From: Biren Pandya <birenpandya@gmail.com>
To: linux-media@vger.kernel.org,
	mchehab@kernel.org
Cc: Biren Pandya <birenpandya@gmail.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 16/22] media: platform: hantro_drv: Add missing media_entity_cleanup()
Date: Sun, 14 Jun 2026 22:25:53 +0530
Message-ID: <20260614165630.3896-17-birenpandya@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260614165630.3896-1-birenpandya@gmail.com>
References: <20260614165630.3896-1-birenpandya@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260614_095755_555021_282DA05D 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
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

Signed-off-by: Biren Pandya <birenpandya@gmail.com>
---
 drivers/media/platform/verisilicon/hantro_drv.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 2e81877f640f..ad71c0402ef3 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -771,8 +771,10 @@ static int hantro_register_entity(struct media_device *mdev,
 		return ret;
 
 	ret = media_device_register_entity(mdev, entity);
-	if (ret)
+	if (ret) {
+		media_entity_cleanup(entity);
 		return ret;
+	}
 
 	return 0;
 }
@@ -860,12 +862,13 @@ static int hantro_attach_func(struct hantro_dev *vpu,
 
 err_rel_entity2:
 	media_device_unregister_entity(&func->sink);
-
+	media_entity_cleanup(&func->sink);
 err_rel_entity1:
 	media_device_unregister_entity(&func->proc);
-
+	media_entity_cleanup(&func->proc);
 err_rel_entity0:
 	media_device_unregister_entity(&func->vdev.entity);
+	media_entity_cleanup(&func->vdev.entity);
 	return ret;
 }
 
@@ -878,6 +881,9 @@ static void hantro_detach_func(struct hantro_func *func)
 	media_device_unregister_entity(&func->sink);
 	media_device_unregister_entity(&func->proc);
 	media_device_unregister_entity(&func->vdev.entity);
+	media_entity_cleanup(&func->sink);
+	media_entity_cleanup(&func->proc);
+	media_entity_cleanup(&func->vdev.entity);
 }
 
 static int hantro_add_func(struct hantro_dev *vpu, unsigned int funcid)
-- 
2.50.1 (Apple Git-155)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
