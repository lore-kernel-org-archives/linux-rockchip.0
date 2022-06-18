Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D9A3C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Jun 2022 01:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w1ZzuOQVsqze4EW9X+HTsEFuNknWBFfu91q0KYSDlxM=; b=VGrKLp0ZUu3IIs
	fhniTxxV3jewbw2XdiG0Vketx8RNIMIRwZJftq0VluxwX07ZXTfbm47kq2IkNBqfdjGmx4tYuAnsM
	0p75xOG7gqqgnS3wdgV7TchV+XeDaQdTPc8+nsb3J/k5oSHG9PvJouwMEkznSdpvRXxSMW9O9zdUN
	9QwQ5W2qyMKIEoAMLVuQBbyJDpbP8GXhsrS0Venj7vir7QHcRKzryk5yG/kRGaH6FGlXj9d4bfynH
	AJHOxq/il75Oe/Daw3IsZHFohPM1z/ClW8/wZaGULJgsRqtERQU5GTkRcNrGWCKPEj0DWssvJ0oGu
	FO8jse1Cohyy78HhBPJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2NIe-009vCY-O1; Sat, 18 Jun 2022 01:30:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2MIx-009mee-OA
	for linux-rockchip@bombadil.infradead.org; Sat, 18 Jun 2022 00:27:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=Ei+HgXYmUs7VuH9SzfrkiDUXFHl2YpLCKGNXmwvOLnE=; b=pm7M/wq/NVLn3LLWkxagRVfnUX
	4cwZrxDew83r+DxbSmX8oYo9QbgZrotILUguSDABNZXZDYZrzXDi/qa6n2qqb+ZYNh584QpNRfx6+
	z7GLwMrACYX3SLqzTPdjWbO9AzP2iQQV9Novbo5/EeW8nMkH4x+tGtSt09YhsBIJoK1MLdW92Q+cy
	ffzYM8/Utqun/XCqJkmRggP1/a8DrDxjR4D3pXpWACdZuuPUUnCLEI8rOcdXl1HEgflDBbZkus52s
	NH8uyRUSOcbthAz8JQZRymNpYZHA6OxNJY8GGp57YPwR8oOFlrl6REMpxQ9fI3SRfi2sEi7tj8K8w
	nI/TT6iw==;
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2MIr-008oqB-0q
	for linux-rockchip@lists.infradead.org; Sat, 18 Jun 2022 00:27:08 +0000
Received: by mail-pf1-x431.google.com with SMTP id i64so5431629pfc.8
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Jun 2022 17:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Ei+HgXYmUs7VuH9SzfrkiDUXFHl2YpLCKGNXmwvOLnE=;
        b=EWsGb7fKekXlYZrIKe4UPS69h8iiPXw/cnxRSMzwwldkX4FkEyUTUcvp7P5lfRPTNr
         nDid7kyrMvZ3zddxkFLYpG7B7vsJROo7d73nGflocZyFwJBJpNdDBJJJSb5bAziRza3z
         gcLjjTlxLWgJJ0+mlS6JJqIGvGEOQytfZm0PE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Ei+HgXYmUs7VuH9SzfrkiDUXFHl2YpLCKGNXmwvOLnE=;
        b=FfEpKl9zK4nbrjfQEdjesa1WlE/rnRWxgk9wHWnWODJXnWEQOmMoHrV/f0aCjbz9e8
         KEehTtG2BfTELoW1cNOWCoqC3Tbb3WUE2zPxmBP2hEigWCqnQNlczCkW8l+/V0QMzR/s
         0WMGKrwYuWDSA6GDW2xBbIfQK1Drr9r/tOhaDhWYhMmeQ9f7tSkttWCmgFtRkV6iIBci
         SBMlxh/yoN733G/LWiKEfcGcQhOBLC+ZvKSowYllfy/fPDO9mXGSJHN0cW4zDuMQm/o9
         5x8wyKL6WAMYKfJnqkw+4CwxHS3KQsST7J0TS5eucj864YfHBxh/IBRecc1TC4UOyJ8V
         AWKQ==
X-Gm-Message-State: AJIora+qfTru03ssv77/5epYXJhojPzgf6cqqRAhtiwGe3mKooQXrsts
	Q6ZTiIV4FKM/voU1EljRG4aPdw==
X-Google-Smtp-Source: AGRyM1v/jglTlJSjuanGgPXZVW8dGNByT2BJv5Y9gHNgbkzDuTqe//AQccZr4N7r9rUR1So2ivva1A==
X-Received: by 2002:a63:360b:0:b0:40c:2d81:9a86 with SMTP id d11-20020a63360b000000b0040c2d819a86mr8664644pga.60.1655512021857;
        Fri, 17 Jun 2022 17:27:01 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:6844:cedc:a28c:44b2])
        by smtp.gmail.com with UTF8SMTPSA id p2-20020a62b802000000b00524fdb94c53sm66903pfe.132.2022.06.17.17.27.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jun 2022 17:27:01 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@linux.ie>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Sandy Huang <hjc@rock-chips.com>,
	Doug Anderson <dianders@chromium.org>,
	Sean Paul <seanpaul@chromium.org>,
	Brian Norris <briannorris@chromium.org>
Subject: [PATCH] drm/rockchip: vop: Don't crash for invalid duplicate_state()
Date: Fri, 17 Jun 2022 17:26:52 -0700
Message-Id: <20220617172623.1.I62db228170b1559ada60b8d3e1637e1688424926@changeid>
X-Mailer: git-send-email 2.36.1.476.g0c4daa206d-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220618_012706_034773_8E0F3919 
X-CRM114-Status: GOOD (  11.07  )
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

It's possible for users to try to duplicate the CRTC state even when the
state doesn't exist. drm_atomic_helper_crtc_duplicate_state() (and other
users of __drm_atomic_helper_crtc_duplicate_state()) already guard this
with a WARN_ON() instead of crashing, so let's do that here too.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 74562d40f639..daf192881353 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1570,6 +1570,9 @@ static struct drm_crtc_state *vop_crtc_duplicate_state(struct drm_crtc *crtc)
 {
 	struct rockchip_crtc_state *rockchip_state;
 
+	if (WARN_ON(!crtc->state))
+		return NULL;
+
 	rockchip_state = kzalloc(sizeof(*rockchip_state), GFP_KERNEL);
 	if (!rockchip_state)
 		return NULL;
-- 
2.36.1.476.g0c4daa206d-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
