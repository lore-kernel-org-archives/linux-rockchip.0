Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19A72C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 13:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qm9jPBprlozjUavEqYSwSHi2GkPWcQ1R3ZvJfIzxlGw=; b=XFPsSypXePMzWY
	hXBYzT+eQBu0oSpDoW3h33PABkqiPBKnz700q6DmEozVvft3XJT0ep71mQfdOPlWkrWZb2/2mX3OH
	6vLoxlnv2d7TobfbVGJ/WEOGjhu3NJ9GnkbkiqYxpQP6lmiyIBypSRJ2Tz5orruffAVBPCd73szef
	M5EnAdFNlzLU49O7bSbLbTfjHKP5VBiF6zJC+Tzp9Y2xt39tb7W5TpeQFH49ERnbsy2C7sqxVRNuc
	qJ5thJP+9elguIC+UfUladP87zSWnJTIE6ja9M9YnaulJz3s3jQB89cyw+A2yI46c/TFdhpwKmWzC
	L13Ego/V5dzDuxyxlGxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Kej-008TJb-27;
	Wed, 29 Nov 2023 13:31:09 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8JXD-008HXz-2y;
	Wed, 29 Nov 2023 12:19:21 +0000
Received: from localhost.localdomain (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 529E16607326;
	Wed, 29 Nov 2023 12:19:15 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701260358;
	bh=H13PVkV6eP93AzIoNhD0cOJWUDbRbvEN1IuP+0EAl74=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=f2BYXI/usX+luXIuDlnTUmGLvpk8aKD8/G+FHPv3JgrCgSadJ5bpWBvxdLiM6jg/R
	 r8j+GuhFzcffI9/LAp6LhVRi0faHRf9iaLDEN1glK36RhTBU1ygBDK17McV1yJNO0W
	 1Y0HxAoeTpWtzumD5kobODYrZalzbCrAS4UnizkLpHbk9thEQ4Mk29aTEksfLq1QQE
	 K8AQX8jhQieOzksaKSWm6qiCJf/6yRBaiem3xCvRV2djSacqnRVmfwvcc+B/kFEKQ/
	 4ryMphd72tdnp1FkwGaGwSbOld8S/77vNqNLzzxpxUVTCsb2uAUdW3QfPA0VHkzFB7
	 vwN4TT51DpuWQ==
From: Vignesh Raman <vignesh.raman@collabora.com>
To: helen.koike@collabora.com,
	airlied@gmail.com,
	daniel@ffwll.ch
Cc: david.heidelberg@collabora.com,
	sergi.blanch.torne@collabora.com,
	guilherme.gallo@collabora.com,
	daniels@collabora.com,
	gustavo.padovan@collabora.com,
	emma@anholt.net,
	robdclark@gmail.com,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	virtualization@lists.linux-foundation.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH v6 06/10] drm: ci: mediatek: Set IGT_FORCE_DRIVER for mt8173
Date: Wed, 29 Nov 2023 17:48:37 +0530
Message-Id: <20231129121841.253223-7-vignesh.raman@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231129121841.253223-1-vignesh.raman@collabora.com>
References: <20231129121841.253223-1-vignesh.raman@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_041920_095138_2C79EBAF 
X-CRM114-Status: GOOD (  10.05  )
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

Expected driver for mt8173 is "mediatek" and for mt8183
it is "panfrost". Set IGT_FORCE_DRIVER to 'mediatek' as
the expected driver for mt8173.

Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
---

v5:
  - Added a new patch in the series to set IGT_FORCE_DRIVER to 'mediatek' for mt8173

v6:
  - Use GPU_VERSION instead of CI_JOB_NAME to check if it is mt8173

---
 drivers/gpu/drm/ci/igt_runner.sh | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/ci/igt_runner.sh b/drivers/gpu/drm/ci/igt_runner.sh
index c6cf963592c5..70a0f84021a1 100755
--- a/drivers/gpu/drm/ci/igt_runner.sh
+++ b/drivers/gpu/drm/ci/igt_runner.sh
@@ -30,6 +30,10 @@ case "$DRIVER_NAME" in
         ;;
 esac
 
+if [ "$GPU_VERSION" = "mt8173" ]; then
+    export IGT_FORCE_DRIVER=${DRIVER_NAME}
+fi
+
 if [ -e "/install/xfails/$DRIVER_NAME-$GPU_VERSION-skips.txt" ]; then
     IGT_SKIPS="--skips /install/xfails/$DRIVER_NAME-$GPU_VERSION-skips.txt"
 fi
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
