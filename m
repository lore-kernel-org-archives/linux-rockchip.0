Return-Path: <SRS0=S7g1=N4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA45C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Sep 2021 12:06:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6C0C060724
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Sep 2021 12:06:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6C0C060724
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6+/kPIfjIFCNA+OZGy9/Y8zl6OzHRt/8SNpOvmn6kgI=; b=RIfG1A88ml3C4h
	1esF5K3HmK+7NgSuXnidSMsX1l6Ivjj4KQ28iTJ+C/grkNG7vIB2Z0MAue4RSDWqbDpvU3alZwfIw
	u0CeWFTQr66CsBtqo8wA0tf/LZfLAeHZDSHt9fMm3+Pn3FJi74h2usVEIl9+VfS2b2bf56ersg5Bs
	YC7vH1UFxOFf+nto3ZqRNa040voQBmI1l0ty5Aa9/qKC53Q3KqGHXWwwc9K+HnBMi+6vgtTiPK+nL
	2R4kqSTRpeI1I81E+KmHQr38thhP4B9zGqx8vHK2Qk3n5p/4oyHMaIqAS7zkcUTxYxlZdeOMo10NG
	4XNzMo/XhlJ0GtyxUHtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNDNy-000iBg-D0; Mon, 06 Sep 2021 12:06:02 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNDNX-000hzr-Ql; Mon, 06 Sep 2021 12:05:38 +0000
Received: by mail-ed1-x52b.google.com with SMTP id j13so9196460edv.13;
 Mon, 06 Sep 2021 05:05:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=In9AqwxG6kQ9Z2Bk5c/A+CJjxcpZ+YKTzhcivosE+ZI=;
 b=iqO00bcQFNZF13Jj6amSx44PsCVInDTUO87KiRNOIINyFBpjPUn8qfHLCYihpbCjUL
 +vbGecOmdqECGj6DApBtUue8VWyBuR86X8HOW6CNaKgXVlnNtPRD3QVmE80rkukG2Z+A
 XESmlXdDSjXmbupmWU0X3gle/LLd+DhXOLNJ7/wpubYi2yI4zVQEdDOIt59TsSuQJkxW
 hUBysiQ30hWdwxCAQ4XNq5oEnQ2onL6EY6dbsUte14D8HD3eG9oQmult2ymNmu4jS89A
 ECGHW48jNYAdX5yRURa/K96AwqrMRz2EVJiHQhSu6Ag/anSOJhmcE6Mggm6wvDh/7orx
 KgJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=In9AqwxG6kQ9Z2Bk5c/A+CJjxcpZ+YKTzhcivosE+ZI=;
 b=fQz9XbU3aHJl4HfdJQwy8ZTZzdAw6tI7amFeCAMfh03om1x9fH92Pquv2q3jUyF1N4
 DhvcNQ9uaZigf6mdOSGc5a5XdVbAPZNa5NJpirHEQi0m2FNL1IgiY7THSemBJ/FTjBMW
 AXvzrk9gBNkmWWF7G6jT10co7S24ScygXNPAy5CAl8//GMi4mWfQLo6yBespT/hHajYk
 gd1MQKEN414pXt70ef/+Zq2YPrMaEVg6hGWuAAcWqf512jkG+/Y6Iy/LI1erS4nma7uX
 QLrmlqt+2MpQRPNZqSBaxnuy9gVMfkCDGgNy02wqpFQDTqVE0CEoqd7FGmMRiCKwhmwE
 pjAA==
X-Gm-Message-State: AOAM531RWHYVUFGbCnHmO8LJIyQWZYDWyduxjNHfGjDZkiX+qzFuzgOg
 RvXPgnn4rcKt9CDmEz23AL0=
X-Google-Smtp-Source: ABdhPJxOOCo2ca3Si5A7uvngo7vEXqfO8X5NR5B7TPIdx8OOX7kX/c866e8Lfd4yYReXDI6gp0LmCQ==
X-Received: by 2002:a05:6402:1057:: with SMTP id
 e23mr13285183edu.352.1630929933230; 
 Mon, 06 Sep 2021 05:05:33 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id b8sm4536954edv.96.2021.09.06.05.05.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Sep 2021 05:05:32 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amitk@kernel.org, p.zabel@pengutronix.de, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH 1/4] dt-bindings: thermal: allow more resets for tsadc
 node in rockchip-thermal.yaml
Date: Mon,  6 Sep 2021 14:04:01 +0200
Message-Id: <20210906120404.10005-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210906_050535_919473_DE09CB53 
X-CRM114-Status: GOOD (  10.40  )
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

The tsadc node in rk356x.dtsi has more resets defined then currently
allowed by rockchip-thermal.yaml, so fix that in the documentation.
The driver now uses the devm_reset_control_array_get() function,
so reset-names is no longer required, but keep it for legacy reasons.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../devicetree/bindings/thermal/rockchip-thermal.yaml     | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
index b96ea277b..ee104e451 100644
--- a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
@@ -37,11 +37,16 @@ properties:
       - const: apb_pclk
 
   resets:
-    maxItems: 1
+    minItems: 1
+    maxItems: 3
 
   reset-names:
+    deprecated: true
+    minItems: 1
     items:
       - const: tsadc-apb
+      - const: tsadc
+      - const: tsadc-phy
 
   "#thermal-sensor-cells":
     const: 1
@@ -71,7 +76,6 @@ required:
   - clocks
   - clock-names
   - resets
-  - reset-names
   - "#thermal-sensor-cells"
 
 additionalProperties: false
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
