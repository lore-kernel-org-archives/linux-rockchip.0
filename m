Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A64FDC7114A
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jun 2025 09:07:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K1ttn3U+hSnDpONmTJ0UNvOOtRrX2FE59qi72GcaHps=; b=C8axmp7Ea/i6Ds
	0oRFp0rX8SReZp7ELO9N6lz9GVS6pxdNKe9rYi2cKMyS9n/OjXig8EnBk8aV8e/FCzS/FXv4B2nDU
	L3S2O/CM2OSzQltML8gq3GNAjBVSs2IC8tdolc41SVzuozi/f3VmFxe9nboR0lA9Z0Ei4lnx7M6a+
	VVM9R2EAsN8XK4mZeyU3juQJ6QzMJyzboHyNAR7Lx3sjBmnwNJhvmAoRjjZFuI15Qv4LtN7CAL/Xk
	pLymUw+qMuvBJilhDamExFyNVLgYrVmbWse4oVxoTyGlCaYndYK16oJJ0dkt3nDmQecQyVh+FWCsb
	e9ZCyLQ6C6w/GZIacV1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ0O7-0000000FrTV-3gfk;
	Fri, 13 Jun 2025 09:07:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ0Ls-0000000Fqnb-0P72
	for linux-rockchip@bombadil.infradead.org;
	Fri, 13 Jun 2025 09:05:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=+oWjsDNgdReLHPGufgsHjLYvUDgBPaSeIOftSSBGais=; b=k6j6r07ghMNwgcPzMX76y4VPJX
	ZciYDaMzQeMxZmRqOBM/oCWVATOX8jmPRLAMk/yprtyOAqguWl+9MFKnmSYs2y4U7yqzbflaziNCr
	5ng37Al7Dj9g/0lwIJ2czGjvUrQc+hwEjMGYd4F470NmfW5ZZcNUxcarYEBmY6skCKznYDNsEYonv
	vHLIDU0/DAqHJBFzXMyQIk6RUV+whvrlY5nhB6QJfYqsAqw4OdsVbVDrwiwwcJ6vhnZvmWTGM3PHk
	jGsp2ALjxLrI78wi5b4h8pMjYlwD0pfoBTrF8ydRmt+GgQtCYUrDRb4rmoGQ4QtuQ1uOqcfsV8/A0
	HwFqSeSA==;
Received: from smtp-out2.suse.de ([195.135.223.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ0Lp-00000002wem-0Ijk
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Jun 2025 09:05:31 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 4D6B41F895;
	Fri, 13 Jun 2025 09:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1749805484; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+oWjsDNgdReLHPGufgsHjLYvUDgBPaSeIOftSSBGais=;
	b=qjLrb0YO0OF5O9AFMpCwomhReVKLz63s4i9lKJrRQsNHCGxESOqzXhcg1CzLFVrRd12gje
	tzfM1Ell3cs1WWVCxcPzz6h/A/YnhZwlJQ50LFcz2g+ueN8SMlpNkOH4DtU7JqhBWud+tx
	0zaJceZSxCYW3niXkor7BJrUlToMCLY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1749805484;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+oWjsDNgdReLHPGufgsHjLYvUDgBPaSeIOftSSBGais=;
	b=08AGzz8DatzqiXtEB4eGagQF9jhX4EZNT7LnLDw79E/lVF4qUOO2AeqK2PmHT5oiUz8Spu
	ozACi3IetRMlmKDg==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1749805484; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+oWjsDNgdReLHPGufgsHjLYvUDgBPaSeIOftSSBGais=;
	b=qjLrb0YO0OF5O9AFMpCwomhReVKLz63s4i9lKJrRQsNHCGxESOqzXhcg1CzLFVrRd12gje
	tzfM1Ell3cs1WWVCxcPzz6h/A/YnhZwlJQ50LFcz2g+ueN8SMlpNkOH4DtU7JqhBWud+tx
	0zaJceZSxCYW3niXkor7BJrUlToMCLY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1749805484;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+oWjsDNgdReLHPGufgsHjLYvUDgBPaSeIOftSSBGais=;
	b=08AGzz8DatzqiXtEB4eGagQF9jhX4EZNT7LnLDw79E/lVF4qUOO2AeqK2PmHT5oiUz8Spu
	ozACi3IetRMlmKDg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id A519C137FE;
	Fri, 13 Jun 2025 09:04:43 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id wLPYJqvpS2inNAAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Fri, 13 Jun 2025 09:04:43 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: simona@ffwll.ch,
	airlied@gmail.com,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	geert@linux-m68k.org,
	tomi.valkeinen@ideasonboard.com
Cc: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	freedreno@lists.freedesktop.org,
	linux-arm-msm@vger.kernel.org,
	imx@lists.linux.dev,
	linux-samsung-soc@vger.kernel.org,
	nouveau@lists.freedesktop.org,
	virtualization@lists.linux.dev,
	spice-devel@lists.freedesktop.org,
	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	intel-xe@lists.freedesktop.org,
	xen-devel@lists.xenproject.org,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: [PATCH v5 12/25] drm/mediatek: Compute dumb-buffer sizes with drm_mode_size_dumb()
Date: Fri, 13 Jun 2025 11:00:31 +0200
Message-ID: <20250613090431.127087-13-tzimmermann@suse.de>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250613090431.127087-1-tzimmermann@suse.de>
References: <20250613090431.127087-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-Spamd-Result: default: False [-5.30 / 50.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	R_MISSING_CHARSET(0.50)[];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,lists.infradead.org,vger.kernel.org,lists.linux.dev,lists.xenproject.org,suse.de,kernel.org,pengutronix.de,gmail.com,collabora.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:mid,suse.de:email,collabora.com:email];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[ffwll.ch,gmail.com,kernel.org,linux.intel.com,linux-m68k.org,ideasonboard.com];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	FROM_EQ_ENVFROM(0.00)[];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	FREEMAIL_ENVRCPT(0.00)[gmail.com]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_100529_368207_117CB882 
X-CRM114-Status: GOOD (  10.12  )
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

Call drm_mode_size_dumb() to compute dumb-buffer scanline pitch and
buffer size. Align the pitch to a multiple of 8.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_gem.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_gem.c b/drivers/gpu/drm/mediatek/mtk_gem.c
index a172456d1d7b..21e08fabfd7f 100644
--- a/drivers/gpu/drm/mediatek/mtk_gem.c
+++ b/drivers/gpu/drm/mediatek/mtk_gem.c
@@ -8,6 +8,7 @@
 
 #include <drm/drm.h>
 #include <drm/drm_device.h>
+#include <drm/drm_dumb_buffers.h>
 #include <drm/drm_gem.h>
 #include <drm/drm_gem_dma_helper.h>
 #include <drm/drm_prime.h>
@@ -124,15 +125,9 @@ int mtk_gem_dumb_create(struct drm_file *file_priv, struct drm_device *dev,
 	struct mtk_gem_obj *mtk_gem;
 	int ret;
 
-	args->pitch = DIV_ROUND_UP(args->width * args->bpp, 8);
-
-	/*
-	 * Multiply 2 variables of different types,
-	 * for example: args->size = args->spacing * args->height;
-	 * may cause coverity issue with unintentional overflow.
-	 */
-	args->size = args->pitch;
-	args->size *= args->height;
+	ret = drm_mode_size_dumb(dev, args, SZ_8, 0);
+	if (ret)
+		return ret;
 
 	mtk_gem = mtk_gem_create(dev, args->size, false);
 	if (IS_ERR(mtk_gem))
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
