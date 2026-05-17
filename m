Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5088ACD37AC
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 May 2026 11:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=riYUCOYXFLLTnbthmvLkJ63O3TrdRlfJkFIBmpMUofU=; b=38bRE43g/0X0n5
	jfAtXf6fQpP4gNarLtmq0l/odQc+0E2W3DDsEfpL0brx6JuHI/W6f786sVO5oNvApS3dYYpYy3ufA
	Wol83Ps2JdAcgV3zPMeU/21hTqxCZLZcKzafjqHB/DzAQ59LNeyqxva/HRgVWkH6ISWW2Zm9/RKJk
	/uKU3sPv2wYT5CGhEDGlqATjpIe3awzuiqcfTLKPuhPG4+LOlfnrnnXJ1m/RKWxHG2C/kmQkqFbfE
	s1AIWxHgEYrSzj176/xx/7/PPkPF5ECc41ScldocE1WX0kCiAI/PRyGMvKBfkfqqAhGHxeRjR8Qu7
	HCBCJa92QAlHXhbuu26g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOZoA-0000000CcOE-0TDx;
	Sun, 17 May 2026 11:37:22 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOZo7-0000000CcN2-44SU
	for linux-rockchip@lists.infradead.org;
	Sun, 17 May 2026 11:37:21 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-3697c35eab7so452999a91.0
        for <linux-rockchip@lists.infradead.org>; Sun, 17 May 2026 04:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779017839; x=1779622639; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YwCtNa2bNCMGQ/e87qwfib5kmy7GWvXNJtX206pcf+A=;
        b=Au8rJfnYjR4RuT8FIOFN5OBL2voHbuoBlbLyhy27ffS9C3I6w2QFLD7+CssjEdhK+P
         9XYSjEKWW7Maj5VF0P5kj++2KHuhkzclkW4ucaDfo+uW83AxHF+jpnEsyBBjdcdmLisL
         v+h64hZCmTEzYP4HVO8QIuFEZ9OIBYE8OTOaEJ5cvZ0xGjVYAxpEy/v878M+LiLmNvVJ
         0dbNpWwjWP2xMMigecnM+9fhmqlrxFF59s0KOUILyEblVnLyQnCw+L88dz36LPZoLWqr
         9p5d7MMJmkkOD6yj6BPobvvD0xOZVfzZCJsjk6yRT566e87/cYvfTHLxPKGduwcPB6cY
         fBMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779017839; x=1779622639;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YwCtNa2bNCMGQ/e87qwfib5kmy7GWvXNJtX206pcf+A=;
        b=SJ+kjOLtwgG+sYQupwpukpOFAymE1Evvhd5v+r5JL5KBkysn0l0oH10KbewOoQrccc
         NBzR5Yi4rN+pBL/Hm9JlUuk60G4Ky4U9Y3NmL+3dNKhSbI36URxbOI9W587fR1ZEHJd1
         fXxY/6F+q/45j7UWmjnc3qMGwtDpExmm0TKLXs1+RxRdwM15213DWQ2gUuMibsQCmX40
         Q11mAugdnXY48GoO6DrUuc9QLHcprBRFUMGVXgS35dgr+A57z98dWC8F07/rm+qbjIN5
         V0IbmJpewZlAq6w8dwofdWFVWpEFQnEodDfGOZc/PZIwZznuAnFmG4ZSqHVphyvJWmcK
         KviA==
X-Forwarded-Encrypted: i=1; AFNElJ9tNCBgRqN2ZmxoHvnUW1ynqN7vGMVICJbUIif2LzsZQphjeHenhQCrcF0vpwAl2aRxk9bye9dUyq2RhVQfwQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyfmAkHjkH1W7u9UVl44sCWYP407HvF7OyWJMp+glcPL7A7eHty
	sOSJGP7HgYNvNoIYiw6d8fWqz/StwA6/3Lahiz0I5YsWil9fC6dmyHVw
X-Gm-Gg: Acq92OHoHMH46C7IL6/V5/OScS+qe670PW+3dETbiVst8o36jtp2g5epByUKQrhp/lw
	t3fQySzR1wUPX9gTJWvtbs6N9JhjTYBJHLGoMvKZrIqUaOJMp95f+/D+713PMBDyobP3vn2XMjF
	m52llUJaET+8c8F2A3Wf9Icw2oBklXeUTMa2oVRP7jtVAeSDND/ED8X49y7WJaCRjXA6NQV9BNw
	/iU3SJi2nLtgio4zK+RqWwby0kjWRtB7rePibWH9DZNIa/Be1foX0/763VKJBCHXNeL4RRo1OGP
	HZ2CwQBcv2mj6SU2IKLy/IhscIIFb0iYfzJFbrz1iW+KczU/FgvFANC9Pxv+yXT+eAlQjIrfuDO
	MWw4W6DIFZIa/hMvxiDsbmQblZDO6ZgE3nGOj4poD/jpWKWZUrun7DY3n/kCnCxXspWAF7CEw+k
	0JjccGCQ==
X-Received: by 2002:a17:90a:d648:b0:368:95e1:8d45 with SMTP id 98e67ed59e1d1-36951cb7706mr10428613a91.26.1779017838713;
        Sun, 17 May 2026 04:37:18 -0700 (PDT)
Received: from lgs.. ([2001:250:5800:1000::f280])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36957261d59sm3162871a91.4.2026.05.17.04.37.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 May 2026 04:37:18 -0700 (PDT)
From: Guangshuo Li <lgs201920130244@gmail.com>
To: Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Hans Verkuil <hverkuil@kernel.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Guangshuo Li <lgs201920130244@gmail.com>
Subject: [PATCH] media: rockchip: rga: avoid double free on video register failure
Date: Sun, 17 May 2026 19:34:49 +0800
Message-ID: <20260517113449.949222-1-lgs201920130244@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260517_043720_008546_DAAEE994 
X-CRM114-Status: GOOD (  10.73  )
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

rga_probe() allocates a video_device with video_device_alloc() and
releases it from the rel_vdev error path if video_register_device()
fails.

This can double free the video_device when __video_register_device()
reaches device_register() and that call fails:

  video_register_device()
    -> __video_register_device()
       -> device_register() fails
          -> put_device(&vdev->dev)
             -> v4l2_device_release()
                -> vdev->release(vdev)
                   -> video_device_release(vdev)

  rga_probe()
    -> rel_vdev
       -> video_device_release(vfd)

Use video_device_release_empty() while registering the device so that
registration failure paths do not free vfd through vdev->release().
rga_probe() then releases vfd exactly once from rel_vdev. Restore
video_device_release() after successful registration so the registered
device keeps its normal lifetime handling.

This issue was found by a static analysis tool I am developing.

Fixes: f7e7b48e6d79 ("[media] rockchip/rga: v4l2 m2m support")
Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
---
 drivers/media/platform/rockchip/rga/rga.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index fea63b94c5f3..90ae01de3216 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -851,6 +851,7 @@ static int rga_probe(struct platform_device *pdev)
 		goto unreg_v4l2_dev;
 	}
 	*vfd = rga_videodev;
+	vfd->release = video_device_release_empty;
 	vfd->lock = &rga->mutex;
 	vfd->v4l2_dev = &rga->v4l2_dev;
 
@@ -895,6 +896,8 @@ static int rga_probe(struct platform_device *pdev)
 		goto free_dma;
 	}
 
+	vfd->release = video_device_release;
+
 	v4l2_info(&rga->v4l2_dev, "Registered %s as /dev/%s\n",
 		  vfd->name, video_device_node_name(vfd));
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
