Return-Path: <SRS0=CSn7=D6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A192C4363A
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Oct 2020 18:18:48 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 880552192A
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Oct 2020 18:18:47 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="zVinJkfy";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="OnkZ5bNo"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 880552192A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YTQhgegnJaIriXfLDZeoZEf9ZXsoo0JJiy0vFdjY+fg=; b=zVinJkfyKbP8g8AwpZIaraOqJa
	JhWSuix50u2dJOldu40WxAt2pN4paht71eWANdWEnS3rxFrEo+ZWdfsGV7KVbnR+g7BK7lLQ/ohka
	5tAiIUxkUm5GUA8Rk5H0zK2PxjccbVONJ2aGOw6VaNd2gzidY3VndRcURF+GnPJ2vS3BbAanNPnjr
	2pJHja/VNzzF4lsyq5xs7Km0JbwSM25ulXKQGdxPgVw1skrTmt6zdC2JXf5+IpPBGfY1cknZRTNx+
	ovv2WyHmQ85/8AFBMuXh90t5UjqOszbc1xpZrMw4yPBQTcubaY1FpW/3RECAdPpbgwdD3lyOte5EX
	+YN+HuBQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kW1eE-0007QA-KU; Fri, 23 Oct 2020 18:18:42 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kW1e7-0007Nt-R0
 for linux-rockchip@lists.infradead.org; Fri, 23 Oct 2020 18:18:39 +0000
Received: by mail-pf1-x441.google.com with SMTP id e15so1982573pfh.6
 for <linux-rockchip@lists.infradead.org>; Fri, 23 Oct 2020 11:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4m6jfpbMPvI670v+G/621vDvUbzIbqCiowX3qojKrHw=;
 b=OnkZ5bNo3R7+KUYl2VjSFO4cE69flfZGBlgFhKWUCEvet4c7zl9z0V4Qa/bIHcoFlb
 ZvZUeqnObh5JBFDqgzycXfZq1QwG8mAJvv+v8eHfYQGSRUAvRlxsm1u5CI98zQOirmFj
 4yjjrW5PwzY1KGllFJ+rgc1yGbwPVz+8jyU0A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4m6jfpbMPvI670v+G/621vDvUbzIbqCiowX3qojKrHw=;
 b=lMvIc21875GWHKHCqOvJ4F1d8qRdtchK630ygfHIjm8grfadIUPuKiWL2yjHodYeLY
 N1/SpSqlses6PQy+6+XxX0kBmgSgb48B9rM2MgrPmoU6k1A4+oeOAVPV7wqPjWrN3JXl
 lISvP4tcTdtI4/eoeVa4PJQAOBrgYvFaQlmmaaPJckyyoIs9LYoYTgUAfwncw/hmpu6m
 VFeZKW3wW6T4Keprw1TWINhu9lC4d9sQ1CeuMSilzw1oliNORJYNJYAtkwI26V6wyk4g
 eLnyQtV+e0iJeeSxXncrbxoHw704W3sT/9brjhWGSEAMhoT9TEyfF2GZvAZcgj85ZIMT
 SG2w==
X-Gm-Message-State: AOAM533GXe0lXmGa5CQLtvQsPNqkweDesThrzJIEt5od0cRRD5YCBh0l
 l1AH6aA9HR0svHL8ZG2uhe/90w==
X-Google-Smtp-Source: ABdhPJybfaHmQ0Qz0QLxS4XqhlxkmDHZb4o+gWXwJ3icSXABR6RqkLoRyXl0QuuoqyOHS54Cas/Ysw==
X-Received: by 2002:a63:481d:: with SMTP id v29mr2942292pga.448.1603477112153; 
 Fri, 23 Oct 2020 11:18:32 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7a4:2d08:2249:ad54:d32d])
 by smtp.gmail.com with ESMTPSA id q24sm3271162pfn.72.2020.10.23.11.18.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 11:18:31 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 1/2] arm64: defconfig: Enable RTC_DRV_HYM8563
Date: Fri, 23 Oct 2020 23:48:13 +0530
Message-Id: <20201023181814.220974-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201023_141835_900841_68AAE953 
X-CRM114-Status: GOOD (  10.79  )
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
Cc: devicetree@vger.kernel.org, Tom Cubie <tom@radxa.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RTC HYM8563 used in the ARM64 Rockchip SoC's SDIO power
sequence enablement.

Enable it as module.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index e0f33826819f..7f72d3b4b39d 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -770,6 +770,7 @@ CONFIG_EDAC=y
 CONFIG_EDAC_GHES=y
 CONFIG_RTC_CLASS=y
 CONFIG_RTC_DRV_DS1307=m
+CONFIG_RTC_DRV_HYM8563=m
 CONFIG_RTC_DRV_MAX77686=y
 CONFIG_RTC_DRV_RK808=m
 CONFIG_RTC_DRV_PCF85363=m
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
