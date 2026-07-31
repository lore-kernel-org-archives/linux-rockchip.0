Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBE18C55171
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Jul 2026 06:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yGrv3xqFfX0ATzoPd5iskNTgrs3qy/u3czYqpsFFi9M=; b=xJcqEPxnvjVrnt
	klc0/gQpXOWseR+rEVxlGgeW+mY5QvQM5WzAXbz34pOgSeR3aqjc7AU7UTV/qyBjs3RGtiq8K4qfs
	Fgpcbxi0bEtdcMH65NXdJI8t1BIa+3MnPQYWKnFCkKZ2950ZFTNN7oZABQ2EpYi2VVZbKjgZztUhN
	uzN0tHypxInMP4aRIXUZgeli9MCpi410K4Glsw1rO6XlbbYmNY2AlJkWXGwZGbmP6qEluExNd4f49
	RU7krEgZ7o4M/E1SZrX8JkJrkrJFQzRLG5Tgszxp+PdVXPsu42UFKXQLU8JcYk8smNkpMQOt3sqpJ
	YEmHp51y5RsRF2P9grUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wph4E-0000000BuxL-35Mm;
	Fri, 31 Jul 2026 06:50:02 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wph4B-0000000BuvY-2qgL
	for linux-rockchip@lists.infradead.org;
	Fri, 31 Jul 2026 06:50:01 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-47df6a5655aso71327f8f.1
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 23:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785480598; x=1786085398; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kXo8J24KrU8Vbaf2n2kgu1xGVPuRWaU3gl3iPntegac=;
        b=bv0qhGUp6G4nLb5GIZyLJAJYmsdjUcR4fA65soKFHW9mhmpZ9IANu+gRVlAGGfSOm1
         ugpajr5v+9KCmTyPt8RQaazQ0cLAI1vXRpkjJXmTizyubFixGGGHHFbzs77zpSnT4G1/
         qFCweyzbVvT70AxOdfq5n3WUZVgzNsMxV3yTTvDC35bVoMygMQ2ViY/qW637Z20JN8YW
         fTzsYcO5NBEqTRhqJUu6Tmvkg6kdR7u04mNNuZ9R/FiixuNprWs9iJKrMWwiDCR3aBGm
         u236O5B88ePk1HDFrhlGQZyJ/azRupiUeO0ZfPhHbpVn5IeZWsO0xyLQQSGlq5hdw/tp
         dLsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785480598; x=1786085398;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=kXo8J24KrU8Vbaf2n2kgu1xGVPuRWaU3gl3iPntegac=;
        b=KLNamnOvY1EkK/7dvmHDwaY64KKAMasbf9ucb8OWADzKE2bVGTWTzeIDTMFgRaf85d
         WkhEXDkaCbKQewfXJgfmh+aSmCNDODj0JyycvUmNdDvTdhE7AfXb/kg7EvBifWpfIipg
         NrcJMvXMYZISXRLHrfFO/3Xpbn8rHRF2OSne26YUl8bS+3E/otp+dnSFfkvAZxOU+Rgr
         o42VoYMsOfmekAcuqCNPa4G7ux3xE1Nz5y5k5sX6wcg595tf4lYCWzjGg7SNcfpKAFOm
         fCaAnuPmPuixXDofNhjY3+pIJ2sN07LCDvsyyrIevdb32Gh3GqqZpIxK+dPexCpWK5JX
         Iqow==
X-Forwarded-Encrypted: i=1; AHgh+RoWyaX8OgPbCN7WD8dVqGIatLfhjyCB4qnBnu3tOFopiKU3E46xefGEIAMBxPPJ32ELk7vhQz+LTbR0JIdSdQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0tKM8iscsEAx45hFLQtvznfmxeIu5SQWVeYdcUxxq+Rj/4DGG
	iwHYNro1t+uN87uaqAr9uuyqTKvl5MQlL4nDXpYe+wP23xJnH+vmZX2P
X-Gm-Gg: AR+sD11mULeX/0ffNgWl/H09yHoMHhcAaM3zv5Xz53aBCAifGcliqNKgMYgs9z/ghB2
	nTWER+cRRY0bMPs4VJjtfjFWqtM1ppoKWE6Ariqr3eay+rlOV2D8gvkkk7QS88sB8edDlj5NA/u
	xxo+MAd9un5IbOS9oON0JysHNAnNO77g7H+H+q60ALjSxdcf0V9FG/pWnL7d8pPkNZuzT6A8sEL
	UUjktJLhr/OhWsjUvinKjq5A9BQWmBx8o8Z6/Qxqy4YdKM0RE63u6bQBLOcxOvy1zGFp+njJVZE
	Tes84btRXxYBAQ/vQ53TEz5SJBK3Y7R/qx0eRL7HhHECCLjuP5Bws2h5bXwZmjYx6tSXjtq3iv3
	Td229Up4VhZtLnGiGztDTeMQeoCNDBXCH20ETGhwkEAyu3v9sZnlsBtfBdkTOYVn8Vpe6DEAdQM
	5pCSlG7TIdkT0dSeSSWg3r+zPcQ4m+lDBtvAdOufuIYv29HFwQKD95OcBeGgQdDdXXicjrMg0ak
	pmh41HGkjI2+j4kHAHt16Rk1K7l5xsbBRc5UCzQQIEbCSZS5gmoP2RJua7Q26T+PpWsYw==
X-Received: by 2002:a05:6000:2401:b0:47f:96bc:e370 with SMTP id ffacd0b85a97d-47fd2b653fcmr2421972f8f.4.1785480597528;
        Thu, 30 Jul 2026 23:49:57 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8B8B0053881A2C61CA978D.dsl.pool.telekom.hu. [2001:4c4e:1b8b:8b00:5388:1a2c:61ca:978d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47fd41e2abbsm1212753f8f.9.2026.07.30.23.49.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2026 23:49:57 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: Oded Gabbay <ogabbay@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Guangshuo Li <lgs201920130244@gmail.com>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Igor Paunovic <royalnet026@gmail.com>
Subject: [PATCH v2 1/2] accel/rocket: release the shared device's devres on teardown
Date: Fri, 31 Jul 2026 08:49:32 +0200
Message-ID: <20260731064933.12548-2-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260731064933.12548-1-royalnet026@gmail.com>
References: <20260731064933.12548-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_234959_951904_86D47567 
X-CRM114-Status: GOOD (  18.27  )
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
v2: unchanged.
v1: https://lore.kernel.org/dri-devel/20260730080355.177422-2-royalnet026@gmail.com/

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
