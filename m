Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33FBDC47DA2
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jan 2024 09:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ZNx9r2o82KL48dKwoZhBeEhG9IrFfensAznvb4RafA=; b=MOIOx3nrY5INbC
	UiG3l+A1KbOByn6osHnWG/n6IJvbOBkeM8O+tiaYsWPOGH14xqTxr1vJtIMswrB9TyncldYY711DP
	GXweSQsZH/GU7pgOxCsYbJjYCxAqCGSklLht4VlZS2wIdE5w7u/e719uk/c3oEJsnlo7N8CSEZ1Ol
	PxMkzZlDJ3td4Y6yUVrB7BIgS9Uc0YZ34it5PN8+57E/RRlMrxI1lBc/2qzZocFqEPOf4wi3Ry+RO
	MP96ZJXKQbX9gdIvWenc60Stxt6Y5WLwF/oPTP3jQHaE9es7LImeDp/j4BfaPDU6hBW+SHWurgF0G
	8P3PaLnBht1QbeCpJMmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPgAk-00Bbgr-3A;
	Tue, 16 Jan 2024 09:55:54 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPgAg-00Bbcp-01;
	Tue, 16 Jan 2024 09:55:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1705398948;
	bh=YjbImhJh8bgrlYf3Pw1w/8S18obt3jnMcaKRmMtRMbE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jQkzX+isG6XuiFkddHOUkt1ZvKebGFACtV3rqV2r6uwJ2ddvqQBOHds5G69mifM39
	 Drt/s9DaIRMa0NIRW7xL7+LP8iMqLQQGXaiM6Bt0fd0N7aIi3EgZEygTXr7sqSP0W0
	 EN9FjmPqoEhNDMeeLtP1CmK7/GOV4gqBNwzzBL5dUjXmyhNoK86qSunDxWUwqxEGed
	 jogJikORkj3B/5KBuCIx3hYaxPx035NbMgmoaFSDMRLQbsXpmQUH/D9n7RJ8B8S7yU
	 HIVEzjp8kZ0HRyA/1uaExuNAFlbuXez1xw/r4yupgyvdPC+6xWgybiCcp4B49yaDng
	 iFvMeK+RNDHeQ==
Received: from localhost.localdomain (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id B76503782067;
	Tue, 16 Jan 2024 09:55:44 +0000 (UTC)
From: Vignesh Raman <vignesh.raman@collabora.com>
To: dri-devel@lists.freedesktop.org
Cc: daniel@fooishbar.org,
	helen.koike@collabora.com,
	airlied@gmail.com,
	daniel@ffwll.ch,
	david.heidelberg@collabora.com,
	guilherme.gallo@collabora.com,
	sergi.blanch.torne@collabora.com,
	linux-mediatek@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/7] drm/ci: mediatek: Add job to test panfrost and powervr GPU driver
Date: Tue, 16 Jan 2024 15:24:35 +0530
Message-Id: <20240116095439.107324-4-vignesh.raman@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240116095439.107324-1-vignesh.raman@collabora.com>
References: <20240116095439.107324-1-vignesh.raman@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_015550_171683_FA78107C 
X-CRM114-Status: GOOD (  15.06  )
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

For mediatek mt8173, the GPU driver is powervr and for mediatek
mt8183, the GPU driver is panfrost. So add support in drm-ci to
test panfrost and powervr GPU driver for mediatek SOCs and update
xfails. Powervr driver was merged in linux kernel, but there's no
mediatek support yet. So disable the mt8173-gpu job which uses
powervr driver.

Also update the MAINTAINERS file to include xfails for panfrost driver.

Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
---

v2:
  - Add panfrost and PVR GPU jobs for mediatek SOC with new xfails, add xfail
    entry to MAINTAINERS.

---
 MAINTAINERS                                    |  1 +
 drivers/gpu/drm/ci/test.yml                    | 18 ++++++++++++++++++
 .../ci/xfails/panfrost-mt8183-gpu-fails.txt    | 13 +++++++++++++
 3 files changed, 32 insertions(+)
 create mode 100644 drivers/gpu/drm/ci/xfails/panfrost-mt8183-gpu-fails.txt

diff --git a/MAINTAINERS b/MAINTAINERS
index 9d959a6881f7..bcdc17d1aa26 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1645,6 +1645,7 @@ L:	dri-devel@lists.freedesktop.org
 S:	Supported
 T:	git git://anongit.freedesktop.org/drm/drm-misc
 F:	Documentation/gpu/panfrost.rst
+F:	drivers/gpu/drm/ci/xfails/panfrost*
 F:	drivers/gpu/drm/panfrost/
 F:	include/uapi/drm/panfrost_drm.h
 
diff --git a/drivers/gpu/drm/ci/test.yml b/drivers/gpu/drm/ci/test.yml
index e3aaec06a65d..65578427355d 100644
--- a/drivers/gpu/drm/ci/test.yml
+++ b/drivers/gpu/drm/ci/test.yml
@@ -299,6 +299,17 @@ amdgpu:stoney:
     DEVICE_TYPE: mt8183-kukui-jacuzzi-juniper-sku16
     RUNNER_TAG: mesa-ci-x86-64-lava-mt8183-kukui-jacuzzi-juniper-sku16
 
+mediatek:mt8173-gpu:
+  extends:
+    - .mt8173
+  variables:
+    GPU_VERSION: mt8173-gpu
+    DRIVER_NAME: powervr
+  rules:
+    # TODO: powervr driver was merged in linux kernel, but there's no mediatek support yet
+    # Remove the rule once mediatek support is added for powervr
+    - when: never
+
 mediatek:mt8173-display:
   extends:
     - .mt8173
@@ -306,6 +317,13 @@ mediatek:mt8173-display:
     GPU_VERSION: mt8173-display
     DRIVER_NAME: mediatek
 
+mediatek:mt8183-gpu:
+  extends:
+    - .mt8183
+  variables:
+    GPU_VERSION: mt8183-gpu
+    DRIVER_NAME: panfrost
+
 mediatek:mt8183-display:
   extends:
     - .mt8183
diff --git a/drivers/gpu/drm/ci/xfails/panfrost-mt8183-gpu-fails.txt b/drivers/gpu/drm/ci/xfails/panfrost-mt8183-gpu-fails.txt
new file mode 100644
index 000000000000..67d690fc4037
--- /dev/null
+++ b/drivers/gpu/drm/ci/xfails/panfrost-mt8183-gpu-fails.txt
@@ -0,0 +1,13 @@
+kms_addfb_basic@addfb25-bad-modifier,Fail
+kms_bw@linear-tiling-1-displays-2560x1440p,Fail
+kms_bw@linear-tiling-2-displays-1920x1080p,Fail
+kms_bw@linear-tiling-2-displays-2560x1440p,Fail
+kms_bw@linear-tiling-2-displays-3840x2160p,Fail
+kms_bw@linear-tiling-3-displays-2560x1440p,Fail
+kms_bw@linear-tiling-3-displays-3840x2160p,Fail
+kms_color@pipe-A-invalid-gamma-lut-sizes,Fail
+kms_plane_cursor@overlay,Fail
+kms_plane_cursor@primary,Fail
+kms_plane_cursor@viewport,Fail
+kms_plane_scaling@upscale-with-rotation-20x20,Fail
+kms_rmfb@close-fd,Fail
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
