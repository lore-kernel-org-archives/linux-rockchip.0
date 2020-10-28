Return-Path: <SRS0=JMM0=ED=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AE95C55179
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 13:34:27 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D5A7724650
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 13:34:26 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="nKyxIrHD";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="jrbhn0HM"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D5A7724650
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WZAcRpeT9sHqxtn+uEpr1fcninj2003gAXEqKMdwMIM=; b=nKyxIrHDKtxsN7UW8F0UIAXBN
	7Rvrn+55LN/WOAu9n223Da3ZRZLqG9/BJ8TAyFSHjlYrdVPm0uNXlI6tsXeLBHHliOvf4sQB6y+BZ
	r3uaBDnGw8zn5kSRVDLpCaYm7mxefW8Xh8N0iAcXwNZDDvcoCF7IJchDkAQyefiAD5Ltt3o+e0gFj
	Bk5KbIBS/EqhW/8SMiySw9GUgzKyjlUhKiQhpqRV8k1YHZs/mYKkvsGnle6rU/Lal1e7RIDnStprR
	yf+HkYDQsnLlTGmCc4EAvW2VhEFdA80QLZFtZokjv8REiVTofTotUoZXBp6c2l70TS1Xyqmdj/L8K
	FvELHgxqA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kXlap-0002kB-4s; Wed, 28 Oct 2020 13:34:23 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kXlam-0002j1-Qm
 for linux-rockchip@lists.infradead.org; Wed, 28 Oct 2020 13:34:22 +0000
Received: by mail-pl1-x643.google.com with SMTP id b19so2490394pld.0
 for <linux-rockchip@lists.infradead.org>; Wed, 28 Oct 2020 06:34:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A1l7VuKzbFdGRCqtiDYfDVGNvfTSOnM72OhjcTvX3Jk=;
 b=jrbhn0HMy8Y/GdnXEGi9+FiGZl421wDOI1cNX1nLx7FLpvPoF4fCvLId4jmrJtawTw
 OaN8hJ3+G0erLXhD5VX3yBp4FPMs0LXVoWKWr3622LQeTqSNjMS0/enNPS9ku3Do6466
 qspunPIctv4UG87HWNYbrxaFSw5VTR4IqiMrI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A1l7VuKzbFdGRCqtiDYfDVGNvfTSOnM72OhjcTvX3Jk=;
 b=EEiq5z594CrY3MmlZqQuArZZTuu3fpP4Wkr3lNhcQ0YLahRzhCGHnW9v9dunRez6Qc
 Oz/MVzQrka5k+Y7aRJy+HQa5IlYKkJqiAtJf4awkFJkDUJd+JpFz7ZP/mqfTuwOj+6kA
 xlRhehFODXNA038uDJFIhLzjw9EXZFkYuuboEvxGS04CtOBlXYJkCjBcGIERIoWAW0Cz
 OnkmRRl94z955+tR3QlsjIny0IHZ8b4EibEvW19qTTG3lic0elW516H22tLmlUHFRjvO
 tAe9yDFw2QbJRYvqPtQPe050r1nfouA6cFXbXF47zJee6LQB2eSofwew8pvVe0tdZbqM
 SOWg==
X-Gm-Message-State: AOAM530SMffnTAN053WC11d7/tct/wrpZgzCAviunKoc6sDEIgOccQd/
 cg1PXAMvAI3tbe3XicY8mmO6AA==
X-Google-Smtp-Source: ABdhPJzU7ao4x1S8EhMyJJIl5O/GAPu1QE0vF/1wjFr8V/P39oC5nI/SDnxKWc7BymmveAok9/FxZw==
X-Received: by 2002:a17:90a:5d15:: with SMTP id
 s21mr6951998pji.9.1603892058721; 
 Wed, 28 Oct 2020 06:34:18 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7a4:2d09:2940:d772:8d5])
 by smtp.gmail.com with ESMTPSA id
 u11sm5717073pfk.164.2020.10.28.06.34.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Oct 2020 06:34:18 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 sjg@chromium.org
Subject: [PATCH v4 3/8] rockchip: px30: Add EVB_PX30 Kconfig help
Date: Wed, 28 Oct 2020 19:03:43 +0530
Message-Id: <20201028133348.241839-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201028133348.241839-1-jagan@amarulasolutions.com>
References: <20201028133348.241839-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201028_093420_912769_4FAC8F73 
X-CRM114-Status: GOOD (  11.89  )
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

TARGET_EVB_PX30 can be possible to use other px30 boards.

Add the help text for existing EVB, so-that the new boards
which are resuing this config option can mention their board
help text.

This would help to track which boards are using EVB_PX30 config.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
Changes for v4:
- none

 arch/arm/mach-rockchip/px30/Kconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/mach-rockchip/px30/Kconfig b/arch/arm/mach-rockchip/px30/Kconfig
index f5373c6f9f..6cd65dfa97 100644
--- a/arch/arm/mach-rockchip/px30/Kconfig
+++ b/arch/arm/mach-rockchip/px30/Kconfig
@@ -2,6 +2,11 @@ if ROCKCHIP_PX30
 
 config TARGET_EVB_PX30
 	bool "EVB_PX30"
+	help
+	  This target config option used for below listed px30 boards.
+
+	  EVB_PX30:
+	  * EVB_PX30 is an evaluation board for Rockchip PX30.
 
 config TARGET_ODROID_GO2
 	bool "ODROID_GO2"
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
