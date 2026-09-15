Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DB67C88E53
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2026 14:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AQrSjYozCGO8yWWiHrBtOKnwklUMO/3lgmbzFp+XKhE=; b=ArIaazKbz7pwUx
	asDeuBhvw4tESE0weJx5rUUSLrzZG6doUnScTKDKVVk4wfQYr4/NrGDpvpaitt0yBZU6BK9mthfig
	5FnfUgFPe9Or9OMnAhTwXlGbwJKdp3nSjXXZlqNd7rJiayJZWqZTkuk9rNezyWexs1BpXYAXWNFVm
	FJ0iJz6/lSrli1xRJ/H3t9pOJOd6p0w+jGJjvjBTzTlyeBYO19vP9x5Jkpo21IHo4kZ5j6xkgYZx9
	i2FHelu2k0yqYtmJH+UaLGhBLNOWLOIxeWJCg7WPWCLYVWjh6kLAsr8MdcB7MCz0gH54xEq7+6ubK
	hqO1tMUVJHMkqvt7OQ7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Tmt-00000006rxE-3iNA;
	Tue, 15 Sep 2026 14:05:31 +0000
Received: from mail-oa2-x10.google.com ([2607:f8b0:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Tmn-00000006rvg-2ZYj
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Sep 2026 14:05:30 +0000
Received: by mail-oa2-x10.google.com with SMTP id 586e51a60fabf-47b8afe046dso243373fac.2
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Sep 2026 07:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789481124; x=1790085924; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=4/dvc0f8jIgO60uW57rTwjvHY9CDCgJCM89WrVhajN4=;
        b=I200MH+jLLe1OigUTq3srvllIoj2O3pEa0FBgTrzFLlUNZ4q14qDOBHyjDBcNXMXfO
         qIZXnoWwWoLHbbU+2Q0XcqDl7KrMMgyGkQW0V7CvtDbJ7D2kI1OcUtZVTeGNswGLCNXj
         J70a4E68l91iYwHA1F2jqCAu803I+h/OUqkbuUeeUPqoLZ5HGqTIsuFlLdfBsvmO49Fm
         2ffVDHILT17eEbiZ93nBNv3INdFDFozDjdyew0nWY6mPN4AWnA7oo4gfCpvfJjuLkOLA
         I2KqTrm6cHBZ4VLpqZErrQ4sS8kz+F+5Uwt7ShI2SrBmgcQ1ASeh9z56OVpLMn1ONcuF
         WVMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789481124; x=1790085924;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4/dvc0f8jIgO60uW57rTwjvHY9CDCgJCM89WrVhajN4=;
        b=azSbIQe50WAYwITgeb6Qj5pybUcSTsfRwjsHqThH8LYEVo91Yp4g6U26/dAUV1N8bZ
         hr60Fwc3NWG7Sims1kzVPc99mcoFCGW/yIkqw3qYYIYb6tm0+7Rd5TiJz6+LilyEn66K
         wFXXkipqvKYehAl2e0ij3N0U5Ky3AEu3WZcj7V9Q1FPujhBLwwDjOoWOc37tOwL4Vgzd
         MKbNsHu5nnIukd/3MdfZA9h7KPLlr4MUTK4mxTaTm7ThzzGdknmnPQHQHkM4rYhQX7Qf
         /Ydi2cvALiinlrcDf1jRDM6QwTVHdpV25FFfuZyXexoGERCSWJyNXpqFGg265e9+MZeP
         k4RA==
X-Forwarded-Encrypted: i=1; AKwUvByITDvcr0DYq7r6YLXMJhLvlh8gAWq/ogOS44FP2MaifYwlhU7/GVw1dlrIJ4XjvKVKOuxNDarSxtSnjhOqRg==@lists.infradead.org
X-Gm-Message-State: AFuF++kGYHpgqEwNEcKgED/4eRpwWJnYux/rQgUPOXe46n5rg/1TQB9t
	48UvqNTAC+Etzy6Xc+9i7ptOncXxItMswYikByTei9qawLasN2+qHO9C
X-Gm-Gg: AYBFou3SpZ8ZuyQFGHe0TNX9kVNUzTqwpT29Zv6ihDAzlQoK/Zcu9Ksg5vrXfFgtqtr
	roPL3ZiSwQMbFMNrucumgmjLNq6t3dAvgMtyG0a7UuWhqa5TDffdkzdrePcv+eWx/3bVi+ZJinI
	J/xdfFsR+sFOl8Bq5lE3vBcm1wB9fCaEI1xKORaQ3rufIUAdI4ria71WV+Iysw1H5cj0HPQKKAH
	yfCFTjOp4kOVB31bQKRDihN16k4j2o4IASnEpTCVbBONiCWvA9ZXlfzVqq/rUIE/q/vVX2zPqrp
	JsR6LYAwT2DiSYYUpd6gYur5Ik1+BPBE7V5ZW8mjylTluvOLzfsU5btppvq27hIk3O5fA59oFYI
	3IAp8h7tw8qoY26t9HoyresdFMxI0EZIylXuEEbdnRjv0WjabNCxG4kHueyqM4v5YxgcDKCKbNX
	EjYS6pFmsqmslqfAkWXQneYnfdZrVQwwYDhPZh5BR1l1GY6au0N2mvaQ==
X-Received: by 2002:a05:6820:8c7:b0:6b8:1306:8567 with SMTP id 006d021491bc7-6c739c76dc5mr719865eaf.57.1789481124343;
        Tue, 15 Sep 2026 07:05:24 -0700 (PDT)
Received: from lgs.. ([2001:250:5800:1002::de93])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc4c6036fd7sm7020010a12.0.2026.09.15.07.05.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 07:05:23 -0700 (PDT)
From: Guangshuo Li <lgs201920130244@gmail.com>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Hans Verkuil <hverkuil+cisco@kernel.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Guangshuo Li <lgs201920130244@gmail.com>,
	stable@vger.kernel.org
Subject: [PATCH] media: rkvdec: do not destroy borrowed SRAM pool
Date: Tue, 15 Sep 2026 22:05:11 +0800
Message-ID: <20260915140511.2429792-1-lgs201920130244@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_070525_726516_A02A4316 
X-CRM114-Status: GOOD (  10.87  )
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

rkvdec_probe() obtains a provider-owned SRAM pool with
of_gen_pool_get(), but its error path incorrectly destroys the borrowed
pool with gen_pool_destroy().

of_gen_pool_get() returns a pool managed by the SRAM provider. The pool
is not created or owned by the rkvdec driver and is destroyed by the
provider when its own managed resources are released.

Destroying it when rkvdec_v4l2_init() fails can invalidate the pool
while the provider and other consumers still reference it, and can also
result in the provider attempting to destroy it again later.

Remove the incorrect gen_pool_destroy() call from the probe failure
path.

This issue was found by manual code inspection.

Fixes: e5640dbb991c ("media: rkvdec: Add RCB and SRAM support")
Cc: stable@vger.kernel.org
Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
---
 drivers/media/platform/rockchip/rkvdec/rkvdec.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
index 061281f903f3..4541ef9ee3b9 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
@@ -1857,9 +1857,6 @@ static int rkvdec_probe(struct platform_device *pdev)
 	pm_runtime_dont_use_autosuspend(&pdev->dev);
 	pm_runtime_disable(&pdev->dev);
 
-	if (rkvdec->sram_pool)
-		gen_pool_destroy(rkvdec->sram_pool);
-
 	return ret;
 }
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
