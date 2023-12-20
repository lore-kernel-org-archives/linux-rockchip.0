Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 073F6C46CD4
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Dec 2023 12:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r2EoDzFMRoAaePETBJnU2Fu6V3oTCvkN4/ByQ+QefIM=; b=hVapVfa9Gzvgyr
	ET4WQ57EwEe/MddJRM2Hj+FuBtF7N0/1fFU7Hq+Vc2Fu+cLGL+i+W3T4OB55rJkBSuQfd08I7N03q
	EA2fjNIptjo8IKutf32uQJ0NDNL+hWup6olCwUN1lMEgG2GW2bWz0JIiUFhG4vRYV/5RbgvjMGEMs
	NQv9+ytRNptT9ff41kvA+5J88eGXvWL6rBD+bM+D1dbDSAoUindXtTz0/9OkAies9U0ysoMOtr1S9
	UiOtyWFNwIwNmkNPdoa7VNlVL+jIfahwls2FLtIKvbncoL5DWFhc7LCoOos6+yk+nVQlrHtgXn888
	5eko6APYY+vhdQV7kwNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFvQc-00HJNl-0F;
	Wed, 20 Dec 2023 12:11:58 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFvQY-00HJKZ-2g;
	Wed, 20 Dec 2023 12:11:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1703074313;
	bh=cpGbNlIDrcIqhAFCyy26RbpIG22BYa4C8X4/107Zjy8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=H826zMsu4Ly2DqEn2dK54lHrjWC37YcV8O1ySVSqZjIhNZXFth9HFiQ5cPYSiXQs4
	 6nYwDCj0JViAuWFV+f2RmXtHzu1QaOLmelK0NqTPsoZwUr6rER4/dpQvsJwp4UfR4h
	 T5r+ROQkeRrl6Gb7/JGzUTn8fx/WsJYq6j5YaG/Sokk41Jflnud+mcgW9V+7b5xqy+
	 408M2U9Ku6TMpEMXtqYZvvMWID2JWK4qhFTFWJgXyQKG8sfW0oL8nI5Pb8kZQ3uvla
	 5+yKUYIGfXMiI9Ts7GbiIgGkZbEPGsDsPGW8oS5Tx+hlolGyM6o0bjMVdJ21a9cRRQ
	 T6D5oDR733+Ug==
Received: from localhost.localdomain (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 9DEB73781FD5;
	Wed, 20 Dec 2023 12:11:48 +0000 (UTC)
From: Vignesh Raman <vignesh.raman@collabora.com>
To: helen.koike@collabora.com,
	airlied@gmail.com,
	daniel@ffwll.ch,
	daniels@collabora.com
Cc: david.heidelberg@collabora.com,
	guilherme.gallo@collabora.com,
	sergi.blanch.torne@collabora.com,
	emma@anholt.net,
	robdclark@gmail.com,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 4/8] drm/ci: meson: Test both GPU and display drivers
Date: Wed, 20 Dec 2023 17:41:06 +0530
Message-Id: <20231220121110.1441160-5-vignesh.raman@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231220121110.1441160-1-vignesh.raman@collabora.com>
References: <20231220121110.1441160-1-vignesh.raman@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_041155_001835_8CB19096 
X-CRM114-Status: UNSURE (   7.98  )
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

Meson SOC have a separate display controller and GPU,
with different drivers for each. Add support in drm-ci
to test both these drivers.

Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
---
 drivers/gpu/drm/ci/test.yml | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/ci/test.yml b/drivers/gpu/drm/ci/test.yml
index 8081925303f5..159eb7ba3588 100644
--- a/drivers/gpu/drm/ci/test.yml
+++ b/drivers/gpu/drm/ci/test.yml
@@ -357,20 +357,32 @@ mediatek:mt8183-display:
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
 
+meson:g12b-gpu:
+  extends:
+    - .g12b
+  variables:
+    GPU_VERSION: g12b-gpu
+    DRIVER_NAME: panfrost
+
+meson:g12b-display:
+  extends:
+    - .g12b
+  variables:
+    GPU_VERSION: g12b-display
+    DRIVER_NAME: meson
+
 virtio_gpu:none:
   stage: virtio-gpu
   variables:
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
