Return-Path: <SRS0=Dydn=CJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBD03C433E2
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 08:29:53 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 970AF20767
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 08:29:53 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="B5GNAxoY";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="GUHaAwd/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 970AF20767
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bMSIUEr/8wqcPWPT+yAGlEsPgPOSuhPKsmgnugPOPCo=; b=B5GNAxoYpopQ1NY58TKxztxa0
	XfzbV8jZcutAJVw9Jx9TJIggq3FQLbUeWwXonzldJmDsM8OiAgcaRIxMe7PGFfnKKNnaN//e4qFLE
	xoEA9JQASUlX+NXL/JVmrfTyUnVrQ1W/Z6ROqyDDMn7gOAJhramuUWWIq/CtoKPPZFci2rDOEdPJj
	DhtQ8GUFk9RvDoTkmkTRfLx1vdMxFM6RUXuFl9BLqxxfbJffTmytC07eOAIgQwqwv9Y19HPsoXDWn
	t0VKiRmoVnb7CG6EFPSAX145hyQ4DXYTVesoOZtQ0nuE5UCI+tOuNyF0cQyu83/HdUhDMXKwnA5VY
	whodAZqwg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kCfCH-0003Tn-LH; Mon, 31 Aug 2020 08:29:49 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kCfC4-0003Ny-HL
 for linux-rockchip@lists.infradead.org; Mon, 31 Aug 2020 08:29:37 +0000
Received: by mail-pj1-x1043.google.com with SMTP id ds1so2760537pjb.1
 for <linux-rockchip@lists.infradead.org>; Mon, 31 Aug 2020 01:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fbXuvXbOyNsrkch0SC6guvyYDJEednZEC4rbU/OSYZE=;
 b=GUHaAwd/OVq+Nq6zo3XRQW5MC7/o7yldoxDX5WzYxROH5nYz/yPBbVfJfKrPS2Z66B
 SaOuGyr1b3zqm//7K+7iZiKcaD0+OE7W/r54u8pmBcckpLX3vK0p0V/mjCZEpSedCWnB
 rh8ppbxSpzUB9eLR0rTw2eSGetJBCapNgEklo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fbXuvXbOyNsrkch0SC6guvyYDJEednZEC4rbU/OSYZE=;
 b=Jk4lPy6C5Gkvbk0YWF6gxf2L5rCglx/gDYdrnxj/6evzRUiNQfd2IkghNmx6J8RZS2
 67gGIc8fFUfkwDKelGxdlnHDAwFAZtkGqrst+LauXBTDgBve4Q6G/rqa0PK8Iz0Ix4cj
 xz/DUX8qWaSIZyo8FcgL9sQBGwkOI3JG0rUXlqMwNVm+DSYBT7bf0QQ9iwxsDWkSUfu5
 pAC32GbBK1jBZPOpLjW+yk5su+XmXienMKuyCcu2fxY+niqPouy1OCd1wrZix2Hea4us
 m+MGzPpVFQar85rLNOaYYNcp11wJFv4qMKiCDkP2LFMnSwnP7zw3FP/iDVci4Cb3r97o
 DzmA==
X-Gm-Message-State: AOAM530HgwX+mO3dam3zOmYjvX/LcawKwLFG26i1YnQvKOLNKdoQ2mLO
 N0u+MGa14FxYqNA4uvbDNQZy/Q==
X-Google-Smtp-Source: ABdhPJyJXaeoxtiNl66ML5eCK52+c/iNYMUnqKMB0TmVaIsjhr6uuZSp1si7bK8QzlRt0Anh0eLRlA==
X-Received: by 2002:a17:902:8a93:: with SMTP id
 p19mr281191plo.101.1598862574362; 
 Mon, 31 Aug 2020 01:29:34 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:d50:45fe:aaf3:66ee])
 by smtp.gmail.com with ESMTPSA id
 b5sm6411335pgi.83.2020.08.31.01.29.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Aug 2020 01:29:33 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 1/7] dt-bindings: arm: rockchip: Add Engicam PX30.Core
 EDIMM2.2 Starter Kit
Date: Mon, 31 Aug 2020 13:59:11 +0530
Message-Id: <20200831082917.17117-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200831082917.17117-1-jagan@amarulasolutions.com>
References: <20200831082917.17117-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200831_042936_638901_E4FF2078 
X-CRM114-Status: GOOD (  10.90  )
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.

EDIMM2.2 Starter Kit is an EDIMM 2.2 Form Factor Capacitive
Evaluation Board from Engicam.

PX30.Core needs to mount on top of this Evaluation board for
creating complete PX30.Core EDIMM2.2 Starter Kit.

Add bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Acked-by: Rob Herring <robh@kernel.org>
---
Changes for v3:
- none
Changes for v2:
- collect Rob A-b

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 7025d00c06cc..bda0f2781890 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -70,6 +70,12 @@ properties:
           - const: elgin,rv1108-r1
           - const: rockchip,rv1108
 
+      - description: Engicam PX30.Core EDIMM2.2 Starter Kit
+        items:
+          - const: engicam,px30-core-edimm2.2
+          - const: engicam,px30-px30-core
+          - const: rockchip,px30
+
       - description: Firefly Firefly-RK3288
         items:
           - enum:
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
