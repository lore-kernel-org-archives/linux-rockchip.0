Return-Path: <SRS0=31Gl=OS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB752C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 21:36:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AF5E961378
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 21:36:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AF5E961378
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ts7wx71QaVqfOwgO2Ig+6bivq++UEeRXau02WV6PZyE=; b=jHifyKanPbc1QW
	jOxNvVBoKwXm0KoEeZM7q0HAzPS5ZmY6yC4pwvs96EcjLay+hHO0z4wj8lRaCr31e7BQV4WIvZXZ3
	BbIr1T3gH24VHORFaSzeX2VT6D4OtXAf2tiD621LOenhuHhMQqInY4nJCg6Z1jWNxDtxYGKe0Z6n7
	Qx4FpW9hqn/dN7oPRt7db9RJ7Xtj+lpb+9gsi74Fn+dFN4o928SS9K/Rdzvpw9uQ09MZnlonjGvrP
	QDHHGgh15OVG44cs8X/vejMQ9lJRIBDoRRr2q+RILMq9IwsjXyboP0Zeg636y2CPfNYnNtECQHdR+
	XTjV5o6Eoi0yNGk496eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVKlw-008t54-5c; Tue, 28 Sep 2021 21:36:20 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVKlp-008szg-6B
 for linux-rockchip@lists.infradead.org; Tue, 28 Sep 2021 21:36:15 +0000
Received: by mail-pl1-x630.google.com with SMTP id j14so52073plx.4
 for <linux-rockchip@lists.infradead.org>; Tue, 28 Sep 2021 14:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hQX8GmY7T6q1qGlMzAWCdy7ICpLGZnTQF7PCVQGgK8s=;
 b=S/hCXUApz8v+EUOzq+kJgswsyDLmDLWGOGe8+KqWZqgpB6uopZbXwSsAQXyn13zg4Y
 Z3qFD6UkcUsi3aLN/halyD1zf32opsJxPdQW4xmUCxET4iCZmwlzJPcxK76nAeupUudL
 5n8BzBLWXkGtKPCUHcFDAqlWt1aCP/7LZH7NQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hQX8GmY7T6q1qGlMzAWCdy7ICpLGZnTQF7PCVQGgK8s=;
 b=J9DlwfyrfEzmnuYb40YRsaPhV0e8/AFaVsUBnFgNyjRADyNKHrHoJZmcqkdF6+iskm
 Tz0O0TQ8/b7RiXHfs3uB46HwPTh0efVEEwx+xs/NKQgkQEv6bEja0YWe85BIUqXvJFWi
 4999iIfuw46hrp39sn68Hu06rtyKAr4xm7zKw9vs8sOFeUVHGrOws5TY+v5nPHm32MRo
 S51QQx1Cc1RzAO4ralSD7la+hBbtKO0B5NXHtBpFvZDr7D8LxGk3eRL88wSIgvG5XRg/
 LhG632RS58+khYOqyTR6/6fQ0Rptxeau9OHu5MxAtLViQ9XSj7l6FjAPNIysEeNOX3Ug
 N7Sw==
X-Gm-Message-State: AOAM533d5MiWErPpR7rrC6EUFrCZENcAQjsFcORAiJuFhJQN5DRkNAuO
 pJYw9Hjb4ZDYckuftEmTZd2/dA==
X-Google-Smtp-Source: ABdhPJxBtdrSwbloXEqMEPuEWnVWzEKAvsoScNpy0XM3MNi5Y5l3IAsEFHhs+VYcC72TNoEAzTsALw==
X-Received: by 2002:a17:902:cec2:b0:13b:5916:59e1 with SMTP id
 d2-20020a170902cec200b0013b591659e1mr6841845plg.76.1632864970399; 
 Tue, 28 Sep 2021 14:36:10 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:d7ca:580:94ab:8af8])
 by smtp.gmail.com with UTF8SMTPSA id n18sm105073pfa.42.2021.09.28.14.36.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Sep 2021 14:36:09 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, Sandy Huang <hjc@rock-chips.com>,
 Chen-Yu Tsai <wenst@chromium.org>, Thomas Hebb <tommyhebb@gmail.com>,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH v3 3/4] drm/rockchip: dsi: Fix unbalanced clock on probe error
Date: Tue, 28 Sep 2021 14:35:51 -0700
Message-Id: <20210928143413.v3.3.Ie8ceefb51ab6065a1151869b6fcda41a467d4d2c@changeid>
X-Mailer: git-send-email 2.33.0.685.g46640cef36-goog
In-Reply-To: <20210928213552.1001939-1-briannorris@chromium.org>
References: <20210928213552.1001939-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210928_143613_263397_5AFA14DE 
X-CRM114-Status: GOOD (  11.89  )
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
Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
---

(no changes since v1)

 drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 21c67343cc6c..8ea852880d1c 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -1434,14 +1434,10 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
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
