Return-Path: <SRS0=Dydn=CJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DCFAC433E6
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 08:30:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 399902073A
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 08:30:50 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="XSmcyt/l";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="J9HawXox"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 399902073A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2aDD5MUetdDH3PReKmWXX/ht31yCRAv85gzyCHOjNXU=; b=XSmcyt/lXfcDZztXa/X8Ex+Sp
	yzS4Yc/SZZzNaCJOygaUQ77XhkKqAx8csCZz900KVeEuCX9kKUFz/8cgVLyI5CPdyn2dwwGTAHbm8
	k/aCJbIX/DoTyPWq00kCW8CFYoTBuBv/vroJj66283D1HFpyTIffdff2VrTaUJa2PYMWBvBXMzvIJ
	WO9KdNVSm84zPmgvn8tNUSEF8yuWi9DYrWQRRVpVJItkQhSI3SygjtrqVYzwMnJmcuQ//mljvfLOw
	V0r36/hrOxiuUhXl+CLEC92g5WjtfN2KgCCgHzpcpAppbaXyPfnhktArCf/Tyfiz/RcVAEzncdQ+F
	M9H4yzAkg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kCfDB-0003tj-Tz; Mon, 31 Aug 2020 08:30:45 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kCfCJ-0003U7-FB
 for linux-rockchip@lists.infradead.org; Mon, 31 Aug 2020 08:29:53 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ls14so2590580pjb.3
 for <linux-rockchip@lists.infradead.org>; Mon, 31 Aug 2020 01:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rAU4sCBRiofk2aw8WsyY+3Dm8mUaxukahoabY1FXUkU=;
 b=J9HawXoxxn9OCxKX8bsB9crige77QAv8k+mM8WLEGaeMs4XYL/bHjHKOolmdD6hAQC
 61v3MOs/a+QWmV1ZtYyqq7q+g9pTYtQSRPeMuECiZI2PNSeMipmVW0BggF52XQlEiEGN
 4QFYenzLf0Hv3EYLQpBSepeyK95yJFk8Lr2CY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rAU4sCBRiofk2aw8WsyY+3Dm8mUaxukahoabY1FXUkU=;
 b=k/Gywh/m9X7NJVzOfcqwEVjkmXP3daHUs7Iuf6ON0R4BIxJ8Jhm5cVB2xqD2r89j8J
 dUoaROhjEQlA3O9tRRRUm5q8kdvf1eniyKxgTIoKyqPrreG/eiHF3pPKeuiQav2khHxm
 xYXIjxUlZZ2VHJoMTWDLLgkdFomyABw/Go7ipzxnN5H25M2DceVqistgAO+E0PYoMItF
 tlSdMi0fE6zipaYAZKmm+kS9LSCc9sweUNlazn8pw7Okp37DXJfWUrL8DVtaJccee+9g
 StiZNDoO3+jDvZjrwnsJfnExvI6JfoFwfodYZdN6f34h9wO6SCczzuz2326pGS/nAMUw
 /2fg==
X-Gm-Message-State: AOAM5308w0StnwmTSchEDbrIlJo/qQ3SiSPoJ2j8r1CfC2ndvKddLWWi
 I9JgK5xwHtWmGrZPhiRfsNZAxw==
X-Google-Smtp-Source: ABdhPJxcdDfE9FJkL63RLb+7aDS4OWHIoeiEl8ktA/Ng44mcZ2xq2v4/qJUxtePGOavfbfhYY1ETzg==
X-Received: by 2002:a17:90a:f187:: with SMTP id
 bv7mr348529pjb.63.1598862589733; 
 Mon, 31 Aug 2020 01:29:49 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:d50:45fe:aaf3:66ee])
 by smtp.gmail.com with ESMTPSA id
 b5sm6411335pgi.83.2020.08.31.01.29.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Aug 2020 01:29:49 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 5/7] dt-bindings: arm: rockchip: Add Engicam PX30.Core
 C.TOUCH 2.0
Date: Mon, 31 Aug 2020 13:59:15 +0530
Message-Id: <20200831082917.17117-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200831082917.17117-1-jagan@amarulasolutions.com>
References: <20200831082917.17117-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200831_042951_710618_8ADB10F1 
X-CRM114-Status: GOOD (  11.36  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
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
---
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
