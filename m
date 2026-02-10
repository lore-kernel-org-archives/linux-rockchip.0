Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 849DCEA3F18
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Feb 2026 07:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QuHjkn2vUorrXM5P/C4wPRs7FF33AGGTZg9jX+9D9oc=; b=kxbn8Fezr3aLDa
	yiHlU/O8GCZZg8FJc6mlCjvfKZ4DD4gNFL6CsHHk/ALPv1bCa64gsPN075PFmIpuaBdy8Ym3c2F+a
	t2KofUN4rTDau93dfd9ypWPYiXqSVNY40TMt8eqS+Fb8S7r9QWYJQMmsuX8OAv1dOM9pXyQxk56+G
	IaKa1fSH4e+9KuZk/EPBAZ8gLxJ05WwuQwEKGNZIWc2YOkA/DjUVtgCfVZOEZvDfE182XL+d0pOfE
	kRO6+02DZutRZD5SNF2SkAS8Tu8U9k492iMIawxDScBZzQ16rHQ/RWdN6Po3Hc3KXpLn0FXp1lDpn
	DYSxmcpgK0E5zo2NTajQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vphvB-0000000GaEb-0H82;
	Tue, 10 Feb 2026 07:12:29 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vphv5-0000000Ga7K-0kh0;
	Tue, 10 Feb 2026 07:12:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1770707541;
	bh=pLIDwXzRoih/DAFmXEa6l6/CvOxsrs4oj4AyIVphDyI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Be8iZq3UF3hc6tRco/LsmOnwfmxIWdCFCkcm3VEweU3oO1fXywZeqXRso1+tNPksc
	 6OVNNIIZkPmaofmNHCd16y++BXEJNbofLtHXnydAEdUQCxmujbgjj3QqGv4Xje1cwA
	 K+sohBAlal094QRUmi4VaCyl6Fb/xjhCPU9FgRWCInPz0tmh/tiH73HfoInYVjn+2R
	 XxSDIVE7jM603csPSSys8/dfLJNe7H2ZvS5l7X4ROKmThYubcGYN5fnrOjLtTpk2kL
	 q+D/FH4kE/jTrR7F3hXos+1bMWvbD+8KO5gY/805f/gWs9Eqi1nXr1E6nzD3HO3fnO
	 rZZ5gzSzUfN7w==
Received: from vignesh-thinkpad.. (unknown [171.76.81.211])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 718DD17E0C21;
	Tue, 10 Feb 2026 08:12:16 +0100 (CET)
From: Vignesh Raman <vignesh.raman@collabora.com>
To: dri-devel@lists.freedesktop.org
Cc: daniels@collabora.com,
	helen.fornazier@gmail.com,
	airlied@gmail.com,
	simona.vetter@ffwll.ch,
	dmitry.baryshkov@oss.qualcomm.com,
	lumag@kernel.org,
	robdclark@gmail.com,
	robin.clark@oss.qualcomm.com,
	guilherme.gallo@collabora.com,
	sergi.blanch.torne@collabora.com,
	valentine.burley@collabora.com,
	linux-mediatek@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	amd-gfx@lists.freedesktop.org,
	linux-arm-msm@vger.kernel.org,
	intel-gfx@lists.freedesktop.org,
	virtualization@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/5] drm/ci: move qualcomm baremetal jobs to lava
Date: Tue, 10 Feb 2026 12:41:33 +0530
Message-ID: <20260210071138.2256773-5-vignesh.raman@collabora.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260210071138.2256773-1-vignesh.raman@collabora.com>
References: <20260210071138.2256773-1-vignesh.raman@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_231223_420717_283CCCD1 
X-CRM114-Status: UNSURE (   9.16  )
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

Qualcomm apq8016 and apq8096 DUTS are moved to Collabora lava
farm. So enable these jobs to use lava and update expectation
files.

Co-developed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
Reviewed-by: Daniel Stone <daniels@collabora.com>
---

v2:
  - No changes.

---
 drivers/gpu/drm/ci/arm64.config               |  1 +
 drivers/gpu/drm/ci/test.yml                   | 41 +++++++++++--------
 .../gpu/drm/ci/xfails/msm-apq8016-fails.txt   |  4 ++
 .../gpu/drm/ci/xfails/msm-apq8096-fails.txt   |  2 +
 4 files changed, 31 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/ci/arm64.config b/drivers/gpu/drm/ci/arm64.config
index fddfbd4d2493..b850b88787ad 100644
--- a/drivers/gpu/drm/ci/arm64.config
+++ b/drivers/gpu/drm/ci/arm64.config
@@ -83,6 +83,7 @@ CONFIG_SC_DISPCC_7180=y
 CONFIG_SC_GPUCC_7180=y
 CONFIG_SM_GPUCC_8350=y
 CONFIG_QCOM_SPMI_ADC5=y
+CONFIG_QCOM_SPMI_VADC=y
 CONFIG_DRM_PARADE_PS8640=y
 CONFIG_DRM_LONTIUM_LT9611UXC=y
 CONFIG_PHY_QCOM_USB_HS=y
diff --git a/drivers/gpu/drm/ci/test.yml b/drivers/gpu/drm/ci/test.yml
index c314926e3693..b7409f8a13a5 100644
--- a/drivers/gpu/drm/ci/test.yml
+++ b/drivers/gpu/drm/ci/test.yml
@@ -122,32 +122,39 @@ msm:sc7180-trogdor-kingoftown:
     GPU_VERSION: ${DEVICE_TYPE}
     RUNNER_TAG: mesa-ci-x86-64-lava-sc7180-trogdor-kingoftown
 
-.msm:apq8016:
+msm:apq8016:
+  extends:
+    - .lava-igt:arm64
   stage: msm
+  parallel: 3
   variables:
-    DEVICE_TYPE: apq8016-sbc-usb-host
+    BOOT_METHOD: fastboot
+    DEVICE_TYPE: dragonboard-410c
     DRIVER_NAME: msm
-    BM_DTB: https://${PIPELINE_ARTIFACTS_BASE}/arm64/${DEVICE_TYPE}.dtb
+    DTB: apq8016-sbc-usb-host
+    FARM: collabora
     GPU_VERSION: apq8016
-    # disabling unused clocks congests with the MDSS runtime PM trying to
-    # disable those clocks and causes boot to fail.
-    # Reproducer: DRM_MSM=y, DRM_I2C_ADV7511=m
-    BM_KERNEL_EXTRA_ARGS: clk_ignore_unused
-    RUNNER_TAG: google-freedreno-db410c
-  script:
-    - ./install/bare-metal/fastboot.sh || exit $?
+    KERNEL_IMAGE_NAME: "Image.gz"
+    KERNEL_IMAGE_TYPE: ""
+    RUNNER_TAG: mesa-ci-x86-64-lava-dragonboard-410c
+    LAVA_FIRMWARE: qcom-lava
 
-.msm:apq8096:
+msm:apq8096:
+  extends:
+    - .lava-igt:arm64
   stage: msm
+  parallel: 3
   variables:
-    DEVICE_TYPE: apq8096-db820c
+    BOOT_METHOD: fastboot
+    DEVICE_TYPE: dragonboard-820c
     DRIVER_NAME: msm
-    BM_KERNEL_EXTRA_ARGS: maxcpus=2
-    BM_DTB: https://${PIPELINE_ARTIFACTS_BASE}/arm64/${DEVICE_TYPE}.dtb
+    DTB: apq8096-db820c
+    FARM: collabora
     GPU_VERSION: apq8096
-    RUNNER_TAG: google-freedreno-db820c
-  script:
-    - ./install/bare-metal/fastboot.sh || exit $?
+    KERNEL_IMAGE_NAME: "Image.gz"
+    KERNEL_IMAGE_TYPE: ""
+    RUNNER_TAG: mesa-ci-x86-64-lava-dragonboard-820c
+    LAVA_FIRMWARE: qcom-lava
 
 msm:sm8350-hdk:
   extends:
diff --git a/drivers/gpu/drm/ci/xfails/msm-apq8016-fails.txt b/drivers/gpu/drm/ci/xfails/msm-apq8016-fails.txt
index 72c469021b66..4546363447ff 100644
--- a/drivers/gpu/drm/ci/xfails/msm-apq8016-fails.txt
+++ b/drivers/gpu/drm/ci/xfails/msm-apq8016-fails.txt
@@ -1,5 +1,9 @@
+core_setmaster@master-drop-set-user,Fail
 kms_3d,Fail
+kms_cursor_legacy@forked-move,Fail
+kms_cursor_legacy@single-bo,Fail
 kms_force_connector_basic@force-edid,Fail
 kms_hdmi_inject@inject-4k,Fail
 kms_lease@lease-uevent,Fail
+msm/msm_mapping@memptrs,Fail
 msm/msm_mapping@ring,Fail
diff --git a/drivers/gpu/drm/ci/xfails/msm-apq8096-fails.txt b/drivers/gpu/drm/ci/xfails/msm-apq8096-fails.txt
index 2893f98a6b97..0d5cb2a87e67 100644
--- a/drivers/gpu/drm/ci/xfails/msm-apq8096-fails.txt
+++ b/drivers/gpu/drm/ci/xfails/msm-apq8096-fails.txt
@@ -1,2 +1,4 @@
+core_setmaster@master-drop-set-user,Fail
 kms_3d,Fail
 kms_lease@lease-uevent,Fail
+msm/msm_mapping@memptrs,Fail
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
