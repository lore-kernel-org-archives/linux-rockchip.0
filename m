Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7CA7C25B78
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 May 2024 10:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fdsK/wc/SPl42Z74cWkgP/xYqtzxqs+ojdAo3aB8PMc=; b=Bz9CExP5Zx1HCi
	sWvVEGojck5C/FVGfzv/bTt9RinM/DKEkbIL15wzxmIy4w2aG8eKeAtjbtWY9xlZE7MPbRhzmPmnY
	UvtAqSbWP6UrRt/KKfchN0Eg+xqBGroWfSpiL1x6wfMpk2+VgUEL2mhGG1pXI3bnow7o5aabJFqtn
	kNUvzh3c+S2ikMmP7IP0Ht+ny9cyDUxmdQCF3w7afIfJZqersNJkxU8he2TyXlc60xRVu8EsAndXl
	I2/JQi36xGgZDElT3Yk2xDmtgDxbBDpLrMW425UCIT7h3IQnRmjUKTYWcQQRP9U9ODadLvohthX5i
	mhVeizFAGRFYiCjtMHTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7ut4-00000007X2g-1DDy;
	Fri, 17 May 2024 10:32:30 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7tqD-00000007KkQ-1mWn;
	Fri, 17 May 2024 09:25:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1715937927;
	bh=iVG5TznlZSbapY+dfzdsSGk+uIVJwQXm3dejanoZ0vk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=xSmje+K4XscK5ePBslevLDzyBGG7U45O+jVEn4EXvgEXrIyUV3tSMGtLwuKWYWaPP
	 8v95fH7ZRzaeu3klhSnyHdLRns3MxGVr8T2J4tubV2M5U43rYOmDDNEeai2jzlA5Np
	 mPLAfaQXVvkM2GPH74pHnxH6AX/MUraCpi+3QJc42EmkXuyFo164+Uq5nnHe6kZ6Fz
	 IM7RbfImZc3tYbKZapVpEiNMU7+QD7AXJ0CmC201V7UqNF59Y3KD+3LH4/tVugdy01
	 uObX3gd1vOy9TleG+RDZFXntkersrs5XXLcBXikhpby9E/2+P4pWztPqtmsVpWnxcV
	 40fJlzLtTB6pQ==
Received: from localhost.localdomain (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id DED9637821C2;
	Fri, 17 May 2024 09:25:23 +0000 (UTC)
From: Vignesh Raman <vignesh.raman@collabora.com>
To: dri-devel@lists.freedesktop.org
Cc: daniels@collabora.com,
	helen.koike@collabora.com,
	airlied@gmail.com,
	daniel@ffwll.ch,
	robdclark@gmail.com,
	david.heidelberg@collabora.com,
	guilherme.gallo@collabora.com,
	sergi.blanch.torne@collabora.com,
	dmitry.baryshkov@linaro.org,
	mcanal@igalia.com,
	linux-mediatek@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	amd-gfx@lists.freedesktop.org,
	linux-arm-msm@vger.kernel.org,
	intel-gfx@lists.freedesktop.org,
	virtualization@lists.linux-foundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/6] drm/ci: build virtual GPU driver as module
Date: Fri, 17 May 2024 14:54:59 +0530
Message-Id: <20240517092502.647420-4-vignesh.raman@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240517092502.647420-1-vignesh.raman@collabora.com>
References: <20240517092502.647420-1-vignesh.raman@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_022529_911969_01F091C3 
X-CRM114-Status: GOOD (  12.65  )
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

With latest IGT, the tests tries to load the module and it
fails. So build the virtual GPU driver for virtio as module.

Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
---

v2:
  - No changes.

---
 drivers/gpu/drm/ci/build.sh       | 1 -
 drivers/gpu/drm/ci/igt_runner.sh  | 6 +++---
 drivers/gpu/drm/ci/image-tags.yml | 4 ++--
 drivers/gpu/drm/ci/test.yml       | 1 +
 drivers/gpu/drm/ci/x86_64.config  | 2 +-
 5 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/ci/build.sh b/drivers/gpu/drm/ci/build.sh
index a67871fdcd3f..e938074ac8e7 100644
--- a/drivers/gpu/drm/ci/build.sh
+++ b/drivers/gpu/drm/ci/build.sh
@@ -157,7 +157,6 @@ fi
 
 mkdir -p artifacts/install/lib
 mv install/* artifacts/install/.
-rm -rf artifacts/install/modules
 ln -s common artifacts/install/ci-common
 cp .config artifacts/${CI_JOB_NAME}_config
 
diff --git a/drivers/gpu/drm/ci/igt_runner.sh b/drivers/gpu/drm/ci/igt_runner.sh
index 20026612a9bd..55532f79fbdc 100755
--- a/drivers/gpu/drm/ci/igt_runner.sh
+++ b/drivers/gpu/drm/ci/igt_runner.sh
@@ -30,10 +30,10 @@ case "$DRIVER_NAME" in
             export IGT_FORCE_DRIVER="panfrost"
         fi
         ;;
-    amdgpu)
+    amdgpu|virtio_gpu)
         # Cannot use HWCI_KERNEL_MODULES as at that point we don't have the module in /lib
-        mv /install/modules/lib/modules/* /lib/modules/.
-        modprobe amdgpu
+        mv /install/modules/lib/modules/* /lib/modules/. || true
+        modprobe --first-time $DRIVER_NAME
         ;;
 esac
 
diff --git a/drivers/gpu/drm/ci/image-tags.yml b/drivers/gpu/drm/ci/image-tags.yml
index 60323ebc7304..328f5c560742 100644
--- a/drivers/gpu/drm/ci/image-tags.yml
+++ b/drivers/gpu/drm/ci/image-tags.yml
@@ -4,9 +4,9 @@ variables:
    DEBIAN_BASE_TAG: "${CONTAINER_TAG}"
 
    DEBIAN_X86_64_BUILD_IMAGE_PATH: "debian/x86_64_build"
-   DEBIAN_BUILD_TAG: "2023-10-08-config"
+   DEBIAN_BUILD_TAG: "2024-05-09-virtio"
 
-   KERNEL_ROOTFS_TAG: "2023-10-06-amd"
+   KERNEL_ROOTFS_TAG: "2024-05-09-virtio"
 
    DEBIAN_X86_64_TEST_BASE_IMAGE: "debian/x86_64_test-base"
    DEBIAN_X86_64_TEST_IMAGE_GL_PATH: "debian/x86_64_test-gl"
diff --git a/drivers/gpu/drm/ci/test.yml b/drivers/gpu/drm/ci/test.yml
index 612c9ede3507..864ac3809d84 100644
--- a/drivers/gpu/drm/ci/test.yml
+++ b/drivers/gpu/drm/ci/test.yml
@@ -350,6 +350,7 @@ virtio_gpu:none:
   script:
     - ln -sf $CI_PROJECT_DIR/install /install
     - mv install/bzImage /lava-files/bzImage
+    - mkdir -p /lib/modules
     - mkdir -p $CI_PROJECT_DIR/results
     - ln -sf $CI_PROJECT_DIR/results /results
     - install/crosvm-runner.sh install/igt_runner.sh
diff --git a/drivers/gpu/drm/ci/x86_64.config b/drivers/gpu/drm/ci/x86_64.config
index 1cbd49a5b23a..78479f063e8e 100644
--- a/drivers/gpu/drm/ci/x86_64.config
+++ b/drivers/gpu/drm/ci/x86_64.config
@@ -91,7 +91,7 @@ CONFIG_KVM=y
 CONFIG_KVM_GUEST=y
 CONFIG_VIRT_DRIVERS=y
 CONFIG_VIRTIO_FS=y
-CONFIG_DRM_VIRTIO_GPU=y
+CONFIG_DRM_VIRTIO_GPU=m
 CONFIG_SERIAL_8250_CONSOLE=y
 CONFIG_VIRTIO_NET=y
 CONFIG_VIRTIO_CONSOLE=y
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
