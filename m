Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A7D9C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 03:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1r7aZokqKyXJg7HC+eI9kHN7YlUIt7IdMlyqkBNR1vU=; b=niz1mzIVC4YQwl
	rfnec/3mgwd/ZtMouv8boZau2eaB5SVvhELGehSz/ueHU4v3YovOHb92c3+klJGaoqZOF7T4An/l3
	dUHXQnkvjG3zRQg7G7VCJ7hrDd/Y/JVul78JQR4Gg2ZbSGiESkXk43I3TxzGfnOTf5ZdRbCtLmBsr
	FyJk3NIR9mDfFkE4vJCedgcji9Hxw4pM/HofBF4g0Zy+CV4ohIgVJ6FdZHKhv8qTs88LUSmscNES1
	DLJ4boiBxlSDHfRmWveCeo4wZbSIjMl32qln5f9x0WqmmAsVqlqThkhAgc4kWgfSHTeRitoHK+gLz
	v03Qskx/EL8vHaiuo9WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwZnZ-0000000Ahbn-0A8A;
	Tue, 16 Apr 2024 03:47:57 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwZnR-0000000AhVw-370R;
	Tue, 16 Apr 2024 03:47:51 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-5d3912c9a83so2423564a12.3;
        Mon, 15 Apr 2024 20:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713239268; x=1713844068; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ST7IBP1G+OA+O25mvhaCDcJ5UjWGi92SIHIsGwEi/5k=;
        b=QcfjWDEjREj78lhE34jgclvfjrPnHjpof9uZTUO14FKNzf853uU1N4XrUlePT9YKeZ
         YPFqISVLFevavaIBBtZAXz0ea57RgP9LMvFGpvt9x5JtwOJWsCJ66uFdE8jmm8jxiLp7
         ndkyy7b/8ohg1AjHKrXpDWSM2d0dxJYS3L9zh5GFWhRTVVWl7MQUVjytYQ1y2TXLbGL8
         dch4H/Njkh9A4P/2qzaIRU1+FIfZE2J6hfIbRYGB1n5XSqnJ52Y09i+BZ7ZyFBCIbQu0
         LoASh7y45k4BtPVItxWNcJL12W2ndXlceBBIdzZaMHaNUl2b0fUj+4k4gREMoxAg/oFL
         rqGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713239268; x=1713844068;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ST7IBP1G+OA+O25mvhaCDcJ5UjWGi92SIHIsGwEi/5k=;
        b=YztnRqTYOeiRzIr8FquvjNiswbTWwakte/Tn9R7zbDfFtnhxEW2bTI4ETOa7316Z/T
         PuADA4awcwHjTgk152FfyqSrmobYvhf+ikCTF3gqvHOgGljvvN4G/l3iGrP2Ny5eJARn
         F3sbN4yzQWaaE2ELm5QkmdseSkvJMwpyswkp7N2Faq0i8Tz5mEs7JpEo4zZNKCi+BDnr
         1rWlxGVSkG0HTRLxUtUrFdnHb1PGWWsOHvELduNYdhOUz9AtWP2yjfW6oHfGJKs6/91L
         jR36oj9HPlkcrZNkOXeGcoA4nL8o7p3S/WPnvOod5BRaI4/4hLeaFWsEgUs9i4mIh529
         sKwA==
X-Forwarded-Encrypted: i=1; AJvYcCU12wxRiLTOW5nf6pLjA8TpQsXBpCL2KCLwmV1J6GZ3ncev9lNsSIIecLPGPl8IvzcuL3RLMu0NLfE5R4g1dOWObZ7xNVZeqcymqdmy23CM8IGFPHpQwTtU7L7yfOjG9e0e3J55XtNBxl62e3RG4uJ4wtr1fJAZ1vQ=
X-Gm-Message-State: AOJu0YyG5WhwOWuIaPCGMRTxkizy5le8FDps0uTGOXCFXQ9UoafHhZXi
	nO9FFYlfrM1LULghq1Ru6/OQqpo6n5YG8StCs+K9Y/R2ok2FPJ3tqGUzmnrmZ4o=
X-Google-Smtp-Source: AGHT+IGny5bC7Y3tJQxKz4CiTcluG91UQ9fL39+yhBEESmg70qqMHWQqyIoMaVHKhBiTyoXGquRchw==
X-Received: by 2002:a17:90b:4b4e:b0:29c:582d:bade with SMTP id mi14-20020a17090b4b4e00b0029c582dbademr9322115pjb.2.1713239268281;
        Mon, 15 Apr 2024 20:47:48 -0700 (PDT)
Received: from localhost.localdomain ([221.220.135.251])
        by smtp.gmail.com with ESMTPSA id u6-20020a17090adb4600b002a51dcecc49sm7748815pjx.38.2024.04.15.20.47.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Apr 2024 20:47:47 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	liujianfeng1994@gmail.com,
	sfr@canb.auug.org.au,
	weizhao.ouyang@arm.com,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v4 2/3] dt-bindings: arm: rockchip: Add ArmSoM Sige7
Date: Tue, 16 Apr 2024 11:46:25 +0800
Message-Id: <20240416034626.317823-3-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240416034626.317823-1-liujianfeng1994@gmail.com>
References: <20240416034626.317823-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_204750_452312_4B87F746 
X-CRM114-Status: UNSURE (   8.78  )
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

Add devicetree binding for ArmSoM Sige7 board

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 4bd033ade..fd644e32c 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -49,6 +49,11 @@ properties:
               - anbernic,rg-arc-s
           - const: rockchip,rk3566
 
+      - description: ArmSoM Sige7 board
+        items:
+          - const: armsom,sige7
+          - const: rockchip,rk3588
+
       - description: Asus Tinker board
         items:
           - const: asus,rk3288-tinker
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
