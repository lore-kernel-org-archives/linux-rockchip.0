Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3097C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Nov 2022 15:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B/BeB7ajM07yWt/rJ8rY36Y1GQpdE60rPDXDJwKfA6Q=; b=4lfYvAP5UzoaJ4
	hf3ELnmCMCt8GO+lP7l7qW26GQpm1s0xJ0XNy8YwQG/Li+IplgqD6x1BFR/SjAcEpW3dur5ANAk45
	LteGBq/6cF7CdaIojvmCbDastvYA+kaX0uLhx2kfEgdTTXN5/ZtLDq5m83up3UR/+Mc1X37mVA5mt
	GIzaDgAulZta7BpOdOkiJiF1FnYUehe/na9HUSSSIwtCAkEGtiLSgIEP/l4GBWq75Wg/g8MfUMsrf
	Apz751y9dJdJuI4+NIO+fQVaVKho/lE8Wp0NGm9rCTgvQzpn6SiZhAIJcwfJq8JDukYHskgpcnEwC
	C4IC4AE7HeDO5D2E0GoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqcAt-000O4z-Ao; Thu, 03 Nov 2022 15:30:35 +0000
Received: from smtp-out2.suse.de ([2001:67c:2178:6::1d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqbvy-000GEw-BU; Thu, 03 Nov 2022 15:15:18 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 426EA1F900;
	Thu,  3 Nov 2022 15:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1667488502; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HgxG97nmydzNCVipkHzgPf3aCI1grjy0cqRB+0/Ck74=;
	b=kcgtu9PKiyMKUj8GxwYh+/ORcWz7+UhaRslLpGT/0EYXH4EiaVWbRO1rXX+RnuBF5OjTj2
	Xec3+JBI90xwvAliyOtjTY3B94F0kq3muNjviJe52VZzz9N0Nd9Yc6Mfuv+xD0GBg/lfBm
	F9ORYgDvXcxRapg5A3YBRJRoUxxeEtI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1667488502;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HgxG97nmydzNCVipkHzgPf3aCI1grjy0cqRB+0/Ck74=;
	b=BTICG+mmiOcUdGuFYoU4C0nyEBYhfhmngf4Ev9loTA8Jed/wbNJaxvDDbye+EQL4FS5m+K
	t/wO99a1pUjQkKCQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id B325D13AAF;
	Thu,  3 Nov 2022 15:15:01 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id 8LVrKvXaY2PBGgAAMHmgww
	(envelope-from <tzimmermann@suse.de>); Thu, 03 Nov 2022 15:15:01 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	javierm@redhat.com,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com
Cc: "linux-hyperv@vger.kernel.orglinux-hyperv"@vger.kernel.org,
	linux-aspeed@lists.ozlabs.org, nouveau@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	virtualization@lists.linux-foundation.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-samsung-soc@vger.kernel.org, amd-gfx@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org, xen-devel@lists.xenproject.org,
	linux-sunxi@lists.linux.dev, linux-arm-msm@vger.kernel.org,
	intel-gfx@lists.freedesktop.org, etnaviv@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	spice-devel@lists.freedesktop.org, linux-tegra@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org, freedreno@lists.freedesktop.org,
	Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH v3 23/23] drm/fb-helper: Clarify use of last_close and output_poll_changed
Date: Thu,  3 Nov 2022 16:14:46 +0100
Message-Id: <20221103151446.2638-24-tzimmermann@suse.de>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <20221103151446.2638-1-tzimmermann@suse.de>
References: <20221103151446.2638-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221103_081510_605153_C3F01991 
X-CRM114-Status: GOOD (  12.30  )
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

Clarify documentation in the use of struct drm_driver.last_close and
struct drm_mode_config_funcs.output_poll_changed. Those callbacks should
not be said for fbdev implementations on top of struct drm_client_funcs.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
---
 drivers/gpu/drm/drm_fb_helper.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_fb_helper.c b/drivers/gpu/drm/drm_fb_helper.c
index 5eb2f0d4bf8d4..e0384f967c0b3 100644
--- a/drivers/gpu/drm/drm_fb_helper.c
+++ b/drivers/gpu/drm/drm_fb_helper.c
@@ -89,11 +89,13 @@ static DEFINE_MUTEX(kernel_fb_helper_lock);
  * It will automatically set up deferred I/O if the driver requires a shadow
  * buffer.
  *
- * At runtime drivers should restore the fbdev console by using
+ * Existing fbdev implementations should restore the fbdev console by using
  * drm_fb_helper_lastclose() as their &drm_driver.lastclose callback.
  * They should also notify the fb helper code from updates to the output
  * configuration by using drm_fb_helper_output_poll_changed() as their
- * &drm_mode_config_funcs.output_poll_changed callback.
+ * &drm_mode_config_funcs.output_poll_changed callback. New implementations
+ * of fbdev should be build on top of struct &drm_client_funcs, which handles
+ * this automatically. Setting the old callbacks should be avoided.
  *
  * For suspend/resume consider using drm_mode_config_helper_suspend() and
  * drm_mode_config_helper_resume() which takes care of fbdev as well.
-- 
2.38.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
