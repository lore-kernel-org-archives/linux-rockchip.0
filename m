Return-Path: <SRS0=Bn3x=DG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F71C4727F
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 08:34:36 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 40F1B20759
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 08:34:36 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="yRLoc/Sn";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="kfiW+Njd"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 40F1B20759
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=axxpnZccB0uugOwDfeO8w/vB5mNgwTSEp9mxHJTTc8Q=; b=yRLoc/SnaZYKLahtdFXV2yopO
	xy6MKPq3tJMTgdQnn1IP3gNv54g0Etxn1i9hxG2TtMEnAkbyNvLfuPz9FaIGbFgIRSzylVvHQ/olR
	ZfKO8kdaIhrpIGg2rYzf3F6Zsv/pod1uHtiiTvUdB69JWcx9WLTydlnbR+d7x3YlE00crSW25hnLU
	k+Nt+NISFvwSxdDDsmaYzGs5MXxfJJLPdbeB0H/0akVG4HgXRxJ+ZRQY/rJEneOKXvXF1VYMrr9jd
	0HGjCEMy3INfndaQuzuTn0aZt16Aa2VvO93sanE6mdBSaqrfOH9pbcY8JMXkSRzosIzvcXgDlJtvt
	0ZZm62x/w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNB5i-000430-Ii; Tue, 29 Sep 2020 08:34:30 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNB41-0003Gg-Ob
 for linux-rockchip@lists.infradead.org; Tue, 29 Sep 2020 08:32:47 +0000
Received: by mail-pf1-x444.google.com with SMTP id f18so3791338pfa.10
 for <linux-rockchip@lists.infradead.org>; Tue, 29 Sep 2020 01:32:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0sUVXqpZJYkTBREYHZGN9bQA2aipRxyO9aiTTvfxyw8=;
 b=kfiW+NjdDy+C2sILWaGX88I2j6iS3pWFqcOPb2ZJZw4qrj1QS47zGBedSGdh8guFTY
 7mMLHb1rV8z8LCZ4fhO82oLCjnExT4WTFpie9mwGkjshyZHsBWLWAYgzr7rylJaU8Nld
 aw2KqJk/wk/SYbFuhHEKz38/9fMW122qWpEto=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0sUVXqpZJYkTBREYHZGN9bQA2aipRxyO9aiTTvfxyw8=;
 b=OhWoIoAysi3Qlt3lNz7HDApNCWHdu7qto5DPla7MEupDvYQ+HCesYXoyW8ovkBW9ju
 2zA9RF9L8SzzPDX7kJEWN6o0S4EXpy/22Jrf69c5eFWGGRilhdbHaEaI0jxnGCXSQAuk
 MFH9KYCqpux8zAxEARdBv6ZTmKa953iOKVyT9oo7NOl7w64R7UStj/mAIU6W3RUXoCq7
 0BboVxvGhgqh3EbYPZAncw2234fy11p0fHJyCUUhKwviW4LczXGtbL/ZI5dIW5QTp3dZ
 C7zes7eHCpkYUQoD6J8l9QHBNLI9b39EnAS04K81egk21otLwlgtfxb1RTHxOlG0hxzM
 maDA==
X-Gm-Message-State: AOAM530HglafB4/jgDpKCWhbWKhYbfppMcv8oAtGHp+2n3nT4x32WpM1
 WPKjGYzUWPCk1m7Gv+HoCyrt1A==
X-Google-Smtp-Source: ABdhPJzFRDorTIZS2Gzyq7KzAqkcBtri5d5hVUIMskwm3+Oj6sHiU6SVA+IXKnbF7FFx6WPpwe1KKw==
X-Received: by 2002:a17:902:6902:b029:d0:cb2d:f26d with SMTP id
 j2-20020a1709026902b02900d0cb2df26dmr3650727plk.6.1601368363652; 
 Tue, 29 Sep 2020 01:32:43 -0700 (PDT)
Received: from ub-XPS-13-9350.pdxnet.pdxeng.ch
 ([2405:201:c809:c7d5:b511:310d:8495:d767])
 by smtp.gmail.com with ESMTPSA id 36sm3961241pgl.72.2020.09.29.01.32.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Sep 2020 01:32:43 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 1/7] dt-bindings: arm: rockchip: Add Engicam PX30.Core
 EDIMM2.2 Starter Kit
Date: Tue, 29 Sep 2020 14:02:11 +0530
Message-Id: <20200929083217.25406-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200929083217.25406-1-jagan@amarulasolutions.com>
References: <20200929083217.25406-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200929_043245_885169_6AF5A19D 
X-CRM114-Status: GOOD (  10.32  )
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
Changes for v4, v3:
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
