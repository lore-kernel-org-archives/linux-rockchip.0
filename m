Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B304FC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 17:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JpSO8RUJoiIrhEGj/tkQ5s4X/4gcnT04QD3iCAcFtGM=; b=eif3FmTFLPKjwM
	f/gCuCCmjby/1ohBpk77daz75dMNyHKS1oD1IbfB/8HEp+0F/5+FOnEY2ku37C1vYGyuzsvpL5Oe1
	WronpWq2166ihioV7FoNm2oX8ehsSksmkNniL2PxoEk57Jr5FmdgYxbcM1vUCxw/zNvz+NKTZr0zY
	/EFZSZDFmfZf+Jt8qEN+JgVAgbcX+aULpsz5MKR1popNj8DMlv3U6+FbeYq9TyDXZ9bdVfKyGVZuQ
	LpVPihEe5JLHY6SCf50M1fzgXbUlmkJFHXy3QA92TwDkYOylh/OksIU4aBr3MHWfkLqs4PqSCN/ke
	IQ0QlWtog5OADvcXym/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj2Mi-00Ablp-US; Mon, 25 Apr 2022 17:19:13 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj2LR-00Ab6X-AH
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 17:17:54 +0000
Received: by mail-pj1-x102d.google.com with SMTP id
 l11-20020a17090a49cb00b001d923a9ca99so578424pjm.1
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 10:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8YzR51QEc0FmsjhtLkzToQteumKq7pdzNMCr5bpUTLA=;
 b=KI8XoIn8sA1Kr0nnIo9Ua9/WXx/WtnTL7iCD+xyEb2AqSff5ssQSSwz67cRCldCuz2
 5tGXvRzZusva2cah+TXpAQRyWUu8v3pDwDKXgOWXk5zNuAwDLFs0YbzQv3DYsaWuAIgt
 ubFS1DwY4ijVRG+Lb0NA209xKewZH372xe9fw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8YzR51QEc0FmsjhtLkzToQteumKq7pdzNMCr5bpUTLA=;
 b=h7XTfWiBfGQGzWk2vqjVAeaIwt1bbQqMNELpldvJniRq+2++OzOT4WDQvQvLiHnxO5
 t3PLBjHATFN7LlzxgYsgoxzx2vozZqtyU3vQpLEUt2iaMAKilIkvZ8omfJorzHxF5FtG
 l2DUY/XrpMzdM37LOJIAoHfqmP+H81m2glMQ+rKERL1VKCtz6UoXl4DPkNuRFWbMWlxt
 zzDnqiNnHMMd2tybpBXSgqV+sIOHPAzT0LIRssbQb3hTsJlvfIq9hfm3ofUp8tnRUJ2J
 n7jigww2uThkcdw1FhmCm5NJeUi0x9C5tXnjYk1mR6k3XwQPOlfbHWhJ4ZTniQt7LX15
 g5mw==
X-Gm-Message-State: AOAM5320xIa2xfYS45Nfk57iwfiOolJNCitk7a1M8XEqZIxqc8MLOw+M
 yaMAN5ZROTREE3a3KaJzNsRTkA==
X-Google-Smtp-Source: ABdhPJyZ0i9zPof9RW56oqxaQTCkRXXF1qA+ge9Y5uWq/CGWH38Llght29WWiBDMfc7MqV2Y83VE5A==
X-Received: by 2002:a17:90b:4d01:b0:1d0:f39f:6073 with SMTP id
 mw1-20020a17090b4d0100b001d0f39f6073mr21941393pjb.175.1650907069957; 
 Mon, 25 Apr 2022 10:17:49 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:3897:4488:e7c2:f2a1])
 by smtp.gmail.com with UTF8SMTPSA id
 h6-20020a056a00218600b004f65315bb37sm12804907pfi.13.2022.04.25.10.17.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 Apr 2022 10:17:49 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Arnd Bergmann <arnd@arndb.de>
Cc: linux-kernel@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
 linux-rockchip@lists.infradead.org, Brian Norris <briannorris@chromium.org>
Subject: [PATCH v2 1/2] soc: rockchip: Clean up Kconfig whitespace
Date: Mon, 25 Apr 2022 10:17:36 -0700
Message-Id: <20220425171737.321813-1-briannorris@chromium.org>
X-Mailer: git-send-email 2.36.0.rc2.479.g8af0fa9b8e-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_101753_404241_8ADDD97C 
X-CRM114-Status: GOOD (  12.40  )
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

There are spaces instead of tabs, and other inconsistent indentation.

I'm going to be editing one of these, so get it in shape first.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

Changes in v2:
 * New patch

 drivers/soc/rockchip/Kconfig | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/soc/rockchip/Kconfig b/drivers/soc/rockchip/Kconfig
index 156ac0e0c8fe..aff2f7e95237 100644
--- a/drivers/soc/rockchip/Kconfig
+++ b/drivers/soc/rockchip/Kconfig
@@ -23,23 +23,23 @@ config ROCKCHIP_IODOMAIN
 	  voltage supplied by the regulators.
 
 config ROCKCHIP_PM_DOMAINS
-        bool "Rockchip generic power domain"
-        depends on PM
-        select PM_GENERIC_DOMAINS
-        help
-          Say y here to enable power domain support.
-          In order to meet high performance and low power requirements, a power
-          management unit is designed or saving power when RK3288 in low power
-          mode. The RK3288 PMU is dedicated for managing the power of the whole chip.
+	bool "Rockchip generic power domain"
+	depends on PM
+	select PM_GENERIC_DOMAINS
+	help
+	  Say y here to enable power domain support.
+	  In order to meet high performance and low power requirements, a power
+	  management unit is designed or saving power when RK3288 in low power
+	  mode. The RK3288 PMU is dedicated for managing the power of the whole chip.
 
-          If unsure, say N.
+	  If unsure, say N.
 
 config ROCKCHIP_DTPM
 	tristate "Rockchip DTPM hierarchy"
 	depends on DTPM && m
 	help
-	 Describe the hierarchy for the Dynamic Thermal Power
-	 Management tree on this platform. That will create all the
-	 power capping capable devices.
+	  Describe the hierarchy for the Dynamic Thermal Power Management tree
+	  on this platform. That will create all the power capping capable
+	  devices.
 
 endif
-- 
2.36.0.rc2.479.g8af0fa9b8e-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
