Return-Path: <SRS0=p67a=ND=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C32A4C432BE
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 09:49:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 794D861038
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 09:49:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 794D861038
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/w4cqOTZx72iUGkMfBclsclFvBr0IW9LVCacOfjFvI8=; b=O4xuM/Drnu1k7H
	9mqwMfK4U0KrSlXIeb+Nte7IyG6a9RlIieAgloHYOA/WbTkNqh7iAqQY5Gz92/9eH1Q2ls/9pNhmY
	tlIOx6qpqD/t/8lRYHfGmRVSxSptL9XmK00S59Yx8aBVCDEZP261yqhixZvZPc8Uv6w091CY/NDvZ
	4XTtu4bTWALkWPAVZnLkJ/b5ml74oTVREqZLRRizm17BpkZ29iDl8isCbDtUcBe1pGqdEME/EU5lq
	kst8aABcIKNjrbNW6avijwh3nrz45Z9q/kL3JxLoec5ztCxypxYQEb1gDX8oovWXouOmNQh/bidqi
	kAgqcBvDThtWiL/P9n7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mE7LI-009XV1-AM; Thu, 12 Aug 2021 09:49:40 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mE7Jh-009WcW-6K
 for linux-rockchip@lists.infradead.org; Thu, 12 Aug 2021 09:48:07 +0000
Received: by mail-pj1-x1030.google.com with SMTP id oa17so8512416pjb.1
 for <linux-rockchip@lists.infradead.org>; Thu, 12 Aug 2021 02:48:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dOqSFltEpEbokoDy6ipxidhtAiWmCLx6EcMqY/l120k=;
 b=TqcSRmeOh1pvcfCL19XkABqdF4XmOBYjRvCaliy+6d3wemr1Mu/RiODHwBpiy0ts5u
 Gc7AGlfxitsOH18x1BqcD8qNSTPsJ06Ubc2p3rx9mL+WIvkt0mAOUqIx9NLzGdnKMJpZ
 ++a/jxJPt+QMYST0iyJDEaY9s67RSpBt4Vsp0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dOqSFltEpEbokoDy6ipxidhtAiWmCLx6EcMqY/l120k=;
 b=Pb84akkjmcQZ5hU0YaDd3RCQw6heAQ0NwXIIU9hq0amZE0nX2rzpRHsM3MTVrXFU+K
 xQFULI0fQELWaMvTKxugD5jnEic7dGJ5TfPY5KSJGa4IR+QM+D/XNtPJRBT+FP83sw/W
 uTEr7U3maxbfQJnBzKnHfP10lYoH4sVegDNjU4vV+YdjT1DvKfShWw0uRuEZfCz66vDW
 7d22f7mw9AYyvhDavNsipXS5AShhEce6QbVtHZLGxXVqhEksjRRXsRYtAS1tGZuRIN8D
 frC/fl5iSab3LO+J+jX1EfdJ/j5eMjHbExrXE2MOfL2UtH9MNbOS7ouFZvorpArxzQCf
 6eRg==
X-Gm-Message-State: AOAM531ZQ8O7p13ZAqQUsA/Won+mJMlehLlrfOZlhL52SAw+gJ6wYzg8
 xmkNqrddrB3BZmie5Nx9CJ19ZA==
X-Google-Smtp-Source: ABdhPJxkhC26wPbMoVehPfVfyF7Xq2iQYzJTKWqq7f5cKZSfqJrbxlyAv0AfS1F3smIRrLqcn7mJHQ==
X-Received: by 2002:a17:902:edc8:b029:12d:4a06:1c25 with SMTP id
 q8-20020a170902edc8b029012d4a061c25mr2994745plk.61.1628761680406; 
 Thu, 12 Aug 2021 02:48:00 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com
 ([2401:fa00:1:10:8e0d:8032:9364:612c])
 by smtp.gmail.com with ESMTPSA id z15sm2991052pgc.13.2021.08.12.02.47.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Aug 2021 02:48:00 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Chen-Yu Tsai <wenst@chromium.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add gru-scarlet-dumo board
Date: Thu, 12 Aug 2021 17:47:52 +0800
Message-Id: <20210812094753.2359087-2-wenst@chromium.org>
X-Mailer: git-send-email 2.32.0.605.g8dce9f2422-goog
In-Reply-To: <20210812094753.2359087-1-wenst@chromium.org>
References: <20210812094753.2359087-1-wenst@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210812_024801_289158_6ABC93A5 
X-CRM114-Status: GOOD (  11.13  )
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

Dumo is another variant of Scarlet, also known as the ASUS Chromebook
Tablet CT100. This is almost the same as Scarlet-Innolux, but uses a
specific calibration variant for the WiFi module.

Add an entry for the board compatibles.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../devicetree/bindings/arm/rockchip.yaml     | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index aa9a4fd4fc20..4aed16176434 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -298,6 +298,34 @@ properties:
           - const: google,veyron
           - const: rockchip,rk3288
 
+      - description: Google Scarlet - Dumo (ASUS Chromebook Tablet CT100)
+        items:
+          - const: google,scarlet-rev15-sku0
+          - const: google,scarlet-rev15
+          - const: google,scarlet-rev14-sku0
+          - const: google,scarlet-rev14
+          - const: google,scarlet-rev13-sku0
+          - const: google,scarlet-rev13
+          - const: google,scarlet-rev12-sku0
+          - const: google,scarlet-rev12
+          - const: google,scarlet-rev11-sku0
+          - const: google,scarlet-rev11
+          - const: google,scarlet-rev10-sku0
+          - const: google,scarlet-rev10
+          - const: google,scarlet-rev9-sku0
+          - const: google,scarlet-rev9
+          - const: google,scarlet-rev8-sku0
+          - const: google,scarlet-rev8
+          - const: google,scarlet-rev7-sku0
+          - const: google,scarlet-rev7
+          - const: google,scarlet-rev6-sku0
+          - const: google,scarlet-rev6
+          - const: google,scarlet-rev5-sku0
+          - const: google,scarlet-rev5
+          - const: google,scarlet
+          - const: google,gru
+          - const: rockchip,rk3399
+
       - description: Google Scarlet - Kingdisplay (Acer Chromebook Tab 10)
         items:
           - const: google,scarlet-rev15-sku7
-- 
2.32.0.605.g8dce9f2422-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
