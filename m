Return-Path: <SRS0=NTKj=DH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A41A3C4727E
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 13:17:32 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4D3CE20754
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 13:17:32 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="TEzyDERx";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="HdvfRjxq"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4D3CE20754
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7bC1z1bfDTyleZ8ZMiP8FScFONRrNm1XpCUjFDXAHlE=; b=TEzyDERxChUNANbnE05S/0ne9
	h4k5R73sx7+/v0UGvHa8W7TlcUeyOEXZnOarVSRFZ0mU9/AkAYTqvZ9+lm7xmZ4auFUtKv0r4DXkp
	6wCI/BgMHIEwR1gYE0XWlJxTXYCG6bxE0k/D9+BNKq1+PJUFIf4KTA23B+t7cKqji8OIZ+7FBfdmK
	oTvEmRgeifStAw6zU0YxOeUyyVGoFZipmckIwiXgwTmlxPd0JRvfW6fnAQp156+s7gmLZZhDMwGIc
	bpE/5LptnhJWLdpC8+FFsqjTfMCzxFRUeoDE8ZX6r6EAjgR9DeVxvX1h0SS15c6jkoTRfuLomvRq/
	g+qU4eRfA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNbz7-00009R-1Z; Wed, 30 Sep 2020 13:17:29 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNbz4-00008D-Iu
 for linux-rockchip@lists.infradead.org; Wed, 30 Sep 2020 13:17:27 +0000
Received: by mail-pl1-x641.google.com with SMTP id y6so1012577plt.9
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Sep 2020 06:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Siz5HXSG9vggEZT1T/lYkrX6yaQ6C/v6bQj6McAjYr8=;
 b=HdvfRjxqwUdLkFJTJfoh6MEW5K8/HTbCzKbohguk6CJbcs79TzAMlyKQaSVhEtYAoI
 Ui25QSTPqwo/OO0ZODmj5eF2YYkB4b5DDEr8TLT9dxehqB42qpX8/KSVH3OnCppVxGRU
 4uwFFEIJ7xg9DVHMFGaiFhyjA8Eq4p3lBdJQo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Siz5HXSG9vggEZT1T/lYkrX6yaQ6C/v6bQj6McAjYr8=;
 b=pNf3uUv1QkXK7sarGJzcEPGuWdKxSwsYPiqWR+NRTVV/dSkDiLq01uPfEj6AyLhoe2
 jdRGGSK+fwL15bYgUf7E+ui0T4JeSdcH34D+i7mQK02L829+Mn2KtjnZqrXmVCCbaPHr
 ZUPp7IAYlpek/t2mckWS+5JmEJYE40BsMr3ZKdV46pfEmOUncZkd1twTfkikyOxTXgUh
 Be/Hk/ep6ia/8Fp9cn38U6h+m6eiQohlhqOd7iFBVPIPPYa9tH3h7qmetSVwgK+gt9dQ
 jg6wTC7nv3+BAGfFjJk4z+F9Fa6Y2RDYY1yV5IApxsii+kixPycWlxBxDzUj1+2xJgF5
 BfOQ==
X-Gm-Message-State: AOAM533Sg89nuyRo/Z1Ijc32GzQVJnHi0KpSSHibous86kCbdfYuwxaA
 clEjwOixZdD1bihjNlVn9Gjobg==
X-Google-Smtp-Source: ABdhPJytPCGdcrX5ZI2ghjWDd+rPYtCBVQEbqFd2sqQYs0p1uSRGIeUG/XP+AS7jvzY5X5dq7vz6lg==
X-Received: by 2002:a17:90a:f411:: with SMTP id
 ch17mr2488191pjb.38.1601471844728; 
 Wed, 30 Sep 2020 06:17:24 -0700 (PDT)
Received: from ub-XPS-13-9350.pdxnet.pdxeng.ch
 ([2405:201:c809:c7d5:91b9:59de:b063:d8ee])
 by smtp.gmail.com with ESMTPSA id q4sm2849004pjl.28.2020.09.30.06.17.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Sep 2020 06:17:24 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 sjg@chromium.org
Subject: [PATCH v3 3/8] rockchip: px30: Add EVB_PX30 Kconfig help
Date: Wed, 30 Sep 2020 18:46:21 +0530
Message-Id: <20200930131626.265206-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200930131626.265206-1-jagan@amarulasolutions.com>
References: <20200930131626.265206-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200930_091726_741915_D13BF6B6 
X-CRM114-Status: GOOD (  11.94  )
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
Changes for v3:
- none
Changes for v2:
- Collect Kever Yang r-b tag

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
