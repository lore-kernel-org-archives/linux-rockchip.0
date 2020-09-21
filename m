Return-Path: <SRS0=Rf1F=C6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0556EC4363C
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2020 18:18:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 876B1221E2
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2020 18:18:38 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="1Ob6C1z1";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ERLVZJ3E"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 876B1221E2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nW+lZmLIWRUz1OH1K3PBzPu/GbDXecePDaDqukhiluk=; b=1Ob6C1z1hGW0bzswVzcu+W/hi
	Z+XwH/lvP9svR70x2VGwEbqOi2xk2Rwtcmkx2GYfz9T/4RRLWZs6glCeK0+jCm0S5KdrPXqFJyQR4
	p1OiY4y80QmT7uSifbWPJ4JS4ZE9ld66cg+1WGTdKLWR7ROgwt/08zhZI8COVjorNPyqZZAJC9Eh5
	ZlbndGI6J7cxDi+qH4H3uiVs8sTWp9fFiMu6TDAM+R5REF45JBVMiLiEWwznbEyTfmukHMVTJ5Edt
	fXazG2k5ebrFKIdh4ZPk9eLGLi5p9vSsAi11JyMAgv9L2DeolQICMzt6uRV/b/W0h3nkcyNNnXCMc
	eKTDpLCJA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKQOY-000053-E1; Mon, 21 Sep 2020 18:18:34 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKQOV-0008V0-4r
 for linux-rockchip@lists.infradead.org; Mon, 21 Sep 2020 18:18:31 +0000
Received: by mail-wr1-x442.google.com with SMTP id z1so13825815wrt.3
 for <linux-rockchip@lists.infradead.org>; Mon, 21 Sep 2020 11:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K7apNRD9MQ+dEbnQVbfSw0In2eqPMXGuCV372ylb3ZQ=;
 b=ERLVZJ3EXcEKmJVu0ezDXvmSIS0V/PJ7ZnNVSQU0bJzm3mg78YqOJG4OiMDYfgJSwn
 y47D67v7BnubGcSiUowbyAbNcgxuWhfWYvTewcbRZ+qYql4qKjcnB2kVzfIuh0vVW7nK
 qwy3st9zBZ8CKdqilTBd59a4KeX6l9H6Jw0NafiE1KJBXeBCYAApYcO057b3aKjSYQiP
 cHgbrOPRX7zdCJZTLInB1ULvxBlQoCSfWmWV6+AMSYLVt2o4QkhHgLY3Bh9gwkxkh01o
 2LXJ08//lk7qjbTrxgJzeOevrGAZL5AvSoXmBzKlrtCoj90pqwhbjZddLRiD6bNnSzbN
 PLEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K7apNRD9MQ+dEbnQVbfSw0In2eqPMXGuCV372ylb3ZQ=;
 b=A3HsvId75F3T3bicUpIb5CeX4bf+xJcCGhX3T/t3uTxCb1F1+p/sb8h+R6yZTg/3VO
 GWl1VpXlP3D6SHlz7t0DY6j/ewbNZx/uVokv73rK/JCYExGdWviM5KWHGCoilU/neqVK
 006ckYeuOAQRubm4Jg46TlJZDnW7+BJWSE2Mn9oxvWfsvgjWt/Xop+hXBSol21jCZQo0
 G24pL+kNRxNgISuFwwN6/fbLDlOgHkNZz/9sySARrE+xzWQ7N2ZrUEitc19bolLW6O05
 xeWLkQ9ixacSW6oOkIQVhYgSJuUfky+lO5AC8LMuhp1MvOXXJlkNQWXrKql5qWhbzc3N
 vSdg==
X-Gm-Message-State: AOAM530QgIGaIdZe/xsoLGke00hxzlu2s9xbN4lx4L5uNkTK34C76J9L
 3dTsu77tPcxaLvbXT+X/dG0=
X-Google-Smtp-Source: ABdhPJzeDbyqxIujUGLCtG0+lY+QlhF6phMdhTwizmUx643F/K9o2bqH6xuMl9rJ4hLXgbgbNdH9sA==
X-Received: by 2002:a5d:43cf:: with SMTP id v15mr1130170wrr.149.1600712310132; 
 Mon, 21 Sep 2020 11:18:30 -0700 (PDT)
Received: from localhost.localdomain ([170.253.46.69])
 by smtp.gmail.com with ESMTPSA id h16sm23523249wre.87.2020.09.21.11.18.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Sep 2020 11:18:29 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Subject: [PATCH 2/3] drm: rockchip: hdmi: allow any clock that is within the
 range
Date: Mon, 21 Sep 2020 20:18:02 +0200
Message-Id: <20200921181803.1160-3-vicencb@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200921181803.1160-1-vicencb@gmail.com>
References: <20200921181803.1160-1-vicencb@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200921_141831_203118_B9A4136B 
X-CRM114-Status: GOOD (  14.46  )
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

For a video mode to work it suffices that the available bandwidth is
large enough. There is no need to have an exact match.

This greatly expands the list of supported monitors.

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
Tested-by: Vicente Bergas <vicencb@gmail.com>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 23de359a1dec..87a9198f7494 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -230,7 +230,7 @@ dw_hdmi_rockchip_mode_valid(struct dw_hdmi *hdmi, void *data,
 	int i;
 
 	for (i = 0; mpll_cfg[i].mpixelclock != (~0UL); i++) {
-		if (pclk == mpll_cfg[i].mpixelclock) {
+		if (pclk <= mpll_cfg[i].mpixelclock) {
 			valid = true;
 			break;
 		}
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
