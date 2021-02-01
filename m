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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 195E5C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Feb 2021 19:41:29 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B4C9364DBA
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Feb 2021 19:41:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B4C9364DBA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=phZcrPbVpRDiwc2tfFrZH1Sxwkq2qVS5YcBi7j9NLdw=; b=sd7qTfU0+wRrDJZRXqRFCcdYaH
	0mbp7mqGY4t7LM5PS1nRayS9X9Li7RaugQzNXrIE0iKlUmYWnXxXP/5DEVQ/bqzobRi1ZTmg0A+NJ
	e0X1c2JXPnsLHdDKvEtPZ+xbshC+RNdgRNBMUmX+vZpeG683/aIIysMIBAsubn3hx2Zp01J8ZYZV+
	V75RylMO/Dp+7a6yUoKDJA8wzVTsE29r+5vva8WQLBiHwXKexT5ugYQnOGy9U7Qe5ZJOjrS98rIwv
	qR6ampyXFBWlEdgWLv0qTx2jsySSsdL7uvPitGDk70S6w+/h9HshshQt1bh/Zwh2qzLrIm5tpGfQO
	+iy8FSXg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l6f4e-0000ia-3G; Mon, 01 Feb 2021 19:41:24 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6f4Z-0000gG-An; Mon, 01 Feb 2021 19:41:20 +0000
Received: by mail-ed1-x536.google.com with SMTP id y8so5137467ede.6;
 Mon, 01 Feb 2021 11:41:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VqBtzEvAwNKiwVYCrfCe2jfiFhnACOLKHc4Xbe7Gosc=;
 b=GdxxfM5G06yroEWjLqtPD4kPmnDUkQ3xWGnxslPz0GFCgNmobccwnyM02eyfY95jFa
 2TwDRK43sMe9pkNWJDBE5ShS0RqKz4zg5Ye7mCXQtyxmkowfyBe5nOTR33icBwDerEoV
 vSoxMXV3eKOcJbtJIyIMCG+sr3tlIO4SECl/fdby6NW4oYFLJ57oYCTTwkEgdV7gWFsX
 l/K5ISUWrlo2oWyg1lB1+XEWi4Ch+EfB62y5GVAD0iwUJ/MqVtg5GahiWkeuMvB5FBip
 aW0fgTYgqp+poC/QEZfDmWb/GyOh5TNvomoZiO3HUAIFVPZknPHLQ8qT5sy2xJX8x7UN
 ng4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VqBtzEvAwNKiwVYCrfCe2jfiFhnACOLKHc4Xbe7Gosc=;
 b=DMdnqP9CBF5JLCoouqr3DPF6oraIYMdw71MhK62EjKrxtj6OzkRfLZOuL0dqAZEwWC
 S3IL1dyY1PYRbgQA5Rid1MbX4cjwT7EQzi5LTC3913dPmHJeT4T4uEOv5IQq/m6OCUi9
 TC/ylaTG7wTuDmDasl5VZDT9h3vJawDBETuXr7PxvT152ODukddms5Jb1qoieOFPCbv+
 Tc069IPns2GKdgURm3KqlqmaF7w7GT2MtRFJrQ6B7m1VOWUANPYreX0H8JzqESRAg2JS
 D4VQUgMU7JRuFnq1Mteih86FiKeCq9E0hQY2nWCPcT6jagTCnRYPXMs0J8A0NRrqUInW
 00/w==
X-Gm-Message-State: AOAM531WEp8Bz6DwIl/H/OoIMqmSLsDe/1hIR5bHoOFIioaJZhi+m5/s
 8CmJb9nl1jWmgA29NTDj0h0=
X-Google-Smtp-Source: ABdhPJxPoBbnKGy9ZsZFVlQb7gmSL256Hs0FuaKI09XIprF+AOL90+g2tF8xnMRdc2ztysdU8IaQYQ==
X-Received: by 2002:aa7:d58b:: with SMTP id r11mr2741013edq.241.1612208478309; 
 Mon, 01 Feb 2021 11:41:18 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id du6sm6702799ejc.78.2021.02.01.11.41.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Feb 2021 11:41:17 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 2/5] dt-bindings: usb: dwc3: add description for rk3328
Date: Mon,  1 Feb 2021 20:41:02 +0100
Message-Id: <20210201194105.32673-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210201194105.32673-1-jbx6244@gmail.com>
References: <20210201194105.32673-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210201_144119_433374_B3D1EE20 
X-CRM114-Status: GOOD (  12.17  )
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
