Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2445EB64D8
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jun 2023 12:12:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a8uQsPmEl39WaaqKxyNeCdTEGT5BCK8bydcLzEZVJck=; b=IKNTXGPAG3TtjO
	hf+SiBbZ3E5iF7SflDAj6up3XkbP+3Rvg789fb1eTGOHmJJe0qfIZnq7v4c/zwVtx93MxcdzBMXjJ
	iPWSdJNcYfoqHLsflTFF57Lzr4COAzWGRpd9a2EhhbafZvL+gcLBvDc5Dt/zQsi1idXAy0dmHLjsz
	qI16ZrbMqn2bxmmAs7BAppAN5p6OeuiJcsKXo6bKe85kwa8oP6glIKpKC5S5jJjeCRI67hYriXyVn
	doj5RmrsGcZ2etNYiQZ3xCSlrbn4NFLq767BKQgkqkAj7dK5dnPkz3B9wMnLxp08oeNonVfwetwpg
	fDgyZ3pMtfF84L4+zSIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBaDe-00BDFR-2l;
	Tue, 20 Jun 2023 12:12:22 +0000
Received: from smtp-out1.suse.de ([195.135.220.28])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBaDV-00BDA1-1D;
	Tue, 20 Jun 2023 12:12:14 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id B9B15218B8;
	Tue, 20 Jun 2023 12:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1687263124; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
	bh=klSNIOMbt2VL2IyeeNqCr1hM5B19djKU9H3/vvK7FQg=;
	b=2NI7rDj5mjvU+SS+6fB9z3ssN41PLgFpMEGRPkW2+zlQJtWldsxvxtDrgKUVocLZ7i8xPI
	eRh/SCE4gO8snzDKtnC8/KqUgaX/ZunztIL23NX1Q13QalikGJGjc9w7R0lIZyEAiTHC8Z
	shTIWn0/7cKK4cI6ckdxaOvBflWgnFo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1687263124;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
	bh=klSNIOMbt2VL2IyeeNqCr1hM5B19djKU9H3/vvK7FQg=;
	b=yjTBhDw2CJ+t5LUSt0Vo4hm+neJ2kNNiHAsydeV2D87o9qlkRS4NTFWIz0Cn7ie7+8sBHj
	4H1ImVdQLmaZNEAA==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 659DE133A9;
	Tue, 20 Jun 2023 12:12:04 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id 8prYF5SXkWSwEQAAMHmgww
	(envelope-from <tzimmermann@suse.de>); Tue, 20 Jun 2023 12:12:04 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	airlied@gmail.com,
	daniel@ffwll.ch,
	laurent.pinchart@ideasonboard.com,
	kieran.bingham+renesas@ideasonboard.com,
	hjc@rock-chips.com,
	heiko@sntech.de
Cc: dri-devel@lists.freedesktop.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH 0/3] drm/gem-dma: Remove unnecessary calls
Date: Tue, 20 Jun 2023 14:03:20 +0200
Message-ID: <20230620121202.28263-1-tzimmermann@suse.de>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_051213_561035_72961767 
X-CRM114-Status: UNSURE (   8.13  )
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

Remove rockchip's dependency on GEM DMA helpers. Rework the GEM DMA
interface to fit the needs of rcar-du.

This intends to be a cleanup with no functional changes. With the
patches merged, a later patchset can attempt to generate some of the
boiler-plate code for struct drm_gem_object_funcs automatically.

Thomas Zimmermann (3):
  drm/rcar-du: Import buffers with GEM DMA's helpers
  drm/rockchip: Resolve dependency in GEM DMA helpers
  drm/gem-dma: Unexport drm_gem_dma_vm_ops

 drivers/gpu/drm/drm_gem_dma_helper.c          | 16 ++++-----
 drivers/gpu/drm/renesas/rcar-du/rcar_du_kms.c | 33 +++----------------
 drivers/gpu/drm/rockchip/Kconfig              |  1 -
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c   |  2 +-
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c   |  8 +++--
 include/drm/drm_gem_dma_helper.h              |  5 +--
 6 files changed, 22 insertions(+), 43 deletions(-)


base-commit: 32e260cd0d16cee6f33e747679f168d63ea54bf6
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
