Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFD4EC46467
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Dec 2022 05:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yum3XjnMseokMm+TCPaPFT/2/+yWiqFnnts5xnI9PA0=; b=HkbqogkaTHLNoa
	B9OXO6mLzy39fwnDk/hAgR8cEMVt2/5JWofurxbI+81QuSiaqRhpJGgGWomvdEN9h6YJqC4gESvG7
	mpPQt8FIy2mvEtkfmZadtQlZfeqlVRe9AmxTVZ8i5qN1DaIL7mTfDZrtxcfB0MQOOFA0kVzSP+1oj
	I+E8g7LoRD+Y7EuEsM2frjdnn2FWYu1QvjyIaL6Mfbv8CANc3bxRne9ttUBumwQ8GlstgdjMWeHSQ
	7gqAugckCzC48dd04xHhX0Bw2wu5vp0eY600ZJZnHv2TqePOUg5p3BXRqmBmmz4Q0UfOKI0PUs3VK
	qiQUxMHY4elijGLg/Sjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9g0G-001v9X-LI; Mon, 26 Dec 2022 05:26:24 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9g04-001v41-VM
	for linux-rockchip@lists.infradead.org; Mon, 26 Dec 2022 05:26:20 +0000
Received: by mail-pl1-x636.google.com with SMTP id m4so9942800pls.4
        for <linux-rockchip@lists.infradead.org>; Sun, 25 Dec 2022 21:26:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LF9Mm3NqqH1nEG/wEah3Sd4XDD5tbfZrQgSyrQTtptI=;
        b=ZwNZ39F5tgP/LmtcnHq6P1mt1fj6IDl0R4Ff2oPDtgYyy3gp3vWSgx5th50vG394dt
         hM5ENWhp6uzpqpEZlsbx3YmTo+2wniMh/K6FYX9wJ8BQHvNtk9MloVceTOyuu0d+3ltT
         vZ5rRjRPG95043TvJh6z7AT3/Mrans94SvF1c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LF9Mm3NqqH1nEG/wEah3Sd4XDD5tbfZrQgSyrQTtptI=;
        b=hfUWaiv8GqLGjTU7nuWId9lRMGayi8cEuSPkfQpYR7jYahuX8Ab58LCpF7dgzDk7Jh
         PWsNwF8Frg9aY6+jcnPKxE0xYcbnct7UIV6kK3NXXg/Ep3VRgAisynHZ4nwBr7Ke1MvY
         RTenSqcZoDdz3HsJNmx15HvtplkWhmIwb5e1zH5pQF0MF+HFw/eGpUqG/TC18600+oGO
         0w2gdJ2csmwyVcfJ4lsEaALtJJYkq6BY4EdijhIGFulEZeMQOywUgrduK0U7IUpSim+6
         7dRp72Ns0/275mRmO2ufFAws8cqzlz9w2paY3njwgYQTmmU3flTxXAlGoLpBOMy1yvqc
         ctmw==
X-Gm-Message-State: AFqh2krLBoCtznRKgIkyB8RKGqeaaworCJ2F0BZTalu2OKja6dn8n7h0
	+/g4/doRUvyxBKgLufW2aA0IIg==
X-Google-Smtp-Source: AMrXdXuUS+LEcZOWr2OsiwuQkSRBZt8oLI1kuQXopUgaEZ4Qu8l/Ipbgt8vQUGRyp0msSc4GtvINKw==
X-Received: by 2002:a17:902:f550:b0:192:7258:15b5 with SMTP id h16-20020a170902f55000b00192725815b5mr7105435plf.50.1672032370405;
        Sun, 25 Dec 2022 21:26:10 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:db30:c4d:3ee:e697])
        by smtp.gmail.com with ESMTPSA id je20-20020a170903265400b001926c38cd42sm2966161plb.192.2022.12.25.21.26.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Dec 2022 21:26:10 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-media@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] media: hantro: Use core-generated bus_info value
Date: Mon, 26 Dec 2022 13:26:06 +0800
Message-Id: <20221226052606.144109-1-wenst@chromium.org>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221225_212617_661402_86827E63 
X-CRM114-Status: GOOD (  11.76  )
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

The Hantro driver uses a hardcoded value for the bus_info field in the
media device and |struct v4l2_capability|. This worked well when there
was just one device. However with the iMX.8 series we are now seeing
two Hantro blocks on the same chip. The static bus_info is no longer
sufficient for differentiating devices.

Since commit f2d8b6917f3b ("media: v4l: ioctl: Set bus_info in
v4l_querycap()"), the V4L2 core provides a default value for the
bus_info field for platform and PCI devices. This value will match
the default value for media devices added by commit cef699749f37
("media: mc: Set bus_info in media_device_init()"). These defaults
are stable and device-specific.

Drop the static bus_info values from the hantro driver and use the
defaults.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v1:
- Dropped unrelated Makefile change

 drivers/media/platform/verisilicon/hantro_drv.c  | 2 --
 drivers/media/platform/verisilicon/hantro_v4l2.c | 2 --
 2 files changed, 4 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 8cb4a68c9119..b0aeedae7b65 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -1050,8 +1050,6 @@ static int hantro_probe(struct platform_device *pdev)
 
 	vpu->mdev.dev = vpu->dev;
 	strscpy(vpu->mdev.model, DRIVER_NAME, sizeof(vpu->mdev.model));
-	strscpy(vpu->mdev.bus_info, "platform: " DRIVER_NAME,
-		sizeof(vpu->mdev.bus_info));
 	media_device_init(&vpu->mdev);
 	vpu->mdev.ops = &hantro_m2m_media_ops;
 	vpu->v4l2_dev.mdev = &vpu->mdev;
diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index 2c7a805289e7..c1a116031013 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -142,8 +142,6 @@ static int vidioc_querycap(struct file *file, void *priv,
 
 	strscpy(cap->driver, vpu->dev->driver->name, sizeof(cap->driver));
 	strscpy(cap->card, vdev->name, sizeof(cap->card));
-	snprintf(cap->bus_info, sizeof(cap->bus_info), "platform: %s",
-		 vpu->dev->driver->name);
 	return 0;
 }
 
-- 
2.39.0.314.g84b9a713c41-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
