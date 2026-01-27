Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 854D7D2D8F6
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 10:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gke34X7GDrCJJ3LeQuRf3F2Q3aavDPM53ZFt3BKXbAw=; b=HiIcKvoCfIZzob
	PMrZIs0aiSmtSxOsAhsQNiAFvTkrXWt9K3im0YyhIDN824CkIs+gZqhuZSsCe2Wd2t6ulpURoo+iO
	xPl0NciO0NUSpQMIW+CTBEVy0TiI2TgYSYjSXX8SrjLeDJj3swGAy07tUwqSKAXwi5Ml65RNGMAOn
	Jc4Iq+XUYXpu9RnOq+RI2g4Q/LfJWP5KJ+apU28qpr1xLTBIatRg+tUaU7BymE4m8GivyvaOwoKgH
	j6aBkunTe9SaFGbzV+cSbrUcxYHUWp1zDxkAt1sXtLwhle/lnAiySv/PU2oEa5UZhavfhfJJpj+lS
	IV7tn81IXVLFv2aRQC1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkgYt-0000000E5FS-3ayj;
	Tue, 27 Jan 2026 10:44:43 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkgYo-0000000E58J-33QO;
	Tue, 27 Jan 2026 10:44:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1769510675;
	bh=K2y+JopQp3ML1S2HyFFzzOui07CPYp0h2VnhObjlXHY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=okzC/emDwg2m0ZwJ8YgnHjUgdkHIkFydWwQPM/eSkAY+6VO8J2a+u5z9puPzvrPIZ
	 7Pac23Coc06sUKA0H7kiY55KdlmLPP/CYsRByx+gFCP2c063eAM4gQycSsZro60+gZ
	 helDi4bzLttqkZq7cPT4eZXukQTEmhDe3OOXE25/m+YnrIxGI3WqpsbmI4r7bMxk5p
	 vqpAn2EUCCPolL/RHhh5Kv1JV/GDtJSeymaYwwbD0FTAHBmKVFtUblmtcEu8r9N59G
	 qzMCMp/xkzjY1BRYJoKZUxQn4IyvPGgys+c6uZNNQhcehtCGx7R0gKAmmCNdpr2M9L
	 Nt6WSXThva+6w==
Received: from vignesh-thinkpad.. (unknown [171.76.81.211])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 024C517E00AC;
	Tue, 27 Jan 2026 11:44:31 +0100 (CET)
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
Subject: [PATCH v1 4/7] drm/ci: i915: cml: update runner tag
Date: Tue, 27 Jan 2026 16:13:59 +0530
Message-ID: <20260127104406.200505-5-vignesh.raman@collabora.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260127104406.200505-1-vignesh.raman@collabora.com>
References: <20260127104406.200505-1-vignesh.raman@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_024438_947213_B3D5FC86 
X-CRM114-Status: UNSURE (   8.22  )
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

asus-C436FA-Flip-hatch has fewer devices available in the LAVA lab and
drm-ci uses only 2 DUTs, causing tests to time out. Update drm-ci to
use puff instead of hatch so the tests can run on 5 DUTs.

Also increase parallel count for amly jobs to 3.

Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
---
 drivers/gpu/drm/ci/test.yml | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/ci/test.yml b/drivers/gpu/drm/ci/test.yml
index 05eccda6bb9e..b7409f8a13a5 100644
--- a/drivers/gpu/drm/ci/test.yml
+++ b/drivers/gpu/drm/ci/test.yml
@@ -258,7 +258,7 @@ i915:glk:
 i915:amly:
   extends:
     - .i915
-  parallel: 2
+  parallel: 3
   variables:
     DEVICE_TYPE: asus-C433TA-AJ0005-rammus
     GPU_VERSION: amly
@@ -285,11 +285,11 @@ i915:whl:
 i915:cml:
   extends:
     - .i915
-  parallel: 2
+  parallel: 5
   variables:
-    DEVICE_TYPE: asus-C436FA-Flip-hatch
+    DEVICE_TYPE: acer-chromebox-cxi4-puff
     GPU_VERSION: cml
-    RUNNER_TAG: mesa-ci-x86-64-lava-asus-C436FA-Flip-hatch
+    RUNNER_TAG: mesa-ci-x86-64-lava-acer-chromebox-cxi4-puff
 
 i915:tgl:
   extends:
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
