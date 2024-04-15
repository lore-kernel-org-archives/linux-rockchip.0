Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75F38C4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Apr 2024 17:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1r7aZokqKyXJg7HC+eI9kHN7YlUIt7IdMlyqkBNR1vU=; b=ann1vCDbC+cspP
	73viHz8TF6vQfFfZJ1fjQuvm7HdKTCZHenENkBGsSAe+8hga4cECcdsNYCndOVHTM/hHeRRdHzPHS
	dnskizZcA07UBUhSTie6h6gjT6yeh+dWRywcyZ5heRkihkjQGBTm1v905Oj0ZHYAU3BGcG/nXywvc
	xmUTDg7Cl6G5q+9KtyVU0h8DKbgzquBz/RDtZ2KUTefkka9HpLPP6ouVJKYYiH/2udU56UpQDveru
	KOpAAKqRt/yZhnzNg6S5+IvgDYtkcS21/tYZIVI29oVGkQFoz5URfobgGUuIVpjF/obt1dBOlXbm6
	6MyzrrBfYx9PukG1pzlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwPpH-00000009Gd8-38DE;
	Mon, 15 Apr 2024 17:09:03 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwPoM-00000009G7m-1sWf;
	Mon, 15 Apr 2024 17:08:13 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1e2bbc2048eso27819575ad.3;
        Mon, 15 Apr 2024 10:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713200885; x=1713805685; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ST7IBP1G+OA+O25mvhaCDcJ5UjWGi92SIHIsGwEi/5k=;
        b=Sh8Qac9fUdrjHE0OskZqFoFOAfxZbHrmCFdV3zWald9+dVzQcUowJ6THFdM/+/1rvk
         F17/6E9iKH4gqs0Y0wkH5wiH2Xa6IhDUsSnDW4P3nbrxIwvK16jvAq82WxPBx6kTCCqh
         t+Ad5p8jNXFyoUqsgCB94+n7SwSmGcjbkdPWt0o7SpHTIKEqCRcg/hHkEczdtKlF0zje
         AA63uDmE3VcU4PsA6DE+xyo84bH5C7FVMn2x92OmNn6lhgd8Vd2Ybcb9EVJ8mBXmWavw
         3EbQFevEPU11It0sw7juUlew/5rDEZ1jyjugjfFtIOLll4N5mnQG/yvh67SoAtTC7ssQ
         HRrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713200885; x=1713805685;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ST7IBP1G+OA+O25mvhaCDcJ5UjWGi92SIHIsGwEi/5k=;
        b=S2PkXRIhn1xxGxcD/k08Us+ZSXLK52Rbpm69LJyAe1RH7i1J/ecGjAnxBaHT/KKQBX
         pUOfAnwl9qiSshkxIS8c/RK9Z/QtH+DjAKj5/QN9I2cL1XMgToE6+y27cnNwPlq91Tbu
         ZyZCby25nUAXSGFevwbaJ5El8T7qhIEpIzd6eK/1d1a/L+SWB4uJ4oYJepJ3yOsL0+FQ
         DmtbDTUCwYFvqoM7sm8aNybEIEXI07gJo4iP4GZFrUmPiFL3s2OOG1YMhk55oij58+++
         BSHt+SZVLuxAlPOQK9JjVLoiKwxxbOTD5Ycg8rNpERkla6JcQ2IUbNO0j/Gi0bGli862
         Ko7A==
X-Forwarded-Encrypted: i=1; AJvYcCWu2viGpz7jnr6suc5sW3azwxDu/GKUDIzJeunNFFq+JtdEc827o7LBDpYJKo3+yF4osA9yh/FPlDpxVJKgMW83lghERo0xTdtei0JUbDt2bQeunRiYuUszqvvuSM+veFtnfMdLS3TT8TSBSShbGnKENyqJOsGBN1k=
X-Gm-Message-State: AOJu0YzgQS8D+jQ6yIPexWmne4wyuxWgWABffhI4qVPAy6SzIGNiQ4Sq
	vV/fZA8cuB8/dtAYcQGSetOCtjoG5L+4rqwjBqcjojEG7T2jkhvF
X-Google-Smtp-Source: AGHT+IG9VviFqrQQjC21j50z21G2NJ9kg35tvooQmjLYNa13L/WcQWNSZvxAQR6whHJE+p3EEPfRIA==
X-Received: by 2002:a17:902:cf05:b0:1e5:a3b2:3da2 with SMTP id i5-20020a170902cf0500b001e5a3b23da2mr10108003plg.53.1713200884939;
        Mon, 15 Apr 2024 10:08:04 -0700 (PDT)
Received: from localhost.localdomain ([221.220.135.251])
        by smtp.gmail.com with ESMTPSA id r1-20020a170902c60100b001e0b5eeee41sm8203983plr.38.2024.04.15.10.08.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Apr 2024 10:08:04 -0700 (PDT)
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
Subject: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add ArmSoM Sige7
Date: Tue, 16 Apr 2024 01:07:36 +0800
Message-Id: <20240415170737.49350-3-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240415170737.49350-1-liujianfeng1994@gmail.com>
References: <20240415170737.49350-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_100806_747577_87778A1B 
X-CRM114-Status: UNSURE (   8.72  )
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
