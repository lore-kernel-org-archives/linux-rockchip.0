Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9371C5320E
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Aug 2024 17:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=szaUhpXFi/5s+WU9GKgQyF3nsPRMqEkEK46JAzYk3CM=; b=p041jXIyUdPhr8
	QsUn2l63a4lZXD1GFQlJTdquAsSQy7Jgjc9Cn+Ee7rNm0+waesHJZasYKyoaiMW2YkaR0FBVyMpqM
	ptonFE1O/i0HIrrCUYs/J6jW2hsh/w1jz44w+FPUdHZKuk5x2j1zRH1hezl7uk9+TvKcKT0CtH6iz
	aDUBU/xYOYfnrxWu0yxyjwxx6zNCefxlMV5ve+9SvTtWrwzgwPuNBCBlzjK9BSH880JdaLmbSrRtI
	bqZYhxiNathrX6EzRypEHEjUBD6k/SbKNlhbl71ZG5AjC3N/HqKb7SK2OjflKlTPZtWuY8AvUuo2B
	IiQOLoXGDdBFbNfgYflQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfjpg-0000000Gupw-3n9j;
	Sun, 18 Aug 2024 17:36:48 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfjjS-0000000Gt9x-0kxl
	for linux-rockchip@lists.infradead.org;
	Sun, 18 Aug 2024 17:30:23 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-42819654737so26951125e9.1
        for <linux-rockchip@lists.infradead.org>; Sun, 18 Aug 2024 10:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724002221; x=1724607021; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aiRlsM6vBlOVTpadv+7qxVZ/+NvHjXgHFTSiZbF3Lk0=;
        b=UFKvfSSuT5Gha1ocYCVNLhwvXbiL0J8K+uFuXc2r5IZl7Sh4m9SV7l7WSn6Z/q8mF7
         aSgtDm9fLYXyqR4EncpI1xP9LXP+c4IyFVwoy5nHC3KB4qyz5hRRUjn5LbiqkWQCiSSw
         IQagPy9wR26YqDmSQ4pWrSKWwh4v1WDI35izNHMe1dS7ONJMSvqm8YDGw9l9C3QlhDWG
         JAdh0TlbUw++ocjvDQ0qJiTH7htjwJE4jaiD1mM488qFspFm4fojUQ+m8lU1T/URRk88
         SHIHkcb3c9v41YTFONib3WH0naloQ05+cFBdU10LmKeXdFUIrT6pkTqrI7U9upR/kKEB
         MpAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724002221; x=1724607021;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aiRlsM6vBlOVTpadv+7qxVZ/+NvHjXgHFTSiZbF3Lk0=;
        b=FC9LoeCtnIiewyYLzYTNZUaBu1u8Jlxf5D5h4hI6IrP66fuOdL172/hkOpUFdJEyoT
         cEJmRTC5B3CCHtaW/agex+1+JTxRCgf+lqpL7XbW3wcXFG/ILD6PJwNUYEuOQtva+VoY
         d1s7Aqu2xQE0kkZyZtpD3UEN97yPQeFqrdJO7tl88hh+W31FF18y7LKnfxLkv0q3Fcfl
         hayKk/mNIR3qArcYSSU40q93ZMhF0nmGx0d7izQMJ50G0HwoyouF7WY81W1hm/3usSm0
         S29pNg63sQh3KruSLY+s+NgVJlvK7390/bBJ5E0F9x6jkC8Q0aoZvKvSk7PqH3UzN+sD
         THGQ==
X-Forwarded-Encrypted: i=1; AJvYcCXqiCbgCIwFywrWr5sNQNg8rfuYbFw3VbARrjIMppFTtJ1+kOsdlAUj4zKYx/S72Hdx97ZBQNFnEY+e3CgFF7yssCpcNiJ5MWITaO7iUnsuYDGi
X-Gm-Message-State: AOJu0YyqKsNF1ahaxPNvRyYn1wt6e6cvk7f7y5f1UTrvNJ0a6J0E1JBD
	FYO6EppvbXAhTMW18SBJmwGYqI2OZuIpH0vWHNYU8c+tiVgckIxfW40X0Z5o1bs=
X-Google-Smtp-Source: AGHT+IHlDcGvSSlmSoCOZtAKT2zYd9WHqBA3yrLaM9pCakhIJQ/7iIvhr20DdpvwtiU7bWUoZXaPcA==
X-Received: by 2002:a05:600c:1910:b0:426:6876:83bb with SMTP id 5b1f17b1804b1-429ed7b8ab6mr53592135e9.17.1724002220484;
        Sun, 18 Aug 2024 10:30:20 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ded7d5a9sm134999915e9.43.2024.08.18.10.30.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2024 10:30:20 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Serge Semin <fancer.lancer@gmail.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Richard Fitzgerald <rf@opensource.cirrus.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Magnus Damm <magnus.damm@gmail.com>,
	patches@opensource.cirrus.com,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Gabriel Fernandez <gabriel.fernandez@foss.st.com>,
	linux-mips@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/5] dt-bindings: clock: cirrus,lochnagar: add top-level constraints
Date: Sun, 18 Aug 2024 19:30:11 +0200
Message-ID: <20240818173014.122073-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org>
References: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240818_103022_247950_C8DE7EB5 
X-CRM114-Status: UNSURE (   9.27  )
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

Properties with variable number of items per each device are expected to
have widest constraints in top-level "properties:" block and further
customized (narrowed) in "if:then:".  Add missing top-level constraints
for clocks.  Drop also redundant assigned-clocks properties, because
core dtschema allows them if clocks are provided.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/clock/cirrus,lochnagar.yaml         | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/cirrus,lochnagar.yaml b/Documentation/devicetree/bindings/clock/cirrus,lochnagar.yaml
index 59de125647ec..ccff74eda9fb 100644
--- a/Documentation/devicetree/bindings/clock/cirrus,lochnagar.yaml
+++ b/Documentation/devicetree/bindings/clock/cirrus,lochnagar.yaml
@@ -67,9 +67,9 @@ properties:
     minItems: 1
     maxItems: 19
 
-  clocks: true
-  assigned-clocks: true
-  assigned-clock-parents: true
+  clocks:
+    minItems: 1
+    maxItems: 19
 
 additionalProperties: false
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
