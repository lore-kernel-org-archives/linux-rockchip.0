Return-Path: <SRS0=290H=HD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75DC7C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Feb 2021 19:16:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 23E5460234
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Feb 2021 19:16:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 23E5460234
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=phZcrPbVpRDiwc2tfFrZH1Sxwkq2qVS5YcBi7j9NLdw=; b=ewY/k0s+mmDZX+YZv6e3tum/Yv
	CaVgDfLTww7LctPXButBxd37/WpIi/ZQhZU5ny2F7l2cgyGYpUsO7aysCZx6hOpDkeoWSDinbb9wF
	96XKRS1EnrxJFBhwJj4PIX9LIs/G00W5ws0shcvsdd00ZNLqGNICIwMD/MdVRnqDkmEwzzwVmIaxG
	zWEAB03EyaGA9CRiCWyKlqDejcoBDFXpK+/lGRD7978Tjnzxgp4BwjPgj0JLs21y1lcgvBb9ACsVM
	uIDTA8i/zOIJq6/DSmiSSnaHTdjqEnUK6H4HgjJf5k91TLsNkrJR8Ezv1odPQVqoIpBGXFQDAK59+
	SCUp16eQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l6egb-0006lZ-4l; Mon, 01 Feb 2021 19:16:33 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6egY-0006k2-DO; Mon, 01 Feb 2021 19:16:31 +0000
Received: by mail-ed1-x535.google.com with SMTP id n6so20156974edt.10;
 Mon, 01 Feb 2021 11:16:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VqBtzEvAwNKiwVYCrfCe2jfiFhnACOLKHc4Xbe7Gosc=;
 b=bu0rVoGPSwSKExLTfSmlVAFVBon/9mJZ7UwTGVjSDFyIZC1Q9sOh1PCOruOo5BG/y6
 i157uaUV5mLEx1wN/ruIZrAF+wVDGQ6gr/+MlZXKzPyuMklxMGiO0hKJWI36QLwjI7sM
 VLSl7AIqtQDETSW63vbUKPHvbODxhj+d0wBu3NSmMpRi5p4DBxiJHLjdktWAtz4X6nKA
 JmjSEP085O/JfsV7OE1CSo7IwVHXv9Vi8JiDvinw9pfzJcETiKv9U8UIyT7rTgVBVkzQ
 oEUEReoUzz8zbAC9I+C6sb/f3YxBvdzgOm0SYZgnNb1cNauDaMRbEXZIuPKJ2WKk3uzo
 0iTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VqBtzEvAwNKiwVYCrfCe2jfiFhnACOLKHc4Xbe7Gosc=;
 b=jMYYjr6W3h6MEYFngZTDRZdTG373NHJU+XbnPDhSzLTP3l6SOxrI61E5RRkUcGi8ia
 VypUCDiORJKsdXeOc5qtgCGzCektrWL5Wc/pIDyigldD4x6Wb/yBAmx9WMNSPoNp1MsR
 VtIwNrCyTmHsRceTCOW3SVIaE8nUD5JGb0VySVSjIKEAyoRXOr6Q1bIMslzE6d4wQ92O
 3FOvWNQ3B+MqUDvyTzXFqz2iJAJ+vRnaelb+BmJXs8bhxcP67nqLxaoDkIp3KEbMbBrD
 sk/ceghWE/f3t3yrYlSGI9nZ2KOa7EA7BdMFk2D/nKHs4PPPf/2j5HpxAKGXR+An3yfK
 rRMA==
X-Gm-Message-State: AOAM533zWKQOY8WNG6AxwXjBJwrpGsrlcrQznLPItCbnxmloKx/vHL81
 VNSoWhT8//YdoGKJQMsg85E=
X-Google-Smtp-Source: ABdhPJxbs+Ym2jropyx6K/9LFLbzxazDYZZ9G9xEJkeCoz0DjuuSKuYOZUBM+SWujJoSxaiN8wV8hw==
X-Received: by 2002:a50:e80d:: with SMTP id e13mr6226103edn.251.1612206987670; 
 Mon, 01 Feb 2021 11:16:27 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id a11sm8243630ejc.64.2021.02.01.11.16.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Feb 2021 11:16:27 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 2/5] dt-bindings: usb: dwc3: add description for rk3328
Date: Mon,  1 Feb 2021 20:16:16 +0100
Message-Id: <20210201191619.32353-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210201191619.32353-1-jbx6244@gmail.com>
References: <20210201191619.32353-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210201_141630_514794_C72B6AD0 
X-CRM114-Status: GOOD (  11.97  )
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
Cc: balbi@kernel.org, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
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
index 681086fa6..f4de1b2ee 100644
--- a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
@@ -12,9 +12,11 @@ maintainers:
 properties:
   compatible:
     enum:
+      - rockchip,rk3328-dwc3
       - rockchip,rk3399-dwc3
 
   clocks:
+    minItems: 3
     items:
       - description:
           Controller reference clock, must to be 24 MHz
@@ -31,6 +33,7 @@ properties:
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
