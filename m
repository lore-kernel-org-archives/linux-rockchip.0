Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E2A2C3DA78
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jan 2023 10:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GR5ptn0xZl53LlN79bFaEihLsF512ZPNvU9Zl4xxBHw=; b=C8RVA6qF2Ud4ZA
	xUBssQA6S4ozSwHRtSnT8F64ClVI/cSp6BBEYqNQccGOZ7LKx9TuV9RVN0mA8DO25yeoefs8suyfE
	apQTo5R08WPRAblKkRePY769ZmOBygIQdWanyNsuvXHpMPlOX2NiIp8SwOMeJH8+x0e1JbdjPLcmG
	IW6BiTB5Qb1+b2XtpUDt5DNHnNS8tuwIHQ3rduA6Cv+MU9yCpw18PE10haOJpbF/6D2In/Z0VkYaS
	DpDkHPFZ3GJmZuQTDDOEb9hXWiwkwjntGi77BBhE9x1KG8rxqiB3OAphsIRdLr59oWExT6zDz5XG6
	zVrH8KKbu5RfELBddKIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHjd6-00Ds4h-Ps; Tue, 17 Jan 2023 10:55:48 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHjcm-00Dru3-PJ
	for linux-rockchip@lists.infradead.org; Tue, 17 Jan 2023 10:55:30 +0000
Received: by mail-pf1-x42f.google.com with SMTP id g205so6048189pfb.6
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jan 2023 02:55:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=chQ7HxST9kD6+SAwU/aUHt+HkzjYxiYOol+zzwdXg7Q=;
        b=gKHOtnHdAjf0f1bpd3Q+T7IR8mzBkVmftBpHkt3HoEjRw3ofxVtZc1ufB+CwpMc+S3
         V9KEhuSY7NSGtcNl57abFU71lycQmLDcNomSSgOfxBf6FRP92I88SnJTWrmedSYxNPiz
         0dip4UJMSEACslxHV2cg40Ke7+ARvhpa3yCfQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=chQ7HxST9kD6+SAwU/aUHt+HkzjYxiYOol+zzwdXg7Q=;
        b=oyKSV32WsljXRb7/Ao68FsL1yoscgTp7LQCWCOy7XTcW8jRyvfAllNjs732sS56IN1
         gBePd9gPrYT/T7SakFhQY21fWLtYGr6GkjsVCMZlzvfhmAfA3zg4DZ2D76JGlBDZgHHy
         PYjC7alsNI3mO6hB5aEGeEAqrW707E5TxRFAT2Xc0XTLXYZ0PwvGd0mT0ps/KcF07nDr
         gf2lQ6ovpv31KUQshgFhzt1yzeRGfz83ua3WBrvk0vLvgAfmDuZuZX2/860IHOJYjD87
         vXEmkVKWq0wxzJco6kpoO+uU2eNgXqwxDcR/XPEvrnRLX4941p9W+maDQRh0gVId9EJ7
         dyng==
X-Gm-Message-State: AFqh2ko/lkL118MQqFLuw5ex+oxkXfDupyFi5457Fpb0/VXSiylvAUj8
	z7HZH0vj1+kXbuKUMnMdBFzYIg==
X-Google-Smtp-Source: AMrXdXtQ28X7l9/UiAPdc0ZzbjmweYSnidXPeSq8ZhHOcsZEGTK6XyG8V210X8vmV9Fyb4TSmnOjbg==
X-Received: by 2002:aa7:87ca:0:b0:56b:dae1:e946 with SMTP id i10-20020aa787ca000000b0056bdae1e946mr2908282pfo.28.1673952927041;
        Tue, 17 Jan 2023 02:55:27 -0800 (PST)
Received: from localhost.localdomain ([45.249.78.214])
        by smtp.gmail.com with ESMTPSA id w65-20020a623044000000b0056c349f5c70sm19837413pfw.79.2023.01.17.02.55.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 02:55:26 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@amarulasolutions.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 3/7] dt-bindings: arm: rockchip: Fix description and compatible for Radxa CM3i
Date: Tue, 17 Jan 2023 16:25:00 +0530
Message-Id: <20230117105504.18296-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230117105504.18296-1-jagan@amarulasolutions.com>
References: <20230117105504.18296-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_025528_849291_91DD5FE0 
X-CRM114-Status: GOOD (  10.89  )
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

Fix the dt-bindings for Radxa CM3i SoM based boards with proper
description and compatible strings recommended by Radxa.

Fixes: ae9fbe0b1f96 ("dt-bindings: arm: rockchip: add Radxa CM3I E25")
Cc: Chukun Pan <amadeus@jmu.edu.cn>
Reported-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 3d3c59624483..6f276d787e50 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -628,11 +628,11 @@ properties:
           - const: radxa,radxa-cm3   # Radxa Compute Module 3(CM3)
           - const: rockchip,rk3566
 
-      - description: Radxa CM3 Industrial
+      - description: Radxa Compute Module 3 Industrial(CM3i) SoM based boards
         items:
           - enum:
-              - radxa,e25
-          - const: radxa,cm3i
+              - radxa,radxa-e25      # Radxa E25 Carrier Board
+          - const: radxa,radxa-cm3i  # Radxa Compute Module 3 Industrial(CM3i)
           - const: rockchip,rk3568
 
       - description: Radxa Rock
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
