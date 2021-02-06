Return-Path: <SRS0=YjQ7=HI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 228A8C433E6
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Feb 2021 18:50:46 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 992F464E59
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Feb 2021 18:50:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 992F464E59
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=045+AA8JKXAlQ1hhI/+uako/bPSwthj6K7XyFoH3BHs=; b=pN76wQORRdkWzC/BwQ/SXTVCj/
	pefuyQjtcI9ca3c/0/d/wnw1mULoN9Sn++e045LUquFyH6KhUrOZLskmk3F4wyjc6UCZUvlVR+PIR
	0QWnkdkMdQJXf3uNGie7+1jwcwqbi7/CJrxNqNkIB9S1ICDgrIz3Dm7ia4l41tFKiQ589/axh6C22
	C/fPIrPnRG6nLAoLwLoloolbFKJflhT+4Wfaxw8Tz7MrZpI8+ZjHt+iBEjYPi01cQFKnab3FUDKqc
	HQcKCEXp/rA8M1PP+lyxxRYk2Gx9aRjGLKC0LR1E55jS9yF1SsuAPpsT+Dxf+xW+INkAKD/DFBMPy
	ZHGXYjKA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l8SfK-0003xc-MO; Sat, 06 Feb 2021 18:50:42 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l8Sf9-0003tg-Dl; Sat, 06 Feb 2021 18:50:33 +0000
Received: by mail-ej1-x632.google.com with SMTP id hs11so18354228ejc.1;
 Sat, 06 Feb 2021 10:50:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cNFFFBXY6L5UHLHUyj3rIyUKC+rbFyqqqVFEOT4uqFw=;
 b=CnzYUuxcOyyTvOan0vBJMMJPGwICmf0/GH9SAr4roDkk2w0jcRAOb5QFrIJBnRnage
 svbh6I70pNYLmUByFDqW/N5b0bMUUDdb+WDWr1yFXDjh4afUM8Ai54CVVs6P4pbJ0diK
 E3DTUWXcSYOueZQsG9UeXkeSUbcHFO0+gdHboOrjk4CJX9+b8vO6Tb7qNw4tD1qQ014S
 d2q5bQZjgKt9g1xo5rJXf2UlAXLKwDCgdRZoEdJW8YfumtLc11QfgQ3hCAQFhbOjyvpz
 jzZ04XCPPK8L2CyxZstvGnFmY07niZ3i5uSx36r/0Cz5/0nIMRDKwTLl/z9Ir5eFF1u+
 h58A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cNFFFBXY6L5UHLHUyj3rIyUKC+rbFyqqqVFEOT4uqFw=;
 b=Z8ess3xyQ58gbB2mjaCfjSZF39dMMRcgEPDfFEtXxE6a3o1XC4ps3HwVhWL/LdleYg
 2Dy8L8mrAOrbRd2lu0NQZJE/lp+96mgoBJ8hGWmL4YNDUGeEUFwU6ejPMWgNPcgiw7QO
 yJQaPSP02pwue8bXN2SYwymU4xQjcwphNV8KJ3KtuA1vO617k9R5T+E4gHeJkRu6rZzd
 1p/DAix3ns8TdHWNhBkKmR+fyo97gRgy2FTIiIOKGa3BYa2gDSfbOdjS5KNOzJzwkRjk
 dHRfLFUAhF2LWzc3qbweYpuIrI9hI2l+wHgDRrMineUPoLXSh6V1MDsdMA9qCXYeg/PO
 nrdA==
X-Gm-Message-State: AOAM530+DsWf3cxWU1PM0WxG2t+M1DFDqM1kIS3J4yUnm02BizWqtobk
 GOkLox6Ltl4P1PIxQp5ivh3Xhu8D2co=
X-Google-Smtp-Source: ABdhPJylNtHRx2BQ92Cv5mX8YLcNOgMKwC7xgE/+m1i1Q2fl7RY+GSv0b11XH4gATIbkcNHYHhif/Q==
X-Received: by 2002:a17:906:d19b:: with SMTP id
 c27mr10099272ejz.234.1612637430296; 
 Sat, 06 Feb 2021 10:50:30 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id cb21sm5890005edb.57.2021.02.06.10.50.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 06 Feb 2021 10:50:29 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v4 6/8] dt-bindings: usb: dwc3: add description for rk3328
Date: Sat,  6 Feb 2021 19:50:15 +0100
Message-Id: <20210206185017.1817-6-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210206185017.1817-1-jbx6244@gmail.com>
References: <20210206185017.1817-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210206_135031_500301_8CCBC99A 
X-CRM114-Status: GOOD (  11.31  )
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
Cc: devicetree@vger.kernel.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add description for "rockchip,rk3328-dwc3".

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
index d815aacfc..08a08ffce 100644
--- a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
@@ -27,6 +27,7 @@ properties:
   compatible:
     items:
       - enum:
+          - rockchip,rk3328-dwc3
           - rockchip,rk3399-dwc3
       - const: snps,dwc3
 
@@ -37,6 +38,7 @@ properties:
     maxItems: 1
 
   clocks:
+    minItems: 3
     items:
       - description:
           Controller reference clock, must to be 24 MHz
@@ -49,6 +51,7 @@ properties:
           Controller grf clock
 
   clock-names:
+    minItems: 3
     items:
       - const: ref_clk
       - const: suspend_clk
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
