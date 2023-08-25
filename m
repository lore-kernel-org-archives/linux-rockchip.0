Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 695C6C71133
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Aug 2023 12:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3jmS6k0IYe7L89x/2qMsr1mhoe1LRh045epTFdCfd6c=; b=DyY0v6I2MUbMxB
	kWHhUNWnb2ABCwHzKDVXRMVtee7DXvZpDl8Mmbn36cGlI0p54iuS8ZHXgK/JC6utlysBHsAvLcYou
	oYE2uaEZAZcJfBkrvk4/OVQvYSK05fMsQvTZr5PR/oBGf/Rb/sdW0g7lDp6kmdBlmFFNXFsJbkRDq
	JGRJFN/xbb2S2wtzryf2L06SJ8OEHnRItFEt203tIqLkNfQF5EWwYRreXK/W8NUY7XLg0DJ+mMR8J
	bSeTqgG3jUswxyMRI4bCi/pWNuQ3MMmfVDLIwsvUxIzDGSSm7Znu6eXNDFF06iTaAiFSb1yLXXRWL
	SSx8qLVliSHQKsM43cyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZVsi-005Nex-32;
	Fri, 25 Aug 2023 12:25:40 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZVsT-005NQ0-38;
	Fri, 25 Aug 2023 12:25:27 +0000
Received: from localhost.localdomain (unknown [171.76.83.99])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0FE3A66003AF;
	Fri, 25 Aug 2023 13:25:12 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1692966319;
	bh=TpGrWMGej0KBkC2cyx/cKNP7OiA71j36BN5VYiAV3VQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lLD0NsYOtZxkf6mo7eBz2gg4lh/Hts/J+xwR0xidciO0+8t6vmsW6mU5cIWp0RorF
	 uYA2DJ2b+S6KG+U2G011MxglW9/LR4+7ccKk4lh3PB2CABk4JjO4USHA+iqKAn2/Gp
	 Ti7gBCddTdOeNo5uYyS8nnYqPguYXthsgD0UN19xFJqkJMd1fnvIRFCzUchjcydB1t
	 eHeCpes/MnmqAp4bMjLCxLK+ZF+FCfEvcnWhxXV2E3c52uRnOPsJZI+cRLWVGsjR7A
	 Wg+DISGx2Q8555JPHiV0I56CzPnwwbOAi+AQWZdq1kSCYYd1lRl+R2ZAxJPyF3ja4j
	 nC8AITdtXb1iw==
From: Vignesh Raman <vignesh.raman@collabora.com>
To: dri-devel@lists.freedesktop.org
Cc: helen.koike@collabora.com,
	guilherme.gallo@collabora.com,
	sergi.blanch.torne@collabora.com,
	david.heidelberg@collabora.com,
	daniels@collabora.com,
	emma@anholt.net,
	robclark@freedesktop.org,
	gustavo.padovan@collabora.com,
	robdclark@google.com,
	anholt@google.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	corbet@lwn.net,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	neil.armstrong@linaro.org,
	khilman@baylibre.com,
	jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com,
	heiko@sntech.de,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 3/6] drm: ci: virtio: update ci variables
Date: Fri, 25 Aug 2023 17:54:32 +0530
Message-Id: <20230825122435.316272-4-vignesh.raman@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230825122435.316272-1-vignesh.raman@collabora.com>
References: <20230825122435.316272-1-vignesh.raman@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_052526_252406_8C030D94 
X-CRM114-Status: UNSURE (   8.73  )
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

Update ci variables to fix the below error,
ERROR - Igt error: malloc(): corrupted top size
ERROR - Igt error: Received signal SIGABRT.
ERROR - Igt error: Stack trace:
ERROR - Igt error:  #0 [fatal_sig_handler+0x17b]

Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
---
 drivers/gpu/drm/ci/test.yml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/ci/test.yml b/drivers/gpu/drm/ci/test.yml
index 6473cddaa7a9..d85add39f425 100644
--- a/drivers/gpu/drm/ci/test.yml
+++ b/drivers/gpu/drm/ci/test.yml
@@ -316,8 +316,11 @@ virtio_gpu:none:
   stage: virtio-gpu
   variables:
     CROSVM_GALLIUM_DRIVER: llvmpipe
-    DRIVER_NAME: virtio_gpu
+    DRIVER_NAME: virtio
     GPU_VERSION: none
+    CROSVM_MEMORY: 12288
+    CROSVM_CPU: $FDO_CI_CONCURRENT
+    CROSVM_GPU_ARGS: "vulkan=true,gles=false,backend=virglrenderer,egl=true,surfaceless=true"
   extends:
     - .test-gl
   tags:
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
