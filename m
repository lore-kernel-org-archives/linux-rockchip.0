Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60CABC2D0E2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 20:31:34 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E5486235FD
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 20:31:33 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="zYet+YoV";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CoXHm0ea"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E5486235FD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lQqsh1gedNejmkqRCzoeXj6AkpCA44cCPcGXdvFSgV8=; b=zYet+YoVro3HMFdsayzj7Wp5k
	5Pg8haGLNjCGmIDxe/ECUD/mgJgEq7HJ0NZu2CC+uoz1fCD0QXIAsIV1ppIx3zUwUdx3sloRZYB7Z
	9/5RM504/rjzeonOe7Q5mQF3mnpQmSSCIaUD18QQVokFS89MRbVJ4mEzqFZzuBeVyDrjvvAVuSZnx
	3aUXxKbXBB2fZHz1Snnru47m024gYPbxtQo8GoqTP+siHOkh8KJj+6YsnVcfkx62UYbHKJI219vD6
	Y7fR8ysEu6YDfCvJd6YWacIxFGQQ6H4mN8D9o54aptV49eNno7n/CgKHW7TEV8/AJAD2bVVSpL80t
	HrwM0u63A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKowi-0003rA-Fd; Tue, 22 Sep 2020 20:31:28 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKowe-0003pL-IR
 for linux-rockchip@lists.infradead.org; Tue, 22 Sep 2020 20:31:25 +0000
Received: by mail-wr1-x441.google.com with SMTP id c18so18522169wrm.9
 for <linux-rockchip@lists.infradead.org>; Tue, 22 Sep 2020 13:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WFdc4SH1Iulou9qYgYBQGfoZtnnhVU1CnDj8vAu45kc=;
 b=CoXHm0eaOneQq4NOeA+r/ftMb0wf9sIVBeynoAxaeqawgA39as5IwJfpGsqCGWrUK4
 zG1CsoWq7MqNSHgxictCRpJlOY7LjwqnGrKkfuQvToF1vsxmQh9mam33dAEUT6mNK7Ba
 u5h7dvQix55Kuw4FZuBQxMOh7ymb7CIAevecuv2vLW1q4e1+76YftuMEavlFpLLpY5Au
 SJ3k18lbu/QsI/+YiwoTy5ZMSvAlYcBb3BOueGrTFVmgQiLGgQGhMa2z0BwtGD/4XX9e
 CjfMdtfO25dsvzPzXaKPtjxya5n2Xr3QYbtbQzW73pTkeoDDBq+zHr07O67fYr8vIhwv
 Yqcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WFdc4SH1Iulou9qYgYBQGfoZtnnhVU1CnDj8vAu45kc=;
 b=ExQU//0ySD6QSdIe1M9Htj8Sw+gQT2EYqA2/fY1+m2aCiIe0OSYWnT+9lUn7ne/IoR
 0Jahx1qUfVcO/bFQ56H+LtLLukWsjmHxy1P8k0BNrxpv1kJQZRg6rUuGTN2REPhqzp0u
 AxpRmyjGGHHf5lLy9p0QA+4uuB9PXwOCSg36Kn12nJLsnaSc+Rz++tsbiI5L0WB06jck
 CxhWHqDJlE4xAmYf1vMgefNGKGNzf9mHrJBKkEp9PGutcKKTLCb1QOyPVyjxxm8F85q5
 BYpv88njRwE2ab0Zpfecs5Xsxp5hrncnh5ykkzfT9NHROg0Npdh0xWckhNAHyxi8X1YM
 t8Hw==
X-Gm-Message-State: AOAM533yNZpX74k4G6FXBp81h48N898mWfOvV1PeC6kfyIpEnI+pkrB4
 vnhQNb0iHDk9MwFy6ClEWet9xBiflWqKNw==
X-Google-Smtp-Source: ABdhPJz1a/9PvGrBgYj/xTM5peJkjvqZ6wo444zg84ZzKqMUizLT0jDE3tcOqaLR/ocL4N+77TX/XQ==
X-Received: by 2002:adf:e3cf:: with SMTP id k15mr6764290wrm.291.1600806683396; 
 Tue, 22 Sep 2020 13:31:23 -0700 (PDT)
Received: from localhost.localdomain ([170.253.46.69])
 by smtp.gmail.com with ESMTPSA id r14sm27256849wrn.56.2020.09.22.13.31.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Sep 2020 13:31:22 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Doug Anderson <dianders@chromium.org>, crj <algea.cao@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v2 1/3] drm: rockchip: hdmi: fix clock rounding code
Date: Tue, 22 Sep 2020 22:31:05 +0200
Message-Id: <20200922203107.2932-2-vicencb@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200922203107.2932-1-vicencb@gmail.com>
References: <20200922203107.2932-1-vicencb@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_163124_678073_DE473F23 
X-CRM114-Status: GOOD (  13.07  )
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

Under certain conditions vop_crtc_mode_fixup rounds the clock
148500000 to 148501000 which leads to the following error:
dwhdmi-rockchip ff940000.hdmi: PHY configuration failed (clock 148501000)

The issue was found on RK3399 booting with u-boot. U-boot configures the
display at 2560x1440 and then linux comes up with a black screen.
A workaround was to un-plug and re-plug the HDMI display.

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
Tested-by: Vicente Bergas <vicencb@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index c80f7d9fd13f..92efbd899dee 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1176,12 +1176,9 @@ static bool vop_crtc_mode_fixup(struct drm_crtc *crtc,
 	 *
 	 * 2. Get the clock framework to round the rate for us to tell us
 	 *    what it will actually make.
-	 *
-	 * 3. Store the rounded up rate so that we don't need to worry about
-	 *    this in the actual clk_set_rate().
 	 */
 	rate = clk_round_rate(vop->dclk, adjusted_mode->clock * 1000 + 999);
-	adjusted_mode->clock = DIV_ROUND_UP(rate, 1000);
+	adjusted_mode->clock = rate / 1000;
 
 	return true;
 }
@@ -1380,7 +1377,7 @@ static void vop_crtc_atomic_enable(struct drm_crtc *crtc,
 
 	VOP_REG_SET(vop, intr, line_flag_num[0], vact_end);
 
-	clk_set_rate(vop->dclk, adjusted_mode->clock * 1000);
+	clk_set_rate(vop->dclk, adjusted_mode->clock * 1000 + 999);
 
 	VOP_REG_SET(vop, common, standby, 0);
 	mutex_unlock(&vop->vop_lock);
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
