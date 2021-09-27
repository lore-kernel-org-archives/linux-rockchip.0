Return-Path: <SRS0=jpTb=OR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A78C5C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Sep 2021 18:00:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 72F99604E9
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Sep 2021 18:00:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 72F99604E9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xlDb1y3I4FKhKZLJdn65mWXNUShaa2ehTMK43+0yp88=; b=wixvZK4VEUWA/j
	9TBmv1rCZ+AnOwaDrQSBS6i+pqdFZe3jgwW9TlOcmeHhS1UIdbc0I7PlVD6sXHi8nfAoQgRP/zW78
	/MLUvtvpUaQQISrf84JTbzMDYfxxpKkqanNj1Z7ZiNSnIzq5KPlLYSOWUYaDGSQizWXPg9xg1Z62C
	ErysJZhGIUZsL1Fm0FIuzYDs6Dn5l3PROH4LQ3B+NhrP1r/dplkIdt3gI1OjRTp6vVl7BeEY7nvlg
	GmEFV2DNBSK8Z6c0bPsbqTb7cRHDQMCY1hg1kOUWm7vRiESey6/3TjzvnAMvVl8jdjO/mECQPKcJp
	mbI5n2PEUeZs4Y5iKYkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUuvZ-003i9O-6l; Mon, 27 Sep 2021 18:00:33 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUuvV-003i5u-Ju
 for linux-rockchip@lists.infradead.org; Mon, 27 Sep 2021 18:00:30 +0000
Received: by mail-pj1-x102f.google.com with SMTP id k23so13035070pji.0
 for <linux-rockchip@lists.infradead.org>; Mon, 27 Sep 2021 11:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XeK3fC1as7/l09IEKRp5nj1z/349IvKAECLEDwlj+pQ=;
 b=eeMKXoA4LwztWls+u58Kp6dhBDTL2K6aGw4lSmpWOp9Aq9feo0aOC2ysbKEjJzfccI
 wF8/owbs/fy7OeESMzFl6Hott5p4vcWR2HAELQiL3e/AW8M5bXzUtHcTRiyI2mwMH5yh
 4QRYDRIBMaMxhNxzcZghfcZ/TM05tDlxAUEeo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XeK3fC1as7/l09IEKRp5nj1z/349IvKAECLEDwlj+pQ=;
 b=h1QzI4XpsRw2+alS2yLO7tOrNgEM5xDZNoDAEuVju200MnlSxIQglAo3IelmytH1nD
 1O4LObg2GmQPQKMwStHcEVF9nkhxOGz1c3KczvxjuMZLQbD2NdSLJ0WXiegeTz/wcKC8
 Nx37s1hNevRLelfTBnXFwK3IEHfBjA2N/VTv26DPN3M2BznMui0yr8L5Euv2gy+PV9aS
 sWthpY7+D2I5o6vr3ulWiqhCHw9VZ84YzzHqyBXmrcH25Tx99civ9Vm9Asj0bybjNmP7
 1jLvn+U1i2BXzsitshxJuYktq0iApjW8fOZssnwdIcqcfniddd0NjliuO4IJ88to7hWn
 V3HQ==
X-Gm-Message-State: AOAM533fm3QiCdQfFNm+d54fsWIRFzTdIs1WKdTGZ+EAovW2DOf6fg1v
 L2CEIp77LXv1mhr/tWZnYQiI3g==
X-Google-Smtp-Source: ABdhPJx99jitosZspKZ2TAmKA7Weg9Nq6qSA3epb+VhUvrhehR+ICQzgBodfoUiEwH6y9LdUTRTFkQ==
X-Received: by 2002:a17:90b:4d05:: with SMTP id
 mw5mr379107pjb.175.1632765623593; 
 Mon, 27 Sep 2021 11:00:23 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:82d7:f099:76bc:7017])
 by smtp.gmail.com with UTF8SMTPSA id q12sm19986829pgv.26.2021.09.27.11.00.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Sep 2021 11:00:23 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Cc: Thomas Hebb <tommyhebb@gmail.com>, dri-devel@lists.freedesktop.org,
 Chen-Yu Tsai <wenst@chromium.org>, linux-rockchip@lists.infradead.org,
 Sandy Huang <hjc@rock-chips.com>, linux-kernel@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH v2 2/3] drm/rockchip: dsi: Fix unbalanced clock on probe error
Date: Mon, 27 Sep 2021 10:59:43 -0700
Message-Id: <20210927105928.v2.2.Ie8ceefb51ab6065a1151869b6fcda41a467d4d2c@changeid>
X-Mailer: git-send-email 2.33.0.685.g46640cef36-goog
In-Reply-To: <20210927175944.3381314-1-briannorris@chromium.org>
References: <20210927175944.3381314-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_110029_681952_229A2D77 
X-CRM114-Status: GOOD (  11.34  )
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
index 45676b23c019..fa4080176719 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -1398,14 +1398,10 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
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
