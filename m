Return-Path: <SRS0=QPul=DX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79183C433DF
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2020 08:50:37 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D7F7520848
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2020 08:50:36 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="s8G1X2xO";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JA1GNd8+"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D7F7520848
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eiZE6GW5FC7mIjecYo4fHdwbck/75NvHJKMvF5Pemgs=; b=s8G1X2xOLgp30wqsiMOF47Pg30
	il3ckkvjtgLVjOFsLSjjTeN3RRrOBbkLqiRgPVD6CRUY1XfrB+QBgRWS6jlDalNmpWgox9SAEMr2C
	qsHHKH33pTKM6gc94/tCb2EtEw11XHUGMSONzKmcmOz5f/t5YtduSrLwWnrt05Fa4AzGC7/AXaMPA
	anCO7AYBiZdblkxxDk+5URio/6JAcKfgitGBJHBMrFbwYf53DmhKJnSVgXRFBmrlhp+ICUTUVR2fh
	AzZFsqB6GpB21Mh8TkiE9ZAGiXkoqFh4qWoXPG3fzxbb7ppg9Ko53AQRgfbzs16efJMD+rqTlXHO0
	RRIyjuRQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kTLRW-00056y-S4; Fri, 16 Oct 2020 08:50:30 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kTLRS-000563-H0; Fri, 16 Oct 2020 08:50:27 +0000
Received: by mail-lj1-x243.google.com with SMTP id c21so1560773ljn.13;
 Fri, 16 Oct 2020 01:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=l2g0WanDfq/KDOh+/VcHyYkZcE8dM9/DlazBWuJO0Zw=;
 b=JA1GNd8+HG69mXKrInW+0dljGSbVqvNVsQIb2Q4Wl6dfWRYeempCQLpYb9LCCx0tF/
 M//4FdO2QES7EtI0dmhPQ5LSEOjx95yO8c8ekXQETgalMH9LDJJYMryKl7NQY+wTG5P3
 Z3pwCjpROLpJoK87+6xDJczYQvv1oZgEbOt5G8VxPFs45ijMGsNewG+SUAGA2oWWhOEg
 92Jl18IA1nE773vlSc40rcMiXogokilNW+h5C0A2yh2aFVlfYIbztIhTmG8aiZO7rErV
 tpHdPSoVBgF27FnMYuUMLviVlfDXNiiunM4jihEFO01voqCV2NAZ4zeKCMGegQKSYFTL
 fx8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=l2g0WanDfq/KDOh+/VcHyYkZcE8dM9/DlazBWuJO0Zw=;
 b=kMJCk6QnCkkDFZMpUpaCtwr/45lKijklCKtjoAJeWCqgm8F9HCaGAXERFw8pO8f+s6
 wx7zCa3mkQhK+/d4Vyp8TcoWYWW1OXtsxPG8I7b7dTQb4Nlf+3TprVJrUOtf4X4TA1D6
 Ge69bGZ0UETQFzKXeatol1nhmolNL4YTEx78LBC8NR4ELhBtLLLclx/rdy8I/Rlahx4q
 6N/MHojMrh545y1US5xeWWFdezrtQr/FVGOdi9hABove0i3GqCXCV4zXzbwxUGwdj27s
 GYgZi4/f5WBNTqR7H4z9rLFociA/f5qaMwBh2aHqrR6isgKHVtS8NU42olHAAXQz1/Rw
 fI4g==
X-Gm-Message-State: AOAM532UT8bwY41GM7YBdoTMAJ8ma40WnSuC/L2KnRQvzirCINI49ThC
 GtnjTgZBm6nlCqv5SzG3DeY=
X-Google-Smtp-Source: ABdhPJwdW1Qe4VdACE8m9bGNR8Vib87O4M73lJOUO9VrfM5U5CqccUuVSr6SJSEuRzCSoN2I39zj2g==
X-Received: by 2002:a2e:b5c1:: with SMTP id g1mr1014660ljn.305.1602838224050; 
 Fri, 16 Oct 2020 01:50:24 -0700 (PDT)
Received: from ubuntu-18.lintech.local ([80.87.144.137])
 by smtp.gmail.com with ESMTPSA id 62sm607435lfk.47.2020.10.16.01.50.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Oct 2020 01:50:23 -0700 (PDT)
From: Alexander Kochetkov <al.kochet@gmail.com>
To: Mark Brown <broonie@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] spi: rockchip: enable autosuspend feature
Date: Fri, 16 Oct 2020 11:50:14 +0300
Message-Id: <20201016085014.31667-1-al.kochet@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201016_045026_674888_46471DD3 
X-CRM114-Status: GOOD (  11.67  )
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
Cc: linux-rockchip@lists.infradead.org,
 Alexander Kochetkov <al.kochet@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-spi@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

If SPI is used for periodic polling any sensor, significant delays
sometimes appear. Switching on module clocks during resume lead to delays.
Enabling autosuspend mode causes the controller to not suspend between
SPI transfers and the delays disappear.

Signed-off-by: Alexander Kochetkov <al.kochet@gmail.com>
---
 drivers/spi/spi-rockchip.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 2cc6d9951b52..3e77b1a79bc8 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -157,6 +157,8 @@
 
 #define ROCKCHIP_SPI_MAX_CS_NUM			2
 
+#define ROCKCHIP_AUTOSUSPEND_TIMEOUT		2000
+
 struct rockchip_spi {
 	struct device *dev;
 
@@ -670,6 +672,8 @@ static int rockchip_spi_probe(struct platform_device *pdev)
 		goto err_disable_spiclk;
 	}
 
+	pm_runtime_set_autosuspend_delay(&pdev->dev, ROCKCHIP_AUTOSUSPEND_TIMEOUT);
+	pm_runtime_use_autosuspend(&pdev->dev);
 	pm_runtime_set_active(&pdev->dev);
 	pm_runtime_enable(&pdev->dev);
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
