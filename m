Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24440CD4F52
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 May 2026 10:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=miHSqmdJR3dzQY5SbI9EEcw1wm0dR1CBEEJiHqpRoew=; b=21CjmCVqosi/c4
	LBaAJBYq3DCUDrpW8tu+AMFcdxJTEbrFsn7SEigQ2bb4vyTOdYyc6wvI8IWDQWHEgrEyzgFDnYjNo
	egjE1YKiumfYksN72Ly8wm4cgyWBJItMqeAZEARfKM4VhhjXBLjJ7zcauatRn5Bv3+5Ob7Eo03/OH
	LdE09WRXjKi4vsdbp7ljfjn0txRRpl+2WYNIOe8BYovvCxWVhGh3k/L5TTg3kE2U8edafYMMIYcwp
	riMc8mFn9k+e7aM0PD2C1lTqWcqBNXCzXnTLQmYoa9u32tPxUAKx5Ij73kwVYHCYj/1g8GqlQrP/Y
	CXf2Oog3okFZNjt1lBMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOvcD-0000000FKiX-29HF;
	Mon, 18 May 2026 10:54:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOvcB-0000000FKha-11wj
	for linux-rockchip@bombadil.infradead.org;
	Mon, 18 May 2026 10:54:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=Hl/m7s8+gdhaAEkK8F8CgPM1JiiK905rKoY3T49KXgs=; b=l+uFslNW56qTBjl4MjaVTkbIqB
	s1W08tgx/wkcA3fO+pgO77g565ZKiDEODNxI4abrpO5mkr6F2xQe/aZMNaHRGAnRIZdAVGo2QmMrI
	RBAZNyfTwmS6rv/uodi9LmWU6l5bMZRJD824alSgOiLbB07R2doVlkACi1HsfErgMkYFGyKtZ7eMX
	lSlKAB19W8OshTYUpeEhDHiSSAIMot1ZsFvA3axFOf/h1kkq4lLNDswqymz+MlG77/0K2WsH4iVxh
	zaet2Kasee/WoPExgGQQZuHkphQ3aiO3pi3WqzHQnD9sz5ESuQjp6EggF/HF14MNO5nByL8L+oSIB
	rVxamoHw==;
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOvc8-0000000ApzN-0H2o
	for linux-rockchip@lists.infradead.org;
	Mon, 18 May 2026 10:54:26 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-48909558b3aso22925865e9.0
        for <linux-rockchip@lists.infradead.org>; Mon, 18 May 2026 03:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779101662; x=1779706462; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Hl/m7s8+gdhaAEkK8F8CgPM1JiiK905rKoY3T49KXgs=;
        b=gs3KWbJ6KrQUNjarRbT615ZBqhNDWfNK1QButBe43d0G8ZzATI5VB97KsDEoop/R19
         ji0KKw0B0nzErdQ7nZNh6ctcctiCDyRXKFaft773DjGEiIjcaAHWUOYBD07WCsyUI9tJ
         DZ1dOWjC9TBIWiGTJDV9SuL0D7TOn3tB5ISnvysMec/Xj1qfjyzThDdcm5R+aDeXT5hi
         AMCbXKWSLwV7TEzSiHqkpKMejHPypl8p4Y4ZE4caLQzMqQBRhtZZS7FY0rc8TFBt1xOf
         bQ92toL4CwVdJkihpSaR1LilUDYBkVqSwST+HaNfzfMIbFY+N5ZnyHTh/i2js/PjoqDV
         mXqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779101662; x=1779706462;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hl/m7s8+gdhaAEkK8F8CgPM1JiiK905rKoY3T49KXgs=;
        b=ZJISezrmE5FqWB+s8J3GYrtms25DswmxtajZ7pl+SM64LIXRIxkwElwsi/Jinwzo/G
         Psj3Br7lPg19EJQgJ7NuZaAy5LCl9sloVcptqQCCKsHeDDbrt1h6wd/a/9kXl8G6vdZw
         9MVKiKMT+EfNamlzo2OZNOkhSqG/jwpd0JX++pKBYKdfN5UjY9hMUBR9ADyyikhdk43s
         heqXxhsIdpTh+iyMOZGvG8kJm9xiTUftjIOzrBhV/UgBmZK439JmxVcpDZgPnPFCEr4d
         h9s/PNyxaD5LmnL/DK4nR9cgrU+1IF72UkQFqADCIRawx76PFMk2bs1Ane+KnSjwiF2z
         Ccxg==
X-Forwarded-Encrypted: i=1; AFNElJ/kC/DquLJGU/gP55mSWAEtDvVFyDpEirNVU6ccUNA6hPmduYN+9mgCUoqvrxXsD9YNGudCuXzY9Ni30yDjZw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz6pxf2DhX/AjfbZN0z6LcMSTXRqar7ays8R9ND13KJaXgTd7m2
	3mj2JiS+RRc4p7xHSJldUUfOuAagAxVrgpYmfDvNmjXhFlNphycKa1U=
X-Gm-Gg: Acq92OGmPvLJHtEvz7yUGoAWBZngZRe9GSKF2ZCEksNaYf4UmAqLDACBDJXbdo69JFY
	uamfTVE6uWcMeAcItJ8DUBDGAFDyYf5yQQhvC2aJ7e+ROuH3RriCcHidJFrWePpnEnoTiEXImt0
	XS0t53cteSA6auEuJjBZ33ZkLYVMlxRHMQ2FZCmIXn7ke+TFgd/KjMiNVAeVywKLtGE57H1i1h/
	at6m4iEWfu/KqgC5pTIfpzTyqKGO7N+B5Y+yRb9SSX6GDt007B7vq8/JMnQBnVZn5dV5xNnSymL
	nYahOuVTTHTgutd1EsBj88tJpn1uAdkUSmG9JKoJ0Yd8mW0Znvk7sh3B/KZ0RddYGRGPPtR0u8e
	Sv8ORZ/qlFoP8GrdkB9D+yCbyBucINKMgC+HH0FGU/jQ53tARZsvWrVl+uI8J9tgPo/P6c4+0wp
	gO6gP942vPDfsWX43CA3ZPlgGqVucAu+VFKs3FWQH1zL9gOe2Ptu/A/+7lumi2Rffs04NiGcCNv
	kqgeMJ0dky//Q==
X-Received: by 2002:a05:600c:c0db:b0:48e:8499:4be0 with SMTP id 5b1f17b1804b1-48fe60ee481mr163456935e9.15.1779101662049;
        Mon, 18 May 2026 03:54:22 -0700 (PDT)
Received: from localhost.localdomain ([151.57.14.108])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48fe5694f2csm249429345e9.4.2026.05.18.03.54.20
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 18 May 2026 03:54:21 -0700 (PDT)
From: Francesco Saverio Pavone <pavone.lawyer@gmail.com>
To: jonas@kwiboo.se,
	detlev.casanova@collabora.com,
	nicolas.dufresne@collabora.com,
	hverkuil@kernel.org,
	mchehab@kernel.org
Cc: ezequiel@vanguardiasur.com.ar,
	heiko@sntech.de,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] media: rkvdec: fix PM runtime teardown ordering in remove
Date: Mon, 18 May 2026 12:54:13 +0200
Message-ID: <20260518105413.42147-1-pavone.lawyer@gmail.com>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_115424_542167_C7965249 
X-CRM114-Status: GOOD (  11.95  )
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

From: Jonas Karlman <jonas@kwiboo.se>

The current remove() path calls rkvdec_v4l2_cleanup() and
pm_runtime_disable() before pm_runtime_dont_use_autosuspend(), and
frees the empty IOMMU domain after that. With autosuspend still
armed when the domain goes away, the VDPU381 can be left in a dirty
state across module reload and suspend/resume cycles.

On RK3588 this surfaces as a VP9 inter-prediction bug: from the
second ALTREF frame onward, motion blocks decode with U=V=0 (BT.709
green), while intra and static blocks stay correct. Reordering the
teardown to dont_use_autosuspend() -> iommu_domain_free() ->
pm_runtime_disable() -> v4l2_cleanup() makes the symptom go away.

Tested on a Radxa Rock 5B+ (RK3588, 8 GB LPDDR5) with both the
libva-v4l2-request mpv pipeline and Chromium's V4L2 stateless
decoder. With the fix, 300 random pixel samples on VP9 Profile 0
clips at 1080p and 1440p match a libvpx software reference exactly
(worst delta 0). Without it, the same 1080p sample at frame 4,
pixel (960, 270) reads HW=(0,112,0) vs SW=(204,147,116). HEVC and
H.264 stateless decoding via mpv keep running on hardware with no
fallback.

Fixes: ff8c5622f9f7 ("media: rkvdec: Restore iommu addresses on errors")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Tested-by: Francesco Saverio Pavone <pavone.lawyer@gmail.com>
Signed-off-by: Francesco Saverio Pavone <pavone.lawyer@gmail.com>
---
 drivers/media/platform/rockchip/rkvdec/rkvdec.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
index 6f5f0422d317..bb95b090a25b 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
@@ -2066,12 +2066,13 @@ static void rkvdec_remove(struct platform_device *pdev)
 
 	cancel_delayed_work_sync(&rkvdec->watchdog_work);
 
-	rkvdec_v4l2_cleanup(rkvdec);
-	pm_runtime_disable(&pdev->dev);
 	pm_runtime_dont_use_autosuspend(&pdev->dev);
 
 	if (rkvdec->empty_domain)
 		iommu_domain_free(rkvdec->empty_domain);
+
+	pm_runtime_disable(&pdev->dev);
+	rkvdec_v4l2_cleanup(rkvdec);
 }
 
 #ifdef CONFIG_PM
-- 
2.45.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
