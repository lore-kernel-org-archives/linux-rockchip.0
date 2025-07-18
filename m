Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43DADC83F1A
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jul 2025 11:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+AVnKlNBtVpU4Sf2ZwUPO2rGK7XsBYXfH7jaJOnz+0o=; b=0ubd6Q0TfN97dG
	er3pgfUJQvkC8ywUMAED33UtdqXu6q8UJ/aAOLfaLWXRZnQq9sIgMQraPSevm1XfCRtA+eitB1jtA
	56S/27WvIwI06t6qRjoG7J1v6+A6nxXd1bq9vcP13ofva9c5/LvPBQPh7jUQnGvM1iWxCwGctyvZN
	dzH+PZgoMvsjM83jCGeNroytlhT+XTLRVubZBoDaWSCx3pfG4HPmG17QloRoi8DMNxH+2MXrSCHDH
	HUNMIcJ/uJWWdRXMrBBlBBEHvLJvbuoMcz2E/kQDXuO1u9iSuKHoUfNa6QzHGX9GKa2Q3GpRQ0Ar6
	b42yis9whWu6jmwTJMgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucjFK-0000000CQoV-1m4m;
	Fri, 18 Jul 2025 11:27:22 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucijR-0000000CMI1-06e5;
	Fri, 18 Jul 2025 10:54:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1752836063;
	bh=k7CAZOnVX3McTF9rA6EaJjI3tqH2gxRiw0k5BhFfu+k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Sjynf/u+D9SjkEYOCSDJrxhLi8UWPgyv13WkmDPUqBdHSgA888JhJLdg2oy4ObMt9
	 KYovrzdWiDYVeLa6c/50qDU4SmZUkqP4hdwseHAWYqUiWl9/DLSMkdg/eHjqBXq3V0
	 76icLc08zdr3iH8cQQnP3A3TndrdxnqI6Cmnqdkyh8Y5BRBOLwHTMH0bacvHfMhe6u
	 IMFfDQ7HPmWFgWTe9AEcT9oOMstEHna+guZKMatkjZkjXJJq9RA01Zr/bWQ7IOaSeV
	 dwZJdK6I2M1V9A4pWQ7OUaRAJxUnSC/SMxapeKOdL1pFzZPKZ3IBVSK0VJoykx9kOd
	 sz9xgKfJK5huw==
Received: from debian.. (unknown [171.76.80.183])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C2D9217E156C;
	Fri, 18 Jul 2025 12:54:19 +0200 (CEST)
From: Vignesh Raman <vignesh.raman@collabora.com>
To: dri-devel@lists.freedesktop.org
Cc: daniels@collabora.com,
	helen.fornazier@gmail.com,
	airlied@gmail.com,
	simona.vetter@ffwll.ch,
	robdclark@gmail.com,
	guilherme.gallo@collabora.com,
	sergi.blanch.torne@collabora.com,
	valentine.burley@collabora.com,
	lumag@kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	amd-gfx@lists.freedesktop.org,
	linux-arm-msm@vger.kernel.org,
	intel-gfx@lists.freedesktop.org,
	virtualization@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/7] drm/ci: disable apq8016 and apq8096 bare-metal jobs
Date: Fri, 18 Jul 2025 16:23:53 +0530
Message-ID: <20250718105407.32878-2-vignesh.raman@collabora.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250718105407.32878-1-vignesh.raman@collabora.com>
References: <20250718105407.32878-1-vignesh.raman@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_035425_206368_6D922972 
X-CRM114-Status: UNSURE (   8.40  )
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

These devices are being moved to LAVA. The jobs will be enabled and the
job definitions will be updated once the move is complete.

Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
---
 drivers/gpu/drm/ci/test.yml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/ci/test.yml b/drivers/gpu/drm/ci/test.yml
index 81147e86bfd0..53d19ffaaf61 100644
--- a/drivers/gpu/drm/ci/test.yml
+++ b/drivers/gpu/drm/ci/test.yml
@@ -148,7 +148,9 @@ msm:sc7180-trogdor-kingoftown:
     GPU_VERSION: ${DEVICE_TYPE}
     RUNNER_TAG: mesa-ci-x86-64-lava-sc7180-trogdor-kingoftown
 
-msm:apq8016:
+# FIXME: Disable the bare-metal jobs. These devices are being moved to LAVA.
+# Once the move is complete, update the job definitions accordingly.
+.msm:apq8016:
   extends:
     - .baremetal-igt-arm64
   stage: msm
@@ -165,7 +167,7 @@ msm:apq8016:
   script:
     - ./install/bare-metal/fastboot.sh || exit $?
 
-msm:apq8096:
+.msm:apq8096:
   extends:
     - .baremetal-igt-arm64
   stage: msm
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
