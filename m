Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EA76CCF9E5
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Oct 2025 06:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2OAolUk8gHWTGugLd9qNJjX6Ny9PBygMbU17+qI6X18=; b=qYPjUkHGaF4DJh
	QRAItTxc4d8UA1V1aMLBD8sfSbdcna26I6nXaRhpL75wlad6T3W2uPAiiWlXlJsP++cI5jYQwPKnM
	nqdA0+pNiA2FBKxuiwdBy/j7IhibwX8EbFuAFc79E3Oa4nUbh+l9rxYvZICBXo56SlpwKLnBMU0P0
	Cm2DpKCWCy3WweYqGJBd3A5fKW/OgbzUGYWaRuKIKik/RAWtyEOCwrW5Ts+FCkTGz/1IDWByrFgRZ
	hZ4M5wMvK3A42JqGmlu/TNZgOY9pAoXc1WqI7jPB1WgbDzFf63CNJeviBVKpD+Zi6o4FZXv5oyUKN
	QTlOwVkOJxVDwT4vC/vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCuHI-0000000C5M8-2rwg;
	Sun, 26 Oct 2025 06:30:56 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCuHE-0000000C5L4-193n
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Oct 2025 06:30:53 +0000
Received: by mail-pg1-x541.google.com with SMTP id 41be03b00d2f7-b6ce806af3eso3210758a12.0
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Oct 2025 23:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761460251; x=1762065051; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5ZBj0vgRHJC6aX96xN8RIRtjeiDt3AOgOJls8yqVpTU=;
        b=M2cMKpxxVQeJYa964VruQh1URU2X9gB8OqnA4jOxBB0XdV52kEG1TgVgYLeEjxpxN6
         938mRFKkxuZdcx+7Wbpbb8/hLrVkeaiTcVO9ek3USYxa0s/4NuRlmQD03KSLQ1ul1D3/
         fvsuji3O7ZArIx2sUBIOLUBe828O+Jt0wnR86NcswUm997YbUsE1Pp1Su7oC7vgQNFrn
         2uFx9BDZXx3YgMfxXGApeYoXrkuftmT1TesVr71/gh5LzdUw1KCBvQ/0MpLkFC0Ub5mm
         SyuvaPRMn/SRh4bZQ4lg+Cn1Z17NUIRVjkWE4S5WVfFdF4eauHxxDp3mOjbNHch4GIIL
         c7QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761460251; x=1762065051;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5ZBj0vgRHJC6aX96xN8RIRtjeiDt3AOgOJls8yqVpTU=;
        b=ZJkn0/xYFGMeoafxM8VbL5TWl4DtFb+a1p7cd16lA1h3TX9zZLbmsZ1MCNb6t0bZ2Q
         m4CamEmq8UwQlifKp8rJ52tPaUcG8NVK5P/yEHUhHL2RCk8bQJvnQpR2RH3a+RcC6HAY
         cBJN7CH6KmkYQAbSGHF5weK2Sm1BAMlNqp5xrkYZoV2yRK5FSaGkfFQm15KRk9hGuiWa
         f1EFpK10/cw8wbbKf0HnvMde9xeFfCjLglX9K1ZY/7uehQzgGovXTFGobaczjUbc0gcq
         LDKXXkV8aHtJXEpB5WYiDY1RQsA/I9XSKLckJV/7OWmFdAdt/gIWtK1wJLSFA38ouB0P
         aCKg==
X-Forwarded-Encrypted: i=1; AJvYcCWy0mVG6xJg9hun+Mf4VeCTbkbfeFyNlRtO9Y9QHAfl7z0sDQWkltp6kLt+TBhVeRHaBJBkp7hVfPFKfcMD1w==@lists.infradead.org
X-Gm-Message-State: AOJu0YxCe3hrdVo99tOG6IU8AK4yxeKkydFCiix4R0GLVRCSJgq0tXuq
	dXtU1BrKVfGYjwV3XBrU/iqkIw6v0ZFjHMShuJDYRxBMJuXrQS7yNn7x
X-Gm-Gg: ASbGncuRaQaLcPlHzLMYhqYS5IwPKZ7wUJ/qqGoQfZ4tVppqGt1yTP8KYJdP0nX+NGA
	26cjQ3y7fKU+zKwDf34M4eK/S9G9nPEkreLFXYeLtkZJDbXVSDOjVGj6vgiE1LvN3uiPr8XLlbA
	XKL0irW3w6DWpIQBJg9OSjYF7ZlMh2qfCzKTOxgM3pXFARou034hNmsl4cjFTob2YnHJoZZAUNW
	nd9OkRDarvpfllAnbYycgoZP+pERdpUWvByH1ZEvDGyksgA9ejHF5eubBz13hm1VdMc8yq30LYB
	izQ1ICWq9HuJiqYILY8AeOg9OaqccZcENwvITciMD16qN6y7PTneqes78R2dbL3TsrapkJCEdDE
	2hdAM7O0ES6imSkC8ssfNy9JFaGU8PAtPgsUXw5LVPbyIARUiyhRNktQ5h1y+sZC+PF8g/dqmw6
	FE9s2ThMMipQ==
X-Google-Smtp-Source: AGHT+IE1eXwoc08oMm0xal+/gwZlEgSxffRo65GMqV2tDlYe8mdGyu57eUdYIjlh9cI3ppLNUpa66g==
X-Received: by 2002:a17:903:388d:b0:267:e097:7a9c with SMTP id d9443c01a7336-2948ba7a6bcmr78804325ad.53.1761460251468;
        Sat, 25 Oct 2025 23:30:51 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d0a60fsm41583865ad.39.2025.10.25.23.30.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Oct 2025 23:30:51 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>,
	stable@vger.kernel.org
Subject: [PATCH v2 2/3] dt-bindings: arm: rockchip: Add NineTripod X3568 series
Date: Sun, 26 Oct 2025 14:28:33 +0800
Message-ID: <20251026062831.4045083-5-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251026062831.4045083-3-coiaprant@gmail.com>
References: <20251026062831.4045083-3-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251025_233052_316542_386BB268 
X-CRM114-Status: UNSURE (   7.95  )
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

This documents NineTripod X3568 v4 which is a SBC based on RK3568 SoC.

Link: http://www.9tripod.com/showpro.php?id=117
Link: https://appletsapi.52solution.com/media/X3568V4%E5%BC%80%E5%8F%91%E6%9D%BF%E7%A1%AC%E4%BB%B6%E6%89%8B%E5%86%8C.pdf

Signed-off-by: Coia Prant <coiaprant@gmail.com>
Cc: stable@vger.kernel.org
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 6aceaa8ac..417100209 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -777,6 +777,12 @@ properties:
           - const: netxeon,r89
           - const: rockchip,rk3288
 
+      - description: NineTripod X3568 series board
+        items:
+          - enum:
+              - ninetripod,x3568-v4
+          - const: rockchip,rk3568
+
       - description: OPEN AI LAB EAIDK-610
         items:
           - const: openailab,eaidk-610
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
