Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53D94C531D0
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 08:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aVthOiHjsEDpP0nF8CRKLuztXtAE5ZIACa5jtoA1FbY=; b=nShQrmKSqCqByg
	0M7zlAaE/BD1FNto9apTdaWMi3HnHDxdbT7/uuTHJuhIpr/PFdhMuCDZJM8oPttNc87EStGHvxuLs
	pDMLDF4/jdKIay27QqFAMo3txVy4BUgVDrUyukAt4fXycLnMYXuhdNj5hohjLMkKA8QqYYGnvyqQp
	rqgVZXRMKoHzP+8/1VK0//L+JKhiItUIjkoINyJ89OEwfqAWHIcxcJswzaANLfabpxDvRC7d1JziX
	ANPyz6QBOy97tc6XgETZF+LG+OajecSqHY/Hkibhui2BKdEHWstNhsd9vCdw+4qTCB0Qs1adFgSCi
	fUw00wc2zgIJc5joe83A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpLkY-00000009nDE-1wki;
	Thu, 30 Jul 2026 08:04:18 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpLkT-00000009nBr-42H8
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 08:04:15 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-47f6981d244so131745f8f.1
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 01:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785398652; x=1786003452; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VrwtyRX2qDPBxX3r7OeFon4kOmzwfovTWycGAbMSmog=;
        b=GWRh2tEeXp0DxtIE9wVn1dGkIKhVJ1AfnvmweD/JqpBXmnWBKODDlxZWCA12eua4Jm
         ArwKE3Ep0FywAPy26TNbQiGtiv8QNBgziNEkX8na9abXWbDYtWoOv7GWkY0GirdUNzA8
         +dhhyOEL64IQieh7eYMGq6QzAvhsBW+Kkp2btpCCr0ekjhEORnFWMkPKJCNqn5aDDKvD
         Awp4qT7LNFUqFZh4yL0g21K03Rsb7mf0ytovG8g2NC4+xE9TKleUJ1HNVurZZNbP6/iE
         HnHsKCCo960/aWtdhbw6WKUjZiOpwbLjZ9R6lJNsz7Rp0Js0oL8ebX2y0eEl0nCiRvPY
         xCVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785398652; x=1786003452;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=VrwtyRX2qDPBxX3r7OeFon4kOmzwfovTWycGAbMSmog=;
        b=R21iEaJordKiP8Mvc5rFlx/s3yBwQZ2zNhwxBqaGzYNXs89DlzD7F7XsZX7y0dOEM6
         JBc2pcBmxJ0RbQUYQGK6Re3eTWkq3VpbRfxCU3NsGjFEV/hg8RFPwvnIzNfAreaq0WVi
         gKuHy+gI0BHlNiG641/iPyoGIvUmXzoTWHH22ZVPLstpld2YrZLPOVZNJhgFK+0hifVB
         HOptC7qwPap3jbf3jxuGE84FNuo/PuuQb50rOXO8j3QtM4zvcAPaOMC055tbh/30H30e
         8bAMcsSA5GHbntEl9/1qziaSegkgJ9L/EO2StjCpIR0clwG/VN7RvqdZ7UJ0nUUH0wMI
         my3g==
X-Forwarded-Encrypted: i=1; AHgh+RoMjSV4QjR0WLsfGWF2Xt+Xxqy45nvuant81rr0qVqRVPKzaspk3SbBUQRinP5eKHkDo18hI8CWnUkeAechsQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwjCffvRF+rvywaahj1UFrLCMz+6OL5yhQiUxNtUFAeY4U7Pg9+
	H8HZF5NW7hYRDHW/rviKK9KyBYh8Hoh4i8ddh8t6oQwwDd4yVR2rcbxh98Vitw==
X-Gm-Gg: AR+sD11ow7Oi9NO5J2VBmOgtxWNy9bqJtsFM84AqEdJI7WqFXOMRVwfRirBEumH5fVA
	rrzs8aYzsPkZ4MzU/FbK1ksLj+BqR8J9m2PnYfMGljrj+AyQVjK6USMPAw79xAQcp45pCDFta3v
	yWi4bOGvcgjNIKVZ+joclv48iDVPMan3Xveyuhp60Y8EgVBvusrDS/Awt9W5dRFXabn9A/aw5Eq
	3UwM1LFjwu4lSXKZSrq/REz6BEO92E3uBS4JxSvuTnFezl6QDuvXtpgApPnqW72MYxYdJ/FwOSC
	lH63R+noBVB1XhabGYA+zGmTNV4KDIO7j7QYZvj1GRI0czEjvYT73jMoEoIbz/BPYk/crMpOHC6
	F9AWtn4xHqa1403o7mpmFZyx1Y0yR1gAPlDMhhDiTGNDf7o4iIO6gTPQZECyvCEoyLRuonrePTd
	+YjxU6CljBE5a0GbUTQV+5fweUiU9jSFufsnUwjdkw48s1x5qCCA1ITNpKqyUttYSqGqJ+6DB/l
	L9yBWcx+KBSsHC1cWEyDA/9rdSZDA0fWJB0YfqyUYGMMA08p9nowqwKPphJnS14ku2SWgPLborp
	89Rl
X-Received: by 2002:a5d:5e82:0:b0:47f:6fbd:f23e with SMTP id ffacd0b85a97d-47fc8329a61mr1706891f8f.4.1785398651803;
        Thu, 30 Jul 2026 01:04:11 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8A5A00BF2D55A7591B4173.dsl.pool.telekom.hu. [2001:4c4e:1b8a:5a00:bf2d:55a7:591b:4173])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47fc88e4055sm3347685f8f.13.2026.07.30.01.04.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2026 01:04:10 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: Oded Gabbay <ogabbay@kernel.org>,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Guangshuo Li <lgs201920130244@gmail.com>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Igor Paunovic <royalnet026@gmail.com>
Subject: [PATCH 1/2] accel/rocket: release the shared device's devres on teardown
Date: Thu, 30 Jul 2026 10:03:53 +0200
Message-ID: <20260730080355.177422-2-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260730080355.177422-1-royalnet026@gmail.com>
References: <20260730080355.177422-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_010414_030194_E1BD1669 
X-CRM114-Status: GOOD (  17.72  )
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

rocket_device_init() attaches its allocations to the shared "rknn"
platform device via devres: devm_drm_dev_alloc(), devm_kcalloc() for
the cores array and devm_mutex_init(). That device is registered at
module init, never binds to a driver, and is only unregistered at
module exit - so its devres list is not released for as long as the
module is loaded.

rocket_device_fini() only calls drm_dev_unregister(): it does not run
the drm_dev_put() devres action or free any of the other entries.
Every fini/re-init cycle therefore leaks the previous rocket_device
(with its embedded drm_device and all drmm state, including the accel
minor number), the cores array and the mutex devres node. The cycle is
easy to trigger: unbind the last bound core and bind one again, or
fail the first core's probe (-EPROBE_DEFER retries included).

Observable symptom, RK3588 (Orange Pi 5 Plus): each unbind/rebind
cycle of all three cores moves the accel node forward -
/dev/accel/accel0 comes back as accel1, then accel2 - because every
leaked drm_device keeps its minor pinned.

Wrap the initialization in a devres group and release exactly that
group wherever the device is torn down: on the rocket_device_init()
error path, when the first core's rocket_core_init() fails, and when
the last core is removed. Each fini now frees what the matching init
allocated, and the accel minor is reusable again.

Fixes: ed98261b4168 ("accel/rocket: Add a new driver for Rockchip's NPU")
Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
---
This applies on top of Guangshuo Li's pending fix, which it depends on:
"accel/rocket: clear rdev on device init failure"
https://lore.kernel.org/dri-devel/20260708062845.716487-1-lgs201920130244@gmail.com/

Verified on RK3588 (Orange Pi 5 Plus): with the patch, repeated
unbind/rebind cycles keep /dev/accel/accel0 stable (previously the
minor incremented on every cycle); normal three-core probe, runtime PM
and a MobileNetV1 inference run via the Teflon TFLite delegate are
unaffected.

 drivers/accel/rocket/rocket_drv.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/accel/rocket/rocket_drv.c b/drivers/accel/rocket/rocket_drv.c
index 67e7f54..d29c5ee 100644
--- a/drivers/accel/rocket/rocket_drv.c
+++ b/drivers/accel/rocket/rocket_drv.c
@@ -24,6 +24,7 @@
  */
 static struct platform_device *drm_dev;
 static struct rocket_device *rdev;
+static void *rdev_group;
 
 static void
 rocket_iommu_domain_destroy(struct kref *kref)
@@ -163,14 +164,19 @@ static int rocket_probe(struct platform_device *pdev)
 
 	if (rdev == NULL) {
 		/* First core probing, initialize DRM device. */
+		rdev_group = devres_open_group(&drm_dev->dev, NULL, GFP_KERNEL);
+		if (!rdev_group)
+			return -ENOMEM;
 		rdev = rocket_device_init(drm_dev, &rocket_drm_driver);
 		if (IS_ERR(rdev)) {
 			int err = PTR_ERR(rdev);
 
 			dev_err(&pdev->dev, "failed to initialize rocket device\n");
 			rdev = NULL;
+			devres_release_group(&drm_dev->dev, rdev_group);
 			return err;
 		}
+		devres_close_group(&drm_dev->dev, rdev_group);
 	}
 
 	unsigned int core = rdev->num_cores;
@@ -190,6 +196,7 @@ static int rocket_probe(struct platform_device *pdev)
 		if (rdev->num_cores == 0) {
 			rocket_device_fini(rdev);
 			rdev = NULL;
+			devres_release_group(&drm_dev->dev, rdev_group);
 		}
 	}
 
@@ -213,6 +220,7 @@ static void rocket_remove(struct platform_device *pdev)
 		/* Last core removed, deinitialize DRM device. */
 		rocket_device_fini(rdev);
 		rdev = NULL;
+		devres_release_group(&drm_dev->dev, rdev_group);
 	}
 }
 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
