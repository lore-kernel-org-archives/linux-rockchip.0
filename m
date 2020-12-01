Return-Path: <SRS0=IWi6=FF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2FE8DC64E7B
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 16:06:42 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9C237206E3
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 16:06:41 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="MIOVsPRt";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L80O96zm"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9C237206E3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eC0vxoymN3t2nDo6MHjfynFbGFhKrCUumX3QbgpCUSc=; b=MIOVsPRtCkvISLgguMB2h2GHBc
	hbW47pR+E0bQr3Zg1+x+OY2Iyis5lNMaat+0Sdqmfi27KhnruFhxcnmjF8XDICTFPh/XqiLTR5KqS
	fIIAPOVifoumqr3OaDeTyK1bbdW/fmhtKhkJNQsml1uEsTqXseDAiqLx0EhnivWvYATdiKeOhfGox
	h1OI5MNbNg+jN7X5bnWyyn/0UXJPf+AJ9o3IMAso8rUiZWFamuOTL1vUoUaQ3dR5WmX/moIM7QX/J
	ySFbMGgAlZ7GthjMYblv9qlLkDcFD3ajwJcDp8gfX4OXFdNW6PK5QWnzfzoOYu8mhixW3tYRSnMCD
	bNGOTYLw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kk8Ao-0007rR-Ls; Tue, 01 Dec 2020 16:06:38 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kk8Am-0007qo-87
 for linux-rockchip@lists.infradead.org; Tue, 01 Dec 2020 16:06:37 +0000
Received: by mail-wr1-x442.google.com with SMTP id l1so3438059wrb.9
 for <linux-rockchip@lists.infradead.org>; Tue, 01 Dec 2020 08:06:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i0Ly3AyPwRSgdImxMRiJvKPZQgtpObwO+Bsm+GrcHAk=;
 b=L80O96zmRbNY9ns+OCs4fZxA4XcF4tHVHCmBfhoA3JEqu/hkIStIpQBSGCtgVt044b
 xURf2z4gpUezN10Lzoyt2fQk6CKNOgbxXQJfHm5C3vjcvWFO2wC9cGZuH7q1Mi7acpvN
 3jZK/Gu/bRrtVlYh3z4+xo6dd4sXK6kuEEGO7A3i9dxYlwHTUWZ3F/HqdIjHThMJsDQS
 tm5RRpE/FankH0CDnZHrPLzFw6YveoNzP9skl1Zy9W4ih6XMMXXVlwnl8cnMpLWzE3rQ
 M560Rj1SNPfcRkJOPrdQ4bQgxoTlLz8KGD1ftNiP7ERJrJuqSfb5K+Ndw2wV1gf6DkeP
 VuNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i0Ly3AyPwRSgdImxMRiJvKPZQgtpObwO+Bsm+GrcHAk=;
 b=iSoaIdxFAyODF+ZZJde6DQ/RLQFB2FLNqhQ9n8iz2rzCzOprnYM7MgQ2EctPVwWTOk
 0W8/5LIYq06rJF8ozp56+dXDKsy3/Ps2jY2KwHZmn4qclhA18nly36Drp04uf8cinYUp
 bykrdhehAWflrVFIo+t8jeLh3YxsV4MDmhPlAU3yndJuxuHPf8kvP5eAtFxDKlwfhnG+
 8ks7iNICDaGCZjslh8XfkK7xbAPQ3Vh6XufphMsfI22Ma7KZQSEL3+QoAc4xyEbKDtgb
 Sg8t0LEhOP3DUPwNyC4RC3s2vzNG/Cq4Kr8xI4yS/HuCI0Qlr0hZTOFm5497HpzFOaF9
 OgUA==
X-Gm-Message-State: AOAM533G1aTTzoDj3kCNTBEnpHWqPdq7rDUAD7I62YlL5EauMK8JosWm
 fL5O+L/3BW6jVhZcembRkw8=
X-Google-Smtp-Source: ABdhPJxIorEeXg4QWzKZfUXDhKNBgK/gpBwQfoPPRP3R+5XLR5k+6iaUZcXlu66EPchU7SnGne6rUQ==
X-Received: by 2002:adf:ecd0:: with SMTP id s16mr4616537wro.415.1606838795155; 
 Tue, 01 Dec 2020 08:06:35 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.27])
 by smtp.gmail.com with ESMTPSA id w186sm450467wmb.26.2020.12.01.08.06.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Dec 2020 08:06:34 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
To: Robin Murphy <robin.murphy@arm.com>, Jonas Karlman <jonas@kwiboo.se>,
 Douglas Anderson <dianders@chromium.org>, crj <algea.cao@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v3] drm: rockchip: hdmi: enable higher resolutions than FHD
Date: Tue,  1 Dec 2020 17:06:13 +0100
Message-Id: <20201201160613.1419-1-vicencb@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201201_110636_345691_4576E33C 
X-CRM114-Status: GOOD (  13.09  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Vicente Bergas <vicencb@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This patch enables a QHD HDMI monitor to work at native resolution.
Tested on a Sapphire board with RK3399 connected to a Q27q-10 monitor at 2560x1440@60

Messages like
dwhdmi-rockchip ff940000.hdmi: PHY configuration failed (clock 148501000)
and like
dwhdmi-rockchip ff940000.hdmi: PHY configuration failed (clock 241501000)
were present and still are because of vop_crtc_mode_fixup in
drivers/gpu/drm/rockchip/rockchip_drm_vop.c
but this time the display ends up working fine, just after an extra delay
of a few seconds.

Changes since v2:
Just add the strictly required frequency for backwards compatibility.

Changes since v1:
Use alternative clock rounding code proposed by Doug Anderson

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 23de359a1..e1515d55b 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -148,6 +148,10 @@ static const struct dw_hdmi_mpll_config rockchip_mpll_cfg[] = {
 			{ 0x214c, 0x0003},
 			{ 0x4064, 0x0003}
 		},
+	}, {
+		241500000, {
+			{ 0x0040, 0x0003},
+		},
 	}, {
 		~0UL, {
 			{ 0x00a0, 0x000a },
@@ -173,6 +177,8 @@ static const struct dw_hdmi_curr_ctrl rockchip_cur_ctr[] = {
 		146250000, { 0x0038, 0x0038, 0x0038 },
 	}, {
 		148500000, { 0x0000, 0x0038, 0x0038 },
+	}, {
+		241500000, { 0x0000,                },
 	}, {
 		~0UL,      { 0x0000, 0x0000, 0x0000},
 	}
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
