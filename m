Return-Path: <SRS0=NyFe=KX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 541BDC2B9F7
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 13:18:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 12880613E9
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 13:18:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 12880613E9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vMXuZupMi8eMsljbd4v3tG0t0MHZe/M9w2O96pmbu7Y=; b=rwmny04t2pkvx0
	Bx8wSHAGHImHY2+WBINu9nUL2socP8maWCkQ0PvSAGkmwJ+ZMHUqLiHfzxsnd7a+aUJtZWQGnZ4Qa
	hjGp5jG7JSbPQAA1nDvIpSInwsbp0VkXX9wd+eB6Za/pL2LHk9UI43eDqs6rW+zVN8OCGhMrOEg8J
	IseqGbeTdcio1q2AJoYlcOykv/A0htNzOqV3OpUfNgb9kcWDyxAozvEgYgKOkyKZcYMmSa+INblBA
	FSn8LBtNT5YQTnSWa+e6x4dVIveCeZgkT4hNL71H7VcK4luE4nmRwtxNh9r8HSX1jng3G2i5yahG8
	XdQhQl6zf0++ZHgYkN8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmcNn-00FiLG-Ky; Fri, 28 May 2021 13:18:35 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmcBt-00FdEw-5r; Fri, 28 May 2021 13:06:21 +0000
Received: by mail-ej1-x636.google.com with SMTP id z12so5365151ejw.0;
 Fri, 28 May 2021 06:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UbLfIFthjQtZlat7RQdN/8yMEDgpJIwnw/QpuFVzqeI=;
 b=E7bhan7NhUuVUJZuxUfPhvZxTg20U/P/6O1vrBdsdaL6+UjcvkjtNpH5Ouw2M61oq/
 uCrsNHccZda3hmuSWGImGDMoetf+MXqY8I7qHmeKSj0rYmhYsTX3c0SADTxs+N5T253j
 FeLN0rT50121dOaZqRKF7xH9TqN1G5ZokSmm7BB/7YYikDeB5HGptZuz/0nNlnVmA1wU
 OP4tqM+ieLqZvPVvHxr4b86HX0ZcMfGIX45K7zABxJBSpu0oy+01sPe9n69J+P5V9Mpd
 DeHfmIKnF7jV64fWLBRNrembZ4KsUZ72hg5W95Ifa6iiwEX10YlSJdz9fwjhnvl2Pk3w
 iT5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UbLfIFthjQtZlat7RQdN/8yMEDgpJIwnw/QpuFVzqeI=;
 b=OJ/ljzFOqhWA4aEQogSfBIME8UECQERCHF6dLjQshDOmFQx8wW8F+8FN86LxWKWcjn
 98yK1X9XRTIFSaCz3O0KLd437H5VzJ53lERtyFz4v5xD0UwyKHcR/2A2vbnGpqC9gTrC
 biFf9GfoIwmSfb38w5k6MWQ7uv4tdbDdxR69qBlq6TWT3qt90csLyJ1vRKYa9ZC1DrBT
 QM3zkAybNUuOSCASSIgVsRi4VcYMfg/A49dHo9N1fh29svey9gdO/NzAAUP7Cr/W8wx2
 SnFwLRVqY4c9HYiuBxNynjYbCXSrlV2uAT9YL5iXNEZ0g0AvSKYx4CvVXEdBuKBziBPh
 J6Aw==
X-Gm-Message-State: AOAM533M4yVGFSE4uhVUKkXLVB6Iu045IT19PTCbRMWUBronqdTkUkh1
 JZGqGQWujlQideS0aMMhKw==
X-Google-Smtp-Source: ABdhPJzwwAQrY+FztbwSr53CEKhDkKAur6hWhbtxnRbmwG3xEJRjfGri3LkImQAzeg5HEwQJjikb5A==
X-Received: by 2002:a17:906:7a13:: with SMTP id
 d19mr6110323ejo.69.1622207174527; 
 Fri, 28 May 2021 06:06:14 -0700 (PDT)
Received: from localhost.localdomain (ip4d17b4b8.dynamic.kabel-deutschland.de.
 [77.23.180.184])
 by smtp.googlemail.com with ESMTPSA id u21sm2322778ejg.50.2021.05.28.06.06.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 May 2021 06:06:14 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 1/5] drm: rockchip: add scaling for RK3036 win1
Date: Fri, 28 May 2021 15:05:50 +0200
Message-Id: <20210528130554.72191-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210528130554.72191-1-knaerzche@gmail.com>
References: <20210528130554.72191-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_060617_311183_D4FD3384 
X-CRM114-Status: GOOD (  12.93  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Add the registers needed to make scaling work on RK3036's win1.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---

 Changes in v2:
 - rephrase commit message

 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index 80053d91a301..b046910129fb 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -77,15 +77,20 @@ static const uint64_t format_modifiers_win_lite[] = {
 	DRM_FORMAT_MOD_INVALID,
 };
 
-static const struct vop_scl_regs rk3036_win_scl = {
+static const struct vop_scl_regs rk3036_win0_scl = {
 	.scale_yrgb_x = VOP_REG(RK3036_WIN0_SCL_FACTOR_YRGB, 0xffff, 0x0),
 	.scale_yrgb_y = VOP_REG(RK3036_WIN0_SCL_FACTOR_YRGB, 0xffff, 16),
 	.scale_cbcr_x = VOP_REG(RK3036_WIN0_SCL_FACTOR_CBR, 0xffff, 0x0),
 	.scale_cbcr_y = VOP_REG(RK3036_WIN0_SCL_FACTOR_CBR, 0xffff, 16),
 };
 
+static const struct vop_scl_regs rk3036_win1_scl = {
+	.scale_yrgb_x = VOP_REG(RK3036_WIN1_SCL_FACTOR_YRGB, 0xffff, 0x0),
+	.scale_yrgb_y = VOP_REG(RK3036_WIN1_SCL_FACTOR_YRGB, 0xffff, 16),
+};
+
 static const struct vop_win_phy rk3036_win0_data = {
-	.scl = &rk3036_win_scl,
+	.scl = &rk3036_win0_scl,
 	.data_formats = formats_win_full,
 	.nformats = ARRAY_SIZE(formats_win_full),
 	.format_modifiers = format_modifiers_win_full,
@@ -102,6 +107,7 @@ static const struct vop_win_phy rk3036_win0_data = {
 };
 
 static const struct vop_win_phy rk3036_win1_data = {
+	.scl = &rk3036_win1_scl,
 	.data_formats = formats_win_lite,
 	.nformats = ARRAY_SIZE(formats_win_lite),
 	.format_modifiers = format_modifiers_win_lite,
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
