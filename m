Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA0D9606A321
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 20:45:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=S7tGiQj9;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=timsurber.de header.i=@timsurber.de header.a=rsa-sha256 header.s=MBO0001 header.b=MuC/HUpP
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=2VTMQMY+WhkoIZC7XsRwCb6af1aQ10zktAsSMDVvFqw=; b=S7tGiQj9VG9PBM27x409H7jV2c
	wZ+Ww6lnRTz8BTo2Te9PXtPTfq3tPWpHTiysqDw9HK73v5oF25jq35SKmozXFztS0/MAi/kJvaRUY
	2wFd2SSSP7kRXtrI5Q57iLq2EiZb/6mVkpwxsHMCPxz+4J50Y/ihQLb+c6uOm3vZPHt/4EumaLFei
	AdtoZZ5ITZqQvD8MUKtZm1v1IJJDojpAOKJmJvoCffr9RQPrgMZswAhIJG6LanHKqawloZn8NoOEf
	r3qFUdP3P/3sOTjIxkkQac0P6+HPp/Ade3rTQPG4BX/TD/TJqd75Bz7xPXe5JSrD/Vpj5Iq4W2Xg0
	LfBxuR/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWJs3-0000000BIrN-3slN;
	Wed, 25 Nov 2026 20:45:39 +0000
Received: from mout-p-202.mailbox.org ([80.241.56.172])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWJrz-0000000BIqd-3qDu;
	Wed, 25 Nov 2026 20:45:37 +0000
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519MLKEM768 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4jZWsQ2xwvzMlvw;
	Wed, 25 Nov 2026 21:45:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=timsurber.de;
	s=MBO0001; t=1795639530;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=wFxbp9GWj8PRFEAiH5lFdlGEgH2PeiEbxgFBhgBZw8s=;
	b=MuC/HUpP+Qth1WdDD2K+Gla4bENN0jDjBLcnQT6FyWtM9x2rxJyd83UKS4U5UNTo/5Ugc2
	5cw6wXtLKcaB1olb9XQeNaACNsIUvuFMr+LYppqgOppzNe/9NglaLe6T9hOrjzYV1gr3u3
	OnWcpqazZWpu2Rh5NuNtDwyw3wxsU1Np9oiW+S/4zHYCNn7RY25LGq2I+ySeFFp8EvikJ+
	K1CH8oHhOTsk8BSeZQTSkpN8ysfDPIg9lNK8FRWp6currzWHDZiW+RKgSEE91XpFCaZcK+
	ybq2sB/Np2G5NwHfWhO1dPWsdf0hGWolgoyUZMAeBrBr1/NpNfhkXsdYi/5qaQ==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of me@timsurber.de designates 2001:67c:2050:b231:465::202 as permitted sender) smtp.mailfrom=me@timsurber.de
From: Tim Surber <me@timsurber.de>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] drm/rockchip: vop2: Reset the AXI master in vop2_enable()
Date: Wed, 25 Nov 2026 21:45:08 +0100
Message-ID: <20261125204511.2867433-1-me@timsurber.de>
X-Mailer: git-send-email 2.55.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 4jZWsQ2xwvzMlvw
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_124536_412148_8A03E0CE 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andyshrk@163.com>, dri-devel@lists.freedesktop.org, Tim Surber <me@timsurber.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, Daniel Stone <daniel@fooishbar.org>, Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, Maxime Ripard <mripard@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Asserting the AXI reset in vop2_disable(), while the IOMMU is still
attached, can hang RK3588 hard when buffers are mapped into or unmapped
from the VOP's IOMMU domain at the same time, e.g. when a KMS client
exits and fbcon takes the display back.

Do the reset in vop2_enable() instead, before the IOMMU is attached,
where the AXI master is idle.

Fixes: 67a391e50271 ("drm/rockchip: vop2: Reset AXI and DCLK to improve robustness")
Signed-off-by: Tim Surber <me@timsurber.de>
---

On my RK3588 board (FriendlyElec CM3588) the AXI reset in vop2_disable()
sometimes hangs the SoC hard when the last CRTC is switched off. Without
the reset there, it does not happen.

Here is a minimal reproducer. Run it as root, with a display on HDMI and
fbcon on it:

  python3 - <<'EOF' &
  import fcntl, os, struct
  fd = os.open("/dev/dri/by-path/platform-display-subsystem-card", os.O_RDWR)
  try:
      fcntl.ioctl(fd, 0x641F)        # DRM_IOCTL_DROP_MASTER: leave KMS to fbcon
  except OSError:
      pass
  while True:
      b = bytearray(struct.pack("6IQ", 2160, 3840, 32, 0, 0, 0, 0))
      fcntl.ioctl(fd, 0xC02064B2, b)                         # DRM_IOCTL_MODE_CREATE_DUMB
      handle = struct.unpack("6IQ", b)[4]
      fcntl.ioctl(fd, 0xC00464B4, struct.pack("I", handle))  # DRM_IOCTL_MODE_DESTROY_DUMB
  EOF
  while :; do
  	echo 4 > /sys/class/graphics/fb0/blank; sleep 0.3
  	echo 0 > /sys/class/graphics/fb0/blank; sleep 0.7
  done

Without this patch the board hangs within a few blank cycles. With it,
300 cycles ran without a hang.


 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 76d151b8bc52..a86ac9173aac 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -913,6 +913,9 @@ static int vop2_enable(struct vop2 *vop2)
 	if (ret)
 		goto err_put_pm;
 
+	/* Reset while idle; doing it in vop2_disable() can hang the SoC */
+	vop2_reset_assert_deassert(vop2, vop2->axi_rst);
+
 	ret = rockchip_drm_dma_attach_device(vop2->drm, vop2->dev);
 	if (ret) {
 		drm_err(vop2->drm, "failed to attach dma mapping: %d\n", ret);
@@ -973,8 +976,6 @@ static int vop2_enable(struct vop2 *vop2)
 
 static void vop2_disable(struct vop2 *vop2)
 {
-	vop2_reset_assert_deassert(vop2, vop2->axi_rst);
-
 	rockchip_drm_dma_detach_device(vop2->drm, vop2->dev);
 
 	regcache_drop_region(vop2->map, 0, vop2_regmap_config.max_register);

base-commit: 479e381e77dcde0dfcc9d51e89ff3273da199804
-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
