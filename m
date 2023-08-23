Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDC25EE4993
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Aug 2023 08:56:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C3KaszXlZLORBT6w0rzIw/yxzxWOYoQame9tFxVzfUM=; b=YcqSLwPvJffj0A
	GF3PaxC/3UrpCIQYDPoFkvFtTGV70bi4jlZ9UBJ8PoCqVn+kK5zzLbnjThO3xWaSxnwSbBzIsTTCi
	Sf97Ikwnjv23+uICj8d6JAEcROZrXQmykjo46zpLpL9/3HeBa86aI2oh8yph5RoW+a67SVYDlLKy1
	DSgFvZTxY14rJKBU5/E5UujAHZ34NQzn0VNfpxRl0RrxheWtX4/KlCK6ss9hr1tKEYgEYPYZ1pTkw
	T+vZbw5dhokx9yX684m/lejocJpnZJbs/fAYO9obnm73jBV4Rh8ZXpPDxfz234lQ5fb7A8+sicxnj
	PW5xWrciK7mkiKsWtMHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYjf1-0000zd-32;
	Wed, 23 Aug 2023 08:56:19 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYjez-0000xW-0i
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Aug 2023 08:56:18 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-99c353a395cso713453466b.2
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Aug 2023 01:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692780973; x=1693385773;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vs7TYRhEZae23BHcIvi2Ln4wVlirirYZRQLMvBSgBWU=;
        b=qan7IvYVFvpkudj1oCiCGUjwxzOASjonXBBDFM8N4bBUqjb2EjGk3gkublwDEuHFYM
         93f1UR1UGYryn5tHmLwJuKpyHblWld0eglXTmc8jaaGS+59lpKV6X2mMRN0w+Hi7w7n3
         B4AgxIpo2jacUJSDl9r9s0byvqoP8q8O4jXDq7NHFJR3fysMXBGuqxADvI2UmZgrYgWL
         Cx+iIItLq6/+R7BcykLQEa3m8MjMSOUvi5/L/mMXH79apUk/QrmH877zMl3M/q5/5btd
         OrIUNiEy0s9YJlciBJeBe8FRdbPDo6u/AFBln797VUpKRTGPWt+N7pM3gvqlnUaAxHwq
         xu0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692780973; x=1693385773;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vs7TYRhEZae23BHcIvi2Ln4wVlirirYZRQLMvBSgBWU=;
        b=GmO2kE2xlKQ5ngRCtcwTWbefawc+eEYMRQTwR1pwc7YVxTAisiBhjG8wl0RHCsOz62
         hevC7II3v65Qvj/4WfidEFVrHWRwbNFiaBOMKkW4tsz3T8UHgErpIxTkKC7assgr/W9/
         IHgBlKsNa3sfDZLB3+p7HfCsqmnsulWlPeSUlaTxRnzQU/FB27zJb8mnHqY89sM4Ak0O
         83ZohipPTaIlokfNyFbmcpFMvMcde5FxpYK9qDw+M5It6s5JFHIo4ASlnO6wM1oEf8Qf
         G3ZTMGIMXv3gBPhoXt0SguDvZdQiCu/YbEb8nVM7NL6cAXS8+qgBpTmeHWbSGKDTjfUZ
         uwlQ==
X-Gm-Message-State: AOJu0Yz7w1uxDfMu25X+ju0Xic6CtmB8Q6hEVP4Si92C/a2C/nFN18l+
	UIGTsAKz0iD4+tiomh1mbu75WA==
X-Google-Smtp-Source: AGHT+IFl4ErBydRgH3o+szBhieEObFyJk2W1qgdlEGWyQ2DuJPK2W+Wat1TPa0oQjMvvp+JQX7n08Q==
X-Received: by 2002:a17:907:2bf7:b0:9a1:ad87:1354 with SMTP id gv55-20020a1709072bf700b009a1ad871354mr4511261ejc.34.1692780973398;
        Wed, 23 Aug 2023 01:56:13 -0700 (PDT)
Received: from krzk-bin.. ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id lc21-20020a170906dff500b0099cc15f09a0sm9525260ejc.55.2023.08.23.01.56.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 01:56:12 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] media: platform: use capital "OR" for multiple licenses in SPDX
Date: Wed, 23 Aug 2023 10:56:10 +0200
Message-Id: <20230823085610.116607-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230823_015617_257508_430ECC30 
X-CRM114-Status: GOOD (  10.26  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Documentation/process/license-rules.rst and checkpatch expect the SPDX
identifier syntax for multiple licenses to use capital "OR".  Correct it
to keep consistent format and avoid copy-paste issues.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/media/platform/verisilicon/rockchip_av1_filmgrain.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/verisilicon/rockchip_av1_filmgrain.c b/drivers/media/platform/verisilicon/rockchip_av1_filmgrain.c
index f2ae84f0b436..f64dea797eff 100644
--- a/drivers/media/platform/verisilicon/rockchip_av1_filmgrain.c
+++ b/drivers/media/platform/verisilicon/rockchip_av1_filmgrain.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0-only or Apache-2.0
+// SPDX-License-Identifier: GPL-2.0-only OR Apache-2.0
 
 #include "rockchip_av1_filmgrain.h"
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
