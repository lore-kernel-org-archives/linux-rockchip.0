Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0A47CCD1AF
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 15:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ijN4bxXKRglDqFH3kjDw9FVMtRBzndZs/npRtFloEm4=; b=aquadSm9GXo4s8
	jY12UFewIvR8znW2C7LcARq3zeLLlgQC7DCQFubQ+eAFmQ2RBS8eoRvX5d14EAw1xGHDXU29ezZQq
	NSqy7zfOzWq2ns0ogbEUtMzp+Fbf4wh36MCWT2VzcPH90mUlQCBIGkQ9LfzvbL7LLL7UFy2UJyXH9
	uGWikgXfaJNzWrtM9PkzL5W2oI2CyBokh02kWplu8vJAnb1dVyOUZubDegfkAzSJ+QHDnSUFB+xK+
	Mw4SgY9WkW/noxh9Apa+jQ8/nm7ujcBYs3KOyBgQjM6AM79XoBHlx9JSGXwwm0Cfde0RewEf0CMH5
	90bjj7o7KIJnmnEbUeAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBECc-0000000HTzm-3wA7;
	Tue, 21 Oct 2025 15:23:10 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBECZ-0000000HTwX-2DB9
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Oct 2025 15:23:08 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-b3ee18913c0so1096321766b.3
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Oct 2025 08:23:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761060185; x=1761664985; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iRUWZKJz8QXcL7JDWXMsqyjuK/+v8dxv2RUaG2Er49I=;
        b=XPDSPPaEUROALMNpfUPHgVznXrCcvKeCIa/ldJwWIEheUXederVmVTCzAGMFTLxrTI
         coOB86kqNLCByv/7SsQyqxun/hfFhIqYm5WThkPUSKV7l2SQ9ra/EFynMnmxN+QWFy6T
         NFiHM7s13xB1IOP2Ar3/2n87AdaFRGQcJwmx2n72th2r9PnGmIGsVi4C9kADhvsuBdO0
         /3f3jjEp92Flaio9Jghung46pz8B3xicOo6hvmIem85CAqoVWZuBMjIMZAaDW2hWVNqQ
         8DelTUr0LR7LOTWGABu66s3GFNHq9u/N4Oy1f/4pVYw1VyVc3nTAXb9PU9GLDYhTDsDC
         vGDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761060185; x=1761664985;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iRUWZKJz8QXcL7JDWXMsqyjuK/+v8dxv2RUaG2Er49I=;
        b=NIs5D7W+ED4Z/ZoBhE0uMAN1OfKTLAk3389lCIGz3pkaHojj5Pu5EKmQph9+rBxPPx
         JdVtY/fFFsVAlcvSTJNd3a9xUBkqnAxmWX++WS5K+pAClVrKnaLwZq6WrYQoPXdQfG3q
         3vSUr4OIA5F/YZKb35TF8iXu7UYcCMJugCQYnmH//QZUS0MY0IJ9K6NBCxy/AymSi3q+
         bCHFAI43PCDb4oaV66OCMztP/HnaAVZLvX2xjGUTQlBsIoB4G2tR3A6QC1xv7aLYQ67L
         VNjr0syiIeFb8PzU7a2/oGTmpflBevaYUV6t4nxuD8AUk0dws0wmb+W9Nr3YFPwb2MCu
         04hQ==
X-Gm-Message-State: AOJu0YyM/14O9B9I4yx8kVDWCqlTl6m8hHFN268XXWea19A6zfuTEHHc
	s5Qs6JX2R708v6pC/PrYvSfJBb8GvqG9bGoSYtCDAX8S6XfwzL6a+lmQIBf4/Kw7
X-Gm-Gg: ASbGnctaGfnXFuVZBoaPKp0OM0KHJbPtCeYxj1NgstCta09yyC5+OAk5CypjLmGDlMn
	Zj2t6bxYe7s7U53+CAZj8mDBDCELVa5aHRvra5oZEfnw2iEGNU2lZYh7osHqsLvV77smhCgJvYr
	8iiErto426FHv+wlueM32HJ3UOLfR/QpqgKjMHxRAZbNioIsS0xbsoss7IA+1KIg3f8+A937sMY
	9TS6MjhDxz5eMBz5f31HpHc15XkhPUpAv/R9mnPFfDpJtblYECzpmEF7zNbHOKYikLOjQWcR6z1
	ctTMlQlObkm9dGdbzIieTN62T5pU7pSgoCBlgfDs9a+6HNISOIiwX9Bwdx+VKcp3UrGuACN7IFx
	oNihRT1H7Zrts3h7jiSVo4H35eh8UusCdAnl9Ljtq3GODqMunB+nire3vMqj03VWdN4/1gcwfq5
	bxeAXYFGnmZp84z0jL+rzpqP8KGcI=
X-Google-Smtp-Source: AGHT+IE+grqHyHjvdfn/+GTlut2T9pN+smpWyR3Zmo3k/imM3uqNFy7DYPHxH9YOxjwJjGQsNYol+A==
X-Received: by 2002:a17:907:1b15:b0:b48:4966:91a5 with SMTP id a640c23a62f3a-b6474439497mr2369303966b.30.1761060185029;
        Tue, 21 Oct 2025 08:23:05 -0700 (PDT)
Received: from tearch (pc142.ds2-s.us.edu.pl. [155.158.56.142])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e8581780sm1082737866b.31.2025.10.21.08.23.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 08:23:04 -0700 (PDT)
From: muhammed.efecetin.67@gmail.com
X-Google-Original-From: muhammed.efecetin67@gmail.com
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	neil.armstrong@linaro.org,
	lee@kernel.org,
	rafael@kernel.org,
	efectn@protonmail.com,
	daniel.lezcano@linaro.org
Subject: [PATCH v3 1/5] dt-bindings: mfd: khadas-mcu: add new compatible for Khadas Edge 2
Date: Tue, 21 Oct 2025 17:22:41 +0200
Message-ID: <0e604eca9ad9ce71f74b6f3aae60bbb949697590.1761059314.git.efectn@protonmail.com>
X-Mailer: git-send-email 2.51.1.dirty
In-Reply-To: <cover.1761059314.git.efectn@protonmail.com>
References: <cover.1761059314.git.efectn@protonmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_082307_564528_BC85D331 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
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

From: Muhammed Efe Cetin <efectn@protonmail.com>

Add new khadas,mcu-edge2 compatible which is going to be used with Khadas
Edge 2.

Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
---
 Documentation/devicetree/bindings/mfd/khadas,mcu.yaml | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml b/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
index 084960fd5a1fd..c0f91eedfa8ab 100644
--- a/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
+++ b/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
@@ -11,13 +11,14 @@ maintainers:
 
 description: |
   Khadas embeds a microcontroller on their VIM and Edge boards adding some
-  system feature as PWM Fan control (for VIM2 rev14 or VIM3), User memory
+  system feature as PWM Fan control (for VIM2 rev14, VIM3, Edge2), User memory
   storage, IR/Key resume control, system power LED control and more.
 
 properties:
   compatible:
     enum:
-      - khadas,mcu # MCU revision is discoverable
+      - khadas,mcu    # Used by VIM2 rev14, VIM3
+      - khadas,mcu-edge2 # Used by Edge2
 
   "#cooling-cells": # Only needed for boards having FAN control feature
     const: 2
-- 
2.51.1.dirty


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
