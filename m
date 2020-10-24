Return-Path: <SRS0=gVHv=D7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EAD1C2D0A3
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Oct 2020 03:54:54 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4B41E21D43
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Oct 2020 03:54:53 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="i3uh9TL9";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UNSecyD7"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4B41E21D43
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rW//MN0ykZgZvx+DpTpbqOwPjJotR0hkoDGgg65ikxo=; b=i3uh9TL9BTD0isCGlHD5+GGC1h
	EtV2+4n0v7p7FRdqHNK4QchfcscrlELHo0EW/ZJPRk3aGGAwGT02trq9fOLyJerS+kEXr40v8v8HH
	1dwZUr0n9ot7toMz7rod0tiouJQ7XObLCWB4qeGjU3XwMrbjv0BqKMAF1zqNOGXqtU8appL3bbV+n
	uoLnABsbfDy5QXEuRnswoFaOn8YkhWSCsIcTQtXEs/HXkidZ99DYT6ezx3sCL91KudpUM5CCSEdx7
	4b3r7L+3sOLtJD59JiKasJlr+Ee+EcK1uvJ1dpp3rxxbAfPbGINdfPc9K1hsb0w7A/ATqV8WDEaL6
	v4RVIFKQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kWAdf-0006fL-7W; Sat, 24 Oct 2020 03:54:43 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kWAdc-0006ek-4j; Sat, 24 Oct 2020 03:54:41 +0000
Received: by mail-pg1-x543.google.com with SMTP id r10so2773802pgb.10;
 Fri, 23 Oct 2020 20:54:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DHxWsys+dsHZlYbTCgm4K5sedJ6MYP3oaeNFmkALrqM=;
 b=UNSecyD70DJbdoa3nEKStvo16idn3uPBVMvv8wciCKz/CZ9XLg49oc8I3gUJm1XHyf
 LBiIKrAbhaElf2C78Cnv7M0oxeBmaDsBCL6JQ5NgtRzBFkip40NcvFg2N97N5WeycBpw
 9p89xyh5DFXVCowIdoEbOk1wh2yMRPnUxkUtbAkryY44N2zs5Za7EOLbaMBnVwfQhHZN
 Raafp8ETUVeMOEFj06PQTqWZmZJeFc3PsU1VqxNNFAbu0tFEJmTYTK/sxDOQ53EIzcTy
 7FN91bJl7snVlH7bPIxB5bxnG3e1zADNpzAPhXVqOuTLH/ysbHQ6d3dmKCVhRHAk5Gmo
 K4wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DHxWsys+dsHZlYbTCgm4K5sedJ6MYP3oaeNFmkALrqM=;
 b=Sg+syCwOYsNbYSL28lgsxhU+xI6VH2/oJAy+SgZTu59ApWFLn0OwGKFlbOBAYLDc5r
 P01FAeYkIatpimQJxYlpGL5c8RwzC8mp8pgQe07wxVxbHGm+zJrDt9QK4uGO6+9qykOS
 tlseCAPH4f1mtoOjr+oeIAb/noXkOZx3HIAJuJMn6yvyVMTcieGBEYBLr/XUBfaSngUP
 VemuEvV+Tnz19dq4jK9wP0Q6LjhgCfG70vLrmP1sVrtJdbF+O8HDh30Pr5wz/ebHfwoG
 tVKSRi8LDj4jJRJOWAgxmJbIqMgO3wk1z0/rGi2N/zj8u7f/sUonp+rQwjUctsXRAqt9
 +bbw==
X-Gm-Message-State: AOAM530sYI2SUMKdx1ZAzBKrBNDXj9c9zfjYqWLjahKjfgnlMptz+4z9
 3gL/q/n4qqn6GqhiRKmLYqA=
X-Google-Smtp-Source: ABdhPJxnaoZIHSyeaLHOggKuQPc6R2MJHs3zj6tNNwoEkVIMlDjR5/Bgui16x+FHxJUCspKSGIZoVA==
X-Received: by 2002:aa7:8498:0:b029:160:190:327b with SMTP id
 u24-20020aa784980000b02901600190327bmr1953801pfn.61.1603511673103; 
 Fri, 23 Oct 2020 20:54:33 -0700 (PDT)
Received: from 119-18-5-146.771205.syd.nbn.aussiebb.net
 (119-18-5-146.771205.syd.nbn.aussiebb.net. [119.18.5.146])
 by smtp.gmail.com with ESMTPSA id c187sm4083870pfc.153.2020.10.23.20.54.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 20:54:32 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH] drm/rockchip: dw_hdmi: fix incorrect clock in vpll clock
 error message
Date: Sat, 24 Oct 2020 14:53:21 +1100
Message-Id: <20201024035321.4898-1-net147@gmail.com>
X-Mailer: git-send-email 2.29.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201023_235440_233559_12A30CBB 
X-CRM114-Status: GOOD (  14.53  )
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
Cc: linux-rockchip@lists.infradead.org, Jonathan Liu <net147@gmail.com>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Error message incorrectly refers to grf clock instead of vpll clock.

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 23de359a1dec..830bdd5e9b7c 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -202,7 +202,7 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
 	} else if (PTR_ERR(hdmi->vpll_clk) == -EPROBE_DEFER) {
 		return -EPROBE_DEFER;
 	} else if (IS_ERR(hdmi->vpll_clk)) {
-		DRM_DEV_ERROR(hdmi->dev, "failed to get grf clock\n");
+		DRM_DEV_ERROR(hdmi->dev, "failed to get vpll clock\n");
 		return PTR_ERR(hdmi->vpll_clk);
 	}
 
-- 
2.29.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
