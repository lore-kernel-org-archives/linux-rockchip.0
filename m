Return-Path: <SRS0=CWUy=HF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E093CC433E6
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Feb 2021 16:53:05 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 793AC64F7C
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Feb 2021 16:53:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 793AC64F7C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nFiu5OY6vpeDQJLHy6NpDzrjB+b7d2xM8CKL60gHUB8=; b=c30Hrk619EiOiCBYl5HRneLPyL
	4CayRVfgNfePIWyI3xT4ljWa1LoWGipof88jp1/5jNF6LRPnglcNGq5WF7W9YiiAvYGULcq+MuDvy
	UizUxVG6pQDvPgEJtfoFUsAi4CK2N9dwRR72lj3HqqJCGFcL5W7FipViwDI8wmz264v4DYT25rs+S
	O/bqKa36W3+s1iLuhVfRtj6CMo+Idv+K/d8fzjMdLyfnGIrjijo/1yrXe7vL1mVpAV3Y16SgFiwdg
	mYxEG6QtxuiAPNDxwsa7+o5gg0bBV8CiDAegaF4d1QYLdh5jD65foOKmw+WK2EJdB9Q0F+O/XgnA3
	vscQE9Sg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l7LOn-00040T-Oo; Wed, 03 Feb 2021 16:53:01 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l7LOY-0003tV-GG; Wed, 03 Feb 2021 16:52:48 +0000
Received: by mail-ej1-x633.google.com with SMTP id jj19so142869ejc.4;
 Wed, 03 Feb 2021 08:52:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=K7vOF3Qw7Vj9m/dEB9LeeFb8gLBtZdZfVq0Dk/c0mkE=;
 b=aUvjXF2gYkIX2+5I20r39jRJwSmcoONANqcrIKNeM5k49o849cAKWT7+oAL6QXgfzt
 FbEHsmXM4FEFSH6IeERpgrmHfxSDmAhQadwoY1iUxpGm4p0d4vTnYLfAhqQqHhDHP2aX
 oCNy1x2QwPJMCb4Oauxx7/opPymql5TI9wLJgpuGbZWDSN6zKGVZ44wufudsULEQyPiY
 z09Piu4uuZFUcbAz9UVe/ZlpL0GjJcU4dnGd2dddH18ri0OH5hEa6b0gL7s8liXO+ahi
 nuAkPrNZKD0FQl1TMelR9gOICPZC8z2u49CSlcOa9IgMqplaV/PJKYOXSw0piV6fy4S4
 EMog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=K7vOF3Qw7Vj9m/dEB9LeeFb8gLBtZdZfVq0Dk/c0mkE=;
 b=R7EX8eQhymC5zeZrb7VKrPFJ31Tej9zhxU2gIOJdZD2YyOrepLwalyQcC7yNpnbUl6
 uH6YVwOwdaUCzZ+m0E90BDTyCg1zwJbqTXp92tqposwA6nHVhSOOvnRcbU2XLRNeg8zH
 8Z0AMQJnbimyPKvnoGZ4IyMg3QpFBFkM7HUm7zHgKITtmvQKvWKvwBdH4Qzx7jRYDmx6
 l4Ngj0qStEBB+hgsBcTISGAn5qfNxdtLrXfCkqUL4L2N9fu0vSZAmYkZJzQdxs9rDVCK
 V1VKStbNfLrTy3NgU9zrmyzkb6y7pElpU33Zu8tCjNoFHDPQokChrUyeKNUBDRE7jVhg
 MXRw==
X-Gm-Message-State: AOAM530oQ3SN5Exgq1HSxAZDZD+LYN5kfGtGxfLbQG54Fbg8KomxtkRi
 6C0lNud+XYqIyTGnXBqfD18=
X-Google-Smtp-Source: ABdhPJwpI0VZokomRqJXYpQWN3fEr1sQhyr7+sO1T44orVCksMHTtsMSJVYnPKxAbQ9/UJVImnfgxQ==
X-Received: by 2002:a17:906:8410:: with SMTP id
 n16mr4182326ejx.551.1612371164918; 
 Wed, 03 Feb 2021 08:52:44 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id a25sm1135471eds.48.2021.02.03.08.52.44
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Feb 2021 08:52:44 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2 4/7] dt-bindings: usb: dwc3: add description for rk3328
Date: Wed,  3 Feb 2021 17:52:30 +0100
Message-Id: <20210203165233.22177-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210203165233.22177-1-jbx6244@gmail.com>
References: <20210203165233.22177-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210203_115246_562135_DA6BDF6E 
X-CRM114-Status: GOOD (  11.98  )
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
index fdf9497bc..621166a50 100644
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
@@ -53,6 +55,7 @@ properties:
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
