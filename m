Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DDE1C43211
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jun 2026 09:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YIwY7G/4HTj1HuDGfQf8Q4YWy3JqhEX+a5JdLmcQAno=; b=s2QPP5q2OlMo9I
	cRVv+VUkNEO7Z5leuWARu1RsZOqvEAzgH0rKs7VriYqABtcawLCouTDJSnKLpqD8X49qiEgDu4UDs
	rZHIG2UmBqyzNi+O7DJK/WxS5/UcWEMN42TFk/6RWCyzYf/aO8lOwOTxmdVbde8F4lfjJjEqHB3v1
	SlWmlY+kohZoYeT+qfbvOI5Pdxh/F0t+a+UM/5/g9cC8hKahbGTdVWTJ/RRTyrSu0OrDznJa13rje
	/XG1B5zF7Jq8WSG1/UYEXoA1TlGndPw/T67UnhSOsH9sbc1nQMN7djylgyIh77Wce6X4pb/IDd5PJ
	g/2GJ1J7IFjTlinMJZoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdPf4-0000000CLUf-0HUF;
	Sat, 27 Jun 2026 09:49:18 +0000
Received: from mail-dy1-x1334.google.com ([2607:f8b0:4864:20::1334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdPf1-0000000CLT1-2wNb
	for linux-rockchip@lists.infradead.org;
	Sat, 27 Jun 2026 09:49:17 +0000
Received: by mail-dy1-x1334.google.com with SMTP id 5a478bee46e88-30bf8b2bd20so3855542eec.0
        for <linux-rockchip@lists.infradead.org>; Sat, 27 Jun 2026 02:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782553755; x=1783158555; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YtSd3Xc+ifVj14PL2Jkw0taP79/hnT+MmHpMwaXVGFE=;
        b=ArZjdB6rUWzzc4wU0KsLQ5EWWFuGBm78CQQK30eVZV3BhCketz48Ygt3n4qCIgj2YW
         6lIYuANHYpxPL9EhhbDEh89vmQuTWDPkleSiNRs50DvWZj4rM+9Y2kiZY2CpzIQQbctM
         dx7x1hHASCQxsfurdxGcMKZFYsE6I9Upjm6fcZy7PPNuk0yUyTL4ht4RX2yIhzZwnHRu
         y96my9C4lOCEJMShhZfDrqBJSxldaj6wyeuUWDEaS17B0fwf+DyDtphKFxvZvg0w3ooL
         9irCtG54ZQGI65fwf3GVsZyjlD7SEtQIT44C1+FTozDwL4Lq4OuLd4g7V/ma7ec0ksEV
         jmEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782553755; x=1783158555;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YtSd3Xc+ifVj14PL2Jkw0taP79/hnT+MmHpMwaXVGFE=;
        b=KVGWGzzbYNHzg+F/oxEzhsXdC7MQv+yPrkL7uCd1HL9jvnenBTY20yPjRduPxof0Hz
         sT/PUHHTA2MoNRlr9+5hN8ahi3h4CbtGtWjQfG+xNQLpKb3RQ93u2iJ1ESAGSbcaFO0E
         QGNut04fQ4PpCKvkbQW5yp/q3J8OsqM7VO/Bg0ZQO3sBNL1LcGJf5R3w69OPnmi9M59t
         P439C3Xott2D8N0eofYWBDVvM9K5ms2jzShxt+I1By3W9tBBdmxajIqcWjJXUt81iZhH
         IWSS5PSsYyPdJbDGzx/ao8sEzn5bXQCRBZLc8s6yMkod5Ca3tsqfBvFC33I5KOw7yGYm
         tsug==
X-Gm-Message-State: AOJu0Yw6wklguEjC/c4X98oM37v4nZedY1UX/MKAuAW7z9DVSYv44PYv
	MGU0feImRvsAcBm2EK8ywRM2SFm6twzI7mp/PyBmw7uVe8IpZv6SyoKo/XUabW43
X-Gm-Gg: AfdE7cnwuE/dnNuVZgGBJiRc6Zh+2HkuGTBmkhj8pBdqHuXB3C5N5A8ByiN+8NG4xm3
	/3WPPcEU134dAaxcvj7cPLhS+FJn9cB5yzz9EBasVoXU+kvJxmgWB7yjUrkUApw6qovmNz7aGsv
	o+aYfxOfwtqTPFKxkKRQMV8RANtpbNRKkBcNiOeCKMuldBgrfpQGLSApqewUzi/gW+4pl/8Vbz2
	rMs+TVPEfAlYipha47mxB6y8aG1dW3WpPsW4B7+1dIUEnqgdHNB2dFgN3ZznzLGEHxRanYOmung
	cRTADsKI+XXgmMHn1ViTEcGbEdsKYXxaLNfPnxp2GP7BmslQjVjqCf3zRVoz6yUUpGTCeTKsgXz
	eHaHt/idurjG7QrOwZ3Tru747UBsWrrIA/0r9cJsuHGALvm9Zo+s+led74jYNY6SibV3hiacjYz
	Mlfj3UxrA0S6mqo9UyawA=
X-Received: by 2002:a05:7300:818a:b0:30c:7ccb:189e with SMTP id 5a478bee46e88-30caae2d7d4mr3651598eec.6.1782553754624;
        Sat, 27 Jun 2026 02:49:14 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30c7ca8b918sm28854789eec.28.2026.06.27.02.49.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jun 2026 02:49:14 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Vicharak Vaaman2
Date: Sat, 27 Jun 2026 15:18:53 +0530
Message-ID: <20260627094854.81564-2-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260627094854.81564-1-hrushirajg23@gmail.com>
References: <20260627094854.81564-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_024915_735759_B28B9966 
X-CRM114-Status: UNSURE (   8.47  )
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

Add device tree binding documentation for the Vicharak Vaaman2,
a single-board computer based on the Rockchip RK3588 SoC.

Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index b023d4cc9842..b5a43fd5e546 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1311,6 +1311,11 @@ properties:
           - const: vicharak,axon
           - const: rockchip,rk3588
 
+      - description: Vicharak Vaaman2
+        items:
+          - const: vicharak,vaaman2
+          - const: rockchip,rk3588
+
       - description: WolfVision PF5 mainboard
         items:
           - const: wolfvision,rk3568-pf5
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
