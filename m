Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B04A0C27C4F
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 13:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UjGXWzsgG3j2CFrkwO67dGUFmRfnMb8ACHy7FX6fufQ=; b=HULuE6xBOuGwtZ
	mEG2JqzJMBKGGH7rSjbN+m9yKj1fMDHZSHdjR/6DK7KxIlNHfYX+QbZWvkowdEpCMTo6UD4u3JzCE
	okPmu955YJmTgC9AFc74yTMTTPokWwhJmFhaSkiVjMdNFnuc6jsIE1KY0W7L2Edey4PbFvIJ3L9y2
	IHgt7JOeMapTWFf/xoRijTy5tT/zK/WnJShhj62DdDVmOw5tDt3Waa9iue5tMo6GW/Yzw3KhQIbkj
	EmV2NxIoDY8mypBJ8z7qFsSizKFrd4hyfGJ5/iWfMDBY8Pq+f3RCFYNkO9YVz6Kdvm+xrjueVOTxE
	cK33A3FwraVr+yndTOtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKeVQ-00000009Me4-0mWu;
	Fri, 21 Jun 2024 13:40:44 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKeVI-00000009MZe-11d5;
	Fri, 21 Jun 2024 13:40:38 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-57d2fc03740so705069a12.0;
        Fri, 21 Jun 2024 06:40:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718977234; x=1719582034; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=99hmU1TBHiI3BIDRHYs/T4GfZVTtEzomHKojpOx+X/A=;
        b=IjFzlmj6JAHnxcBx9DVhteVUlmjkTcpr47parAYhvIw4lpCwV1JY5J5KItcSq/EUe/
         GntFfm76Rxbi+sWQc599d6ZzOm73IMHHg/7vEwobsqvyshzRqUJWVScZXv8w/g2/epYu
         mzb52caDgmlyrbUhLoyf090JjiZStK2XMJB6X7A2Gd215JZQfrxoUXg218MSyN6zFCdI
         zrKfzyaOu2GOxAnkC7CSu4UKGxnYMuBAh18ycaH0m6LMNKaB6irl0O8ta/u/Bjfw0hiY
         8XtcyQUJdjgqf+qpIocKPAbzT4vB3zmLDMWabUdlpNFfj8pBd0EcSc7LUSZcAI8B3eCH
         l0vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718977234; x=1719582034;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=99hmU1TBHiI3BIDRHYs/T4GfZVTtEzomHKojpOx+X/A=;
        b=vQIgymZqxmx1SIRCVbwjZRXDZoiVm/aPMizBXLD7yTewhY7AMghtrjaR3T9sh1vvHu
         jnJVR2JBPAwYK8yJ1tNERBU9eRMrweqpeNdSq+jWfvz4j6KxmJB2dF8kYbI6DA2TPXzR
         XYFS00422WihV643eTEIHFElVZQPBH5V+ioczvCPAsOHfgg5+PxqCKNg7ESS2am9U2tY
         lWTO5hW5iBMEdI1QlaC1yhkAZ4z4lxllLhfGkdR0cZu02HF/UV1M5X33fQ2dQse9EMI7
         ssfEDjDUkOpunmbWf0ZbTrXMTugGDkLAUWAHkmOe25yzCQ9vR/Z0aGQMCoVkmJs7KcHa
         sbaw==
X-Forwarded-Encrypted: i=1; AJvYcCWFxgCPf0qqH02J59chXGalLOCNwFoZb4GhgbBmM+bDfss09noGU0Glmo1bUSpVZsWqaEy7qBrpUuJFYA8FFfVsFAEMuy26HQDJaWaMzeoAVtH6sfZQKCY8i4ml1IDWj2IOgDMJ6WD9Xwgbby9i0FMxXqC/kZHKdfU=
X-Gm-Message-State: AOJu0YybA5RWUGtFLeI2sQ45+DsKj7PCaq0aWeiWd2SIM057+N9l/Xhg
	uAM7sEapgibpslI8USd66SXr1wceq3LPHR1dUE/9Ygwn9e2UO2w=
X-Google-Smtp-Source: AGHT+IGfTBh9ByRy0rKyLhNz7zC2uRU9ragOUbs6RwOFonz8+hz7N60ZZROooF3sFovnZw72JqMlQw==
X-Received: by 2002:a50:8ac8:0:b0:57c:8bdc:fddf with SMTP id 4fb4d7f45d1cf-57d07e8337amr4899211a12.20.1718977234191;
        Fri, 21 Jun 2024 06:40:34 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:1b6a:5399:9a4f:7217])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57d30562cb6sm962059a12.83.2024.06.21.06.40.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 06:40:33 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 2/4] dt-bindings: arm: rockchip: Add Neardi LBA3368
Date: Fri, 21 Jun 2024 15:40:28 +0200
Message-ID: <20240621134030.243646-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240621134030.243646-1-knaerzche@gmail.com>
References: <20240621134030.243646-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_064036_329909_1713FD90 
X-CRM114-Status: UNSURE (   9.25  )
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

Add Neardi LBA3368, a RK3368 based industrial board.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index eca0a42eb384..d2e887415d5d 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -634,6 +634,11 @@ properties:
           - const: mqmaker,miqi
           - const: rockchip,rk3288
 
+      - description: Neardi LBA3368
+        items:
+          - const: neardi,lba3368
+          - const: rockchip,rk3368
+
       - description: Netxeon R89 board
         items:
           - const: netxeon,r89
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
