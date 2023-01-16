Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 455FEC46467
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jan 2023 13:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FuQBX0vlg2y1yOBbDfAN9jE0yMDXZbbe2r8SOGUAv8g=; b=BmBDGaffL3XFxG
	6+9cj7T36grn05fBP51Tg46LPH6S5W1JDC3f1972DOZihqc81JPwIPOUKklu8kQtORCRUktb5Dg7H
	nsiQlefzI6G92muQvvTF508uK/x2WyBdgwepQp/JDQnzQjkHrhnTb5/I2DlI8SCF124jvt2bZ4bIP
	adesPhxOxSLUu99gbAIOeqqO7v2miBIYQ6S+PDhK2R7qaL4+hueoVTwV/kLT223sKrAEAJ/thqx9L
	rOnOWjr3+G3xTvO2gqq2+70wwYB/MLpY8n8O6tjzdPWEZvg4B1Ac0qThHF7/AosH/B9B7JIpxY1Cg
	u+xhnwfhFkj53F1s4Wfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPTP-00AOg4-U4; Mon, 16 Jan 2023 13:24:28 +0000
Received: from smtp-out2.suse.de ([2001:67c:2178:6::1d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPI1-00AJqs-Ut; Mon, 16 Jan 2023 13:12:44 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 6377167773;
	Mon, 16 Jan 2023 13:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1673874757; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
	bh=YQ1YlOVInu6WsLhZgXbEIaFPrF+YO75TAo9I3Omn8lU=;
	b=Dkv3ssXgPwtN3kjuLt7Xxr/dpn86Y80sgPw+gQlpFgefvho7hRs6ljDYQCyek6cMEtIUnp
	SGEO72jh9B2QUiQxGcZyPKQaYAjaBkQX6BEYNtY97jAsb7ULX/NOuF6qTPbpybqJn3siaP
	eD2uYvokqxFn1uMu5oUg76PGtAveSj0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1673874757;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
	bh=YQ1YlOVInu6WsLhZgXbEIaFPrF+YO75TAo9I3Omn8lU=;
	b=YKR9ZNdxeA1F59bn4EWw8CGDO8y6VBcLVvAazzlL5QGqy3h8+ATlpHDblpJITTnrXS4Km0
	xUgsEi/Z9reSwIDw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 1E2A3138FA;
	Mon, 16 Jan 2023 13:12:37 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id CRPmBUVNxWNrNQAAMHmgww
	(envelope-from <tzimmermann@suse.de>); Mon, 16 Jan 2023 13:12:37 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: sam@ravnborg.org,
	daniel@ffwll.ch,
	airlied@gmail.com
Cc: dri-devel@lists.freedesktop.org,
	amd-gfx@lists.freedesktop.org,
	linux-aspeed@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mips@vger.kernel.org,
	nouveau@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH 00/22] drm: Remove includes for drm_crtc_helper.h
Date: Mon, 16 Jan 2023 14:12:13 +0100
Message-Id: <20230116131235.18917-1-tzimmermann@suse.de>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_051242_223456_2D931A7D 
X-CRM114-Status: GOOD (  10.06  )
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

A lot of source files include drm_crtc_helper.h for its contained
include statements. This leads to excessive compile-time dependencies.

Where possible, remove the include statements for drm_crtc_helper.h
and include the required source files directly. Also remove the
include statements from drm_crtc_helper.h itself, which doesn't need
most of them.

I built this patchset on x86-64, aarch64 and arm. Hopefully I found
all include dependencies.

Thanks to Sam Ravnborg for bringing this to my attention.

Thomas Zimmermann (22):
  drm/amdgpu: Fix coding style
  drm: Remove unnecessary include statements for drm_crtc_helper.h
  drm/amdgpu: Remove unnecessary include statements for
    drm_crtc_helper.h
  drm/arm/komeda: Remove unnecessary include statements for
    drm_crtc_helper.h
  drm/aspeed: Remove unnecessary include statements for
    drm_crtc_helper.h
  drm/ast: Remove unnecessary include statements for drm_crtc_helper.h
  drm/bridge: Remove unnecessary include statements for
    drm_crtc_helper.h
  drm/gma500: Remove unnecessary include statements for
    drm_crtc_helper.h
  drm/i2c/ch7006: Remove unnecessary include statements for
    drm_crtc_helper.h
  drm/ingenic: Remove unnecessary include statements for
    drm_crtc_helper.h
  drm/kmb: Remove unnecessary include statements for drm_crtc_helper.h
  drm/logicvc: Remove unnecessary include statements for
    drm_crtc_helper.h
  drm/nouveau: Remove unnecessary include statements for
    drm_crtc_helper.h
  drm/radeon: Remove unnecessary include statements for
    drm_crtc_helper.h
  drm/rockchip: Remove unnecessary include statements for
    drm_crtc_helper.h
  drm/shmobile: Remove unnecessary include statements for
    drm_crtc_helper.h
  drm/sprd: Remove unnecessary include statements for drm_crtc_helper.h
  drm/sun4i: Remove unnecessary include statements for drm_crtc_helper.h
  drm/tidss: Remove unnecessary include statements for drm_crtc_helper.h
  drm/udl: Remove unnecessary include statements for drm_crtc_helper.h
  drm/vboxvideo: Remove unnecessary include statements for
    drm_crtc_helper.h
  drm/crtc-helper: Remove most include statements from drm_crtc_helper.h

 drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c     |  2 ++
 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c         |  5 +++--
 drivers/gpu/drm/amd/amdgpu/amdgpu_display.c        |  1 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_encoders.c       |  1 -
 drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c            |  1 -
 drivers/gpu/drm/amd/amdgpu/amdgpu_mode.h           |  1 -
 drivers/gpu/drm/amd/amdgpu/atombios_crtc.c         |  1 -
 drivers/gpu/drm/amd/amdgpu/atombios_encoders.c     |  1 -
 drivers/gpu/drm/amd/amdgpu/dce_v10_0.c             |  2 ++
 drivers/gpu/drm/amd/amdgpu/dce_v11_0.c             |  2 ++
 drivers/gpu/drm/amd/amdgpu/dce_v6_0.c              |  2 ++
 drivers/gpu/drm/amd/amdgpu/dce_v8_0.c              |  2 ++
 drivers/gpu/drm/arm/display/komeda/komeda_crtc.c   |  1 -
 drivers/gpu/drm/arm/display/komeda/komeda_kms.h    |  1 -
 drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c           |  1 -
 drivers/gpu/drm/aspeed/aspeed_gfx_drv.c            |  1 -
 drivers/gpu/drm/aspeed/aspeed_gfx_out.c            |  1 -
 drivers/gpu/drm/ast/ast_drv.c                      |  1 -
 drivers/gpu/drm/ast/ast_main.c                     |  1 -
 drivers/gpu/drm/ast/ast_mode.c                     |  1 -
 drivers/gpu/drm/bridge/analogix/analogix-anx6345.c |  1 -
 drivers/gpu/drm/bridge/analogix/anx7625.c          |  1 -
 .../gpu/drm/bridge/cadence/cdns-mhdp8546-core.c    |  1 -
 drivers/gpu/drm/bridge/ite-it6505.c                |  1 -
 drivers/gpu/drm/bridge/ite-it66121.c               |  1 -
 drivers/gpu/drm/bridge/tc358768.c                  |  1 -
 drivers/gpu/drm/bridge/tc358775.c                  |  1 -
 drivers/gpu/drm/drm_crtc_helper.c                  |  1 -
 drivers/gpu/drm/drm_lease.c                        |  2 +-
 drivers/gpu/drm/drm_plane_helper.c                 |  1 -
 drivers/gpu/drm/gma500/cdv_device.c                |  1 +
 drivers/gpu/drm/gma500/cdv_intel_crt.c             |  2 ++
 drivers/gpu/drm/gma500/cdv_intel_display.c         |  1 +
 drivers/gpu/drm/gma500/cdv_intel_dp.c              |  1 +
 drivers/gpu/drm/gma500/cdv_intel_hdmi.c            |  2 ++
 drivers/gpu/drm/gma500/cdv_intel_lvds.c            |  2 ++
 drivers/gpu/drm/gma500/framebuffer.c               |  2 ++
 drivers/gpu/drm/gma500/gma_display.c               |  2 ++
 drivers/gpu/drm/gma500/oaktrail_crtc.c             |  1 +
 drivers/gpu/drm/gma500/oaktrail_hdmi.c             |  2 ++
 drivers/gpu/drm/gma500/oaktrail_lvds.c             |  1 +
 drivers/gpu/drm/gma500/psb_device.c                |  1 +
 drivers/gpu/drm/gma500/psb_intel_display.c         |  3 +++
 drivers/gpu/drm/gma500/psb_intel_drv.h             |  1 -
 drivers/gpu/drm/gma500/psb_intel_lvds.c            |  2 ++
 drivers/gpu/drm/gma500/psb_intel_sdvo.c            |  2 ++
 drivers/gpu/drm/i2c/ch7006_drv.c                   |  2 ++
 drivers/gpu/drm/i2c/ch7006_priv.h                  |  1 -
 drivers/gpu/drm/ingenic/ingenic-drm-drv.c          |  1 -
 drivers/gpu/drm/kmb/kmb_crtc.c                     |  1 -
 drivers/gpu/drm/kmb/kmb_plane.c                    |  1 -
 drivers/gpu/drm/logicvc/logicvc_interface.c        |  1 -
 drivers/gpu/drm/logicvc/logicvc_mode.c             |  1 -
 drivers/gpu/drm/nouveau/dispnv04/crtc.c            |  1 +
 drivers/gpu/drm/nouveau/dispnv04/dac.c             |  2 +-
 drivers/gpu/drm/nouveau/dispnv04/dfp.c             |  2 +-
 drivers/gpu/drm/nouveau/dispnv04/tvmodesnv17.c     |  1 -
 drivers/gpu/drm/nouveau/dispnv04/tvnv04.c          |  2 +-
 drivers/gpu/drm/nouveau/dispnv04/tvnv17.c          |  1 +
 drivers/gpu/drm/nouveau/dispnv50/head.c            |  1 -
 drivers/gpu/drm/nouveau/nouveau_drm.c              |  1 -
 drivers/gpu/drm/nouveau/nouveau_vga.c              |  1 -
 drivers/gpu/drm/radeon/atombios_crtc.c             |  2 +-
 drivers/gpu/drm/radeon/atombios_encoders.c         |  1 +
 drivers/gpu/drm/radeon/r300.c                      |  1 -
 drivers/gpu/drm/radeon/radeon_asic.c               |  1 -
 drivers/gpu/drm/radeon/radeon_connectors.c         |  1 +
 drivers/gpu/drm/radeon/radeon_display.c            |  1 +
 drivers/gpu/drm/radeon/radeon_drv.c                |  1 -
 drivers/gpu/drm/radeon/radeon_encoders.c           |  1 -
 drivers/gpu/drm/radeon/radeon_irq_kms.c            |  1 -
 drivers/gpu/drm/radeon/radeon_legacy_crtc.c        |  2 +-
 drivers/gpu/drm/radeon/radeon_legacy_encoders.c    |  2 +-
 drivers/gpu/drm/radeon/radeon_legacy_tv.c          |  1 -
 drivers/gpu/drm/radeon/radeon_mode.h               |  2 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c       |  1 -
 drivers/gpu/drm/shmobile/shmob_drm_crtc.c          |  2 ++
 drivers/gpu/drm/shmobile/shmob_drm_drv.c           |  1 -
 drivers/gpu/drm/shmobile/shmob_drm_plane.c         |  1 -
 drivers/gpu/drm/sprd/sprd_dpu.c                    |  1 -
 drivers/gpu/drm/sprd/sprd_drm.c                    |  1 -
 drivers/gpu/drm/sprd/sprd_dsi.c                    |  1 -
 drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c              |  2 +-
 drivers/gpu/drm/tidss/tidss_crtc.c                 |  1 -
 drivers/gpu/drm/tidss/tidss_drv.c                  |  1 -
 drivers/gpu/drm/tidss/tidss_encoder.c              |  2 +-
 drivers/gpu/drm/tidss/tidss_kms.c                  |  1 -
 drivers/gpu/drm/tidss/tidss_plane.c                |  1 -
 drivers/gpu/drm/udl/udl_drv.c                      |  2 +-
 drivers/gpu/drm/udl/udl_modeset.c                  |  1 -
 drivers/gpu/drm/vboxvideo/vbox_drv.c               |  2 +-
 drivers/gpu/drm/vboxvideo/vbox_main.c              |  1 -
 include/drm/drm_crtc_helper.h                      | 14 +++++++++-----
 include/drm/drm_fixed.h                            |  1 +
 94 files changed, 70 insertions(+), 70 deletions(-)


base-commit: 68d139b609a97a83e7c231189d4864aba4e1679b
prerequisite-patch-id: 0aa359f6144c4015c140c8a6750be19099c676fb
prerequisite-patch-id: c67e5d886a47b7d0266d81100837557fda34cb24
prerequisite-patch-id: 3f204510fcbf9530d6540bd8e6128cce598988b6
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
