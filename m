Return-Path: <SRS0=mPt0=OO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3CBBBC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Sep 2021 23:24:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 081D060F11
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Sep 2021 23:24:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 081D060F11
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0xTVnZgzbzRS2uWdOsE5XI9rrqBjopsWAsiktTc/HjM=; b=nSxeko1u8ik6sJ
	OePpcWYulGpORso1sPdmIJoA7fEQQfSc8pLPtas9N29T1a96Z/asex2taWTAX35PzdoWSP3DU1bfM
	zjzPRxhYnJarh7L+0WmKpP2Tpqls/nkVnYZUex1IMDnSJsAgZPjAh+amguPe/0OJxH4GSD/gjw6Rj
	anpWCaZhvuOYGG/3thC8muDNqPAIbc1WfR9RgZ6/CUOG9In0pGDF7FaRx0O3wfsP4XoUj6bnhoFQi
	VkDCTWb3PnOxLMyS3WnMrut5YBt1giPfYt+cdaI8NfgJz4RD15Dl3tyPOndYEpfwsbu9zWVrJPnLO
	wW3hXtIr9kkoxmi4cm8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTuXz-00FkGW-45; Fri, 24 Sep 2021 23:24:03 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTuXw-00FkFg-Fl
 for linux-rockchip@lists.infradead.org; Fri, 24 Sep 2021 23:24:01 +0000
Received: by mail-pf1-x436.google.com with SMTP id n23so7364794pfv.4
 for <linux-rockchip@lists.infradead.org>; Fri, 24 Sep 2021 16:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1xurLATt1ex61qvV7KZiCU51/9V6GkfxwxIS9VeD8VA=;
 b=M0iBjYKc31rwburlfMZhx8Oipce7pYY2b5Wpof8qmfYNDOvUxojzCbPVRom/Yf98BS
 U2aMO7VEjPmHKfCPKRqp6w1QdDDg/lnJZL7ZZEi2aaExAU7LgRYJwhNBFrc6Qvq3CExX
 nLwe3BAxUsOGADFUJj40SReGj/U7+suX8cfR8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1xurLATt1ex61qvV7KZiCU51/9V6GkfxwxIS9VeD8VA=;
 b=5zv+dwNssIbHVAVX3YrHVc5jnYnwDImqsLihB+/B7GcEkJpf+Zj44G1L8SclL+N+k3
 pHRbnI7tWSKitHZu4ziRSXBrHRqmKN8rzJUT0bFa3xEAW4U/40iYYUrKxBUwS3lcvm6s
 uu1smFDVMuhuZ3lKvizuC9i5LhJ4g+2k9meyc0o1D/j0Sllm4TUAgR9bVxe266j4EeWh
 AtDOHmA+XRh/wMNb5M9GZbhFkELeJuMfeyvNnsMx2OwMEDHxevPfL6AmKkiDAsLsyiaq
 cxC0MYOEMleqt2h1x6ysz/t24vFxmEToxZ2Jw9g3soDTrNDOYkNe+ZpklIdt8udtbt1t
 MByQ==
X-Gm-Message-State: AOAM5329m16dFfkz+jWJyyYCTkUMUcO1Po2uTirMhMxNdQmuDGDeBXU6
 OmJCdHZ7R7zeP1kOBZV1OOTLr/713YCVzw==
X-Google-Smtp-Source: ABdhPJxSkNCeRzwyQ3fSmMMMaH7U8DCIuSFSDDP6SFmH8mr0k4mDFzipSj7Tc0UW0PwqVpy2bX58+Q==
X-Received: by 2002:a63:555d:: with SMTP id f29mr5911472pgm.33.1632525839778; 
 Fri, 24 Sep 2021 16:23:59 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:74de:c8b7:3a35:1063])
 by smtp.gmail.com with UTF8SMTPSA id 18sm9916476pfh.115.2021.09.24.16.23.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Sep 2021 16:23:59 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Thomas Hebb <tommyhebb@gmail.com>, Brian Norris <briannorris@chromium.org>
Subject: [PATCH 2/2] drm/rockchip: dsi: Fix unbalanced clock on probe error
Date: Fri, 24 Sep 2021 16:23:46 -0700
Message-Id: <20210924162321.2.Ie8ceefb51ab6065a1151869b6fcda41a467d4d2c@changeid>
X-Mailer: git-send-email 2.33.0.685.g46640cef36-goog
In-Reply-To: <20210924162321.1.Ic2904d37f30013a7f3d8476203ad3733c186827e@changeid>
References: <20210924162321.1.Ic2904d37f30013a7f3d8476203ad3733c186827e@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210924_162400_544101_F33D82E7 
X-CRM114-Status: GOOD (  11.26  )
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

Our probe() function never enabled this clock, so we shouldn't disable
it if we fail to probe the bridge.

Noted by inspection.

Fixes: 2d4f7bdafd70 ("drm/rockchip: dsi: migrate to use dw-mipi-dsi bridge driver")
Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 4340a99edb97..0886a5dee58c 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -1391,14 +1391,10 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
 		if (ret != -EPROBE_DEFER)
 			DRM_DEV_ERROR(dev,
 				      "Failed to probe dw_mipi_dsi: %d\n", ret);
-		goto err_clkdisable;
+		return ret;
 	}
 
 	return 0;
-
-err_clkdisable:
-	clk_disable_unprepare(dsi->pllref_clk);
-	return ret;
 }
 
 static int dw_mipi_dsi_rockchip_remove(struct platform_device *pdev)
-- 
2.33.0.685.g46640cef36-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
