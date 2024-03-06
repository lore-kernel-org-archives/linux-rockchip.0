Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29658C54798
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Mar 2024 03:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f55xeNI7ppqxCa97Tk8/YS1iokFwP0jHdY1CiX9Sq68=; b=xJo9M22kSnX9dN
	HOMg5ivZLOEBPygxQVIrhCv83seVDYHh8GF7cBptXsO3xmNp8WVdNTr2Dpl5dbxCL2A8d/3PGitni
	EvNK5ztSDbjoduJqQet4h3o7nIk2UaUfiZQkXTnAZXap6JQwbDQd8JIjyYtPtrTP6JHynOBnSvacI
	68HlvaQloIHs4Fp/bD6MNdQQQuUQsZPddTy1Ux2q6MKLHkqgaDW3CaQP5Yk2ZUyQHNaMSqz1wjKoY
	q2sdxXZcbsZuhWlzh2urGRzDs9ylMA86Lthg/mJUaPlLJqAIH0z62QfS8oSMC8o2YmLDnWyVMZ9AG
	QDeHy9F2eONjLiXEYt8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhheC-0000000G5fM-03dp;
	Wed, 06 Mar 2024 03:08:48 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhhdp-0000000G5Jt-0agr;
	Wed, 06 Mar 2024 03:08:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1709694503;
	bh=WrPzrnol5F76rUH/mCw3AKr49uKqT5kpb9joX4owG+8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=raCF6Mf6XNvcbIo2js1OPjlcSQBgbrd5ikm/VipSzvi5gJMqJJG9yhu7CyFWpyJZa
	 6EYDZnYDkDTCdxyhiuhpndJLdmrd5i7qquF0ooZf4mffmHscbeITUl4+nQXIWJBKMF
	 OSoN1t0vwYIj9EYbuFLa5Jh5qkdAEyhXAWmWcc5dgW4XjmtRx7FeHdQt+REYVirATv
	 0nJwSx/Ut739rin++CFUhFJNVhQtPk/KyxcuTh5zcRIzYor3AaYVjpLQA/QFEuhr2n
	 8fLQ6SYI7cpqh9rYTa5wL53Bo1TGjiRoScahRUeELK0aZTBLfv0nKeGXP2Gt7LioIF
	 MmDb3QOVzVZTw==
Received: from localhost.localdomain (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 7E98A3780624;
	Wed,  6 Mar 2024 03:08:19 +0000 (UTC)
From: Vignesh Raman <vignesh.raman@collabora.com>
To: dri-devel@lists.freedesktop.org
Cc: daniels@collabora.com,
	helen.koike@collabora.com,
	airlied@gmail.com,
	daniel@ffwll.ch,
	emma@anholt.net,
	robdclark@gmail.com,
	david.heidelberg@collabora.com,
	guilherme.gallo@collabora.com,
	sergi.blanch.torne@collabora.com,
	hamohammed.sa@gmail.com,
	rodrigosiqueiramelo@gmail.com,
	melissa.srw@gmail.com,
	mairacanal@riseup.net,
	mcanal@igalia.com,
	linux-mediatek@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 07/11] drm/ci: meson: Refactor existing meson jobs
Date: Wed,  6 Mar 2024 08:36:45 +0530
Message-Id: <20240306030649.60269-8-vignesh.raman@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240306030649.60269-1-vignesh.raman@collabora.com>
References: <20240306030649.60269-1-vignesh.raman@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_190825_612828_CD4A4F52 
X-CRM114-Status: UNSURE (   9.85  )
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

For Amlogic Meson SOC the display driver is meson. Currently,
in drm-ci for meson, only the display driver is tested.
Refactor the existing meson jobs so that gpu driver testing
jobs can be added later and update xfails accordingly.

Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
---

v2:
  - Refactor the patch to rename job to indicate display driver testing,
    rename the existing xfail files.

v3:
  - Add the job name in GPU_VERSION and use it for xfail file names instead
    of using DRIVER_NAME.

v4:
  - Remove the display suffix in job and rename xfails accordingly.
    Remove the change adding job name in GPU_VERSION.

---
 drivers/gpu/drm/ci/test.yml                    | 11 ++++++++---
 drivers/gpu/drm/ci/xfails/meson-g12b-fails.txt |  5 -----
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/ci/test.yml b/drivers/gpu/drm/ci/test.yml
index 99fd101ce2fe..951a44bf9d19 100644
--- a/drivers/gpu/drm/ci/test.yml
+++ b/drivers/gpu/drm/ci/test.yml
@@ -351,20 +351,25 @@ panfrost:mt8183:
     - .lava-igt:arm64
   stage: meson
   variables:
-    DRIVER_NAME: meson
     DTB: ${DEVICE_TYPE}
     BOOT_METHOD: u-boot
     KERNEL_IMAGE_TYPE: "image"
 
-meson:g12b:
+.g12b:
   extends:
     - .meson
   parallel: 3
   variables:
     DEVICE_TYPE: meson-g12b-a311d-khadas-vim3
-    GPU_VERSION: g12b
     RUNNER_TAG: mesa-ci-x86-64-lava-meson-g12b-a311d-khadas-vim3
 
+meson:g12b:
+  extends:
+    - .g12b
+  variables:
+    GPU_VERSION: g12b
+    DRIVER_NAME: meson
+
 virtio_gpu:none:
   stage: virtio-gpu
   variables:
diff --git a/drivers/gpu/drm/ci/xfails/meson-g12b-fails.txt b/drivers/gpu/drm/ci/xfails/meson-g12b-fails.txt
index 56a2ae7047b4..029b4ade21f6 100644
--- a/drivers/gpu/drm/ci/xfails/meson-g12b-fails.txt
+++ b/drivers/gpu/drm/ci/xfails/meson-g12b-fails.txt
@@ -5,11 +5,6 @@ kms_cursor_legacy@single-bo,Fail
 kms_cursor_legacy@single-move,Fail
 kms_cursor_legacy@torture-bo,Fail
 kms_cursor_legacy@torture-move,Fail
-kms_force_connector_basic@force-edid,Fail
-kms_hdmi_inject@inject-4k,Fail
-kms_plane_cursor@overlay,Fail
-kms_plane_cursor@primary,Fail
-kms_plane_cursor@viewport,Fail
 kms_properties@connector-properties-atomic,Fail
 kms_properties@connector-properties-legacy,Fail
 kms_properties@get_properties-sanity-atomic,Fail
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
