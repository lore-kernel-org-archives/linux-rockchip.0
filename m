Return-Path: <SRS0=Bn3x=DG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85D4FC4346E
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 08:35:00 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1B76F20759
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 08:35:00 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="2kUoS5Y9";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="YrvST2P1"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1B76F20759
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DCIwtPCR5BuuWTIGYg8JeS1NYLLhRhvs5zaizkiGoFI=; b=2kUoS5Y9LfPSEwd5hBo3wnX9k
	LlKJzy/c53AP8bEyPXQMpNS2G4kPzCas2fuNox2PcMh2VsupIcLOH0KOETYD3KcxGJWEMJqus3HX0
	jCyg2c4WOsQMDGHGeFpxSQfotSWmW7MDbMPS9XLUKyU9McXWFU6/zWqe3vvAyffVGTGzAaTrdfSYF
	n6J0TxnbX48B7Vm3FM2qJ43H7CHiHAhUGYdAKbgW0w55fcQDcfDd8hyvfdIA308jt2H4Kgo2oGyfT
	sIr/ejiADQ7aNJSE8kVtOM2z3kP4HBm3B1MMqeQiKrffiQ7Z5+Mv2WswJ20vxAkgOoFWUMdS8vCVl
	bX9A0WWMw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNB65-0004HQ-KC; Tue, 29 Sep 2020 08:34:53 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNB4J-0003Q9-UF
 for linux-rockchip@lists.infradead.org; Tue, 29 Sep 2020 08:33:06 +0000
Received: by mail-pj1-x1042.google.com with SMTP id md22so3439026pjb.0
 for <linux-rockchip@lists.infradead.org>; Tue, 29 Sep 2020 01:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1TXOSGDfi3tEDnn/11wFhZgunf2JzZ8G4zh32CvXS0A=;
 b=YrvST2P144UFdNBXeXgAGFcXQJ2Ge8Wbe97fxHYr0k3Tl9gfe0wI1N7KjVCaqsB1Y5
 /plehqpkDgk1NwY7dy69fbq2cnzJehfODmWVNWw5SN/eT5qOlY3ZG0HbHa7cBv/IrsQi
 S7s/n/mlDYrfNrzuwASpUiflf6riTP9zB1i3o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1TXOSGDfi3tEDnn/11wFhZgunf2JzZ8G4zh32CvXS0A=;
 b=fuPsEZOUME0bTnC/KZR88WYiZNryRTyhEvO8MhypooJPhjqPLAIgLH3kMANJp4pqVS
 S7tdDjBkv9jSsA9LYFOOzPFw2/iwNOpb+KI50CAAai4MLFSeIbP1rz7KTdh/wzAp47y8
 NO0qagyLD7XIwXFSmmqCOjDXxNTls2VmFb01Q6AJnu6kUXbrY/zVhSdYyyMSJKYkM8Nn
 5KrJftT5kpXm+T0TdqTAlK1mSfAipFOcoGybJQ/BSF+T39xVczXEKGhwR095oIZDQJOI
 TLjmy1qDQSZEmCYXEyrIMhrfIfyrarubdGf/LHEKs+SjukRlh3n+D2whhNkVa4AUAiid
 2Wtg==
X-Gm-Message-State: AOAM532MDuSvlNbHOOHD1qOr2yI9wmwr/XzF7stMMJFRxZft9XSBw+yI
 g64LzyvvtjFizTthCIcZ35QUPg==
X-Google-Smtp-Source: ABdhPJyG38K0xlLp/r1NI72VdnrWA56c4qhc0dSdCtfKlcDwdSAqWfQxXw1cAlWaYmLD2dwu4H5jbw==
X-Received: by 2002:a17:90a:b287:: with SMTP id
 c7mr2905167pjr.141.1601368381673; 
 Tue, 29 Sep 2020 01:33:01 -0700 (PDT)
Received: from ub-XPS-13-9350.pdxnet.pdxeng.ch
 ([2405:201:c809:c7d5:b511:310d:8495:d767])
 by smtp.gmail.com with ESMTPSA id 36sm3961241pgl.72.2020.09.29.01.32.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Sep 2020 01:33:01 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 5/7] dt-bindings: arm: rockchip: Add Engicam PX30.Core
 C.TOUCH 2.0
Date: Tue, 29 Sep 2020 14:02:15 +0530
Message-Id: <20200929083217.25406-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200929083217.25406-1-jagan@amarulasolutions.com>
References: <20200929083217.25406-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200929_043304_848379_C7FE140E 
X-CRM114-Status: GOOD (  10.86  )
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

C.TOUCH 2.0 is a general purpose carrier board with capacitive
touch interface support.

PX30.Core needs to mount on top of this Carrier board for creating
complete PX30.Core C.TOUCH 2.0 board.

Add bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Acked-by: Rob Herring <robh@kernel.org>
---
Changes for v4:
- collect Rob Acked-by
Changes for v3:
- none
Changes for v2:
- new patch

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index bda0f2781890..3aecb1241492 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -70,6 +70,12 @@ properties:
           - const: elgin,rv1108-r1
           - const: rockchip,rv1108
 
+      - description: Engicam PX30.Core C.TOUCH 2.0
+        items:
+          - const: engicam,px30-core-ctouch2
+          - const: engicam,px30-px30-core
+          - const: rockchip,px30
+
       - description: Engicam PX30.Core EDIMM2.2 Starter Kit
         items:
           - const: engicam,px30-core-edimm2.2
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
