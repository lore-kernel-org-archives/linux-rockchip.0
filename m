Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CDC8C4167B
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Dec 2023 13:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=om4ngTlUOk9WjeSVz1e/pb2IsYVwLgfP+nn9ecfDkAM=; b=nVYIOhUMwKGFv3
	izvVFIcmuUGCi9h61cH4O/EWN2bdelIB2yI2++/IlGDDd3z1YzJvrJHbgBQBrJlbUjxYNoQULMH91
	UHj07/qlLSvz5aU+MYZ7AhjmFIrCc2UI8aE+ssPt/reT7iWc7kkAuMoIEHpk2DFbPnPb5zjTNYU8i
	o/+Tl6Juy4VYo2TlxSMkXCq09XCQxfay/6vSPCm6zdh3rjxX0PPZrE1WogNcjQ/cIOGc8rg6nlpPd
	8FPOS6TJc6mqd69NbfNunEBuJ4VXHI4sMEI2Nkt+4xq6iiOYc+97fdSTfdVsgbrv2vRMigVm8SoCK
	OGJln9OVqcMi7/gg0aHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9PgY-00FjB7-2C;
	Sat, 02 Dec 2023 13:05:30 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9PgR-00Fj4u-0h;
	Sat, 02 Dec 2023 13:05:24 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-a00cbb83c80so441682866b.0;
        Sat, 02 Dec 2023 05:05:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701522318; x=1702127118; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BXnPXvkgEdAqlxa28rDWBIXJg5QYtD+xYZlakCzCIA0=;
        b=GhpdE61o6Xwp3IHyvdIL8w9cDHP2/1Bpl3unr/lTd8oWOr9OdjWt1KJ1ZCoqUqFCiK
         c5uiFijEJHimKpn9JIYSitGLsCigNzLYKAo0Kz8bT1tPNq1h0ewP5PkhLW7BrJm6xSsV
         /0XAimapM2oPNqHVQchAepfr3lv9ifv+BqUQKSw6Stf7LbfuEGPsYBMkX+jEDTI4rXd0
         bi1V2g+ZJM12X6cZFMZWq+EBEeVuDjWtye9pIxQeITzXupd9zTnFgALv5rRmQPVrKSWu
         1qtHu3gpyVl+9zLMe5r59MYRhXrkWmrHY/449mhFbnMnmuvQFFCCASxAOfteDxUMXw8u
         bCQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701522318; x=1702127118;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BXnPXvkgEdAqlxa28rDWBIXJg5QYtD+xYZlakCzCIA0=;
        b=C1So+Gr63n3StHbaQw4bygG0on1UMBJB8xbb1vXVna5kbLuW1PNDgJ3tgqgU/GKGlf
         Oaveio1q6pFDJHLFemYzQP+CYTgQtVYK7IjQxvAJy7pbrUjYda5yoxDFPK1y9ogkFvir
         wu5pNuv2bf1vTc3ET6vKrWDIuEnw59bC5WzBqdfSWAxh4RZLMwBE9s9sHH7kkpf6CBG9
         gfq4ZOmlLb8qdasfkVXbfOiRwRKGXo1eas8Fgg3xEXX5IC6hJ8dNpid/HzqGB/jXzpC7
         njDFaT1Y7Qqg/rMRFK+wVbowtr7Wj5QCxUW+aysqlLixMgx3fh9LdUakDwhk8qO8iCdY
         558A==
X-Gm-Message-State: AOJu0YwdXJPoddvgahav+SFLjZHFne6sHD86Jvce3Cu7oAfE6WuTPxce
	Cpvpp3AHTc/HPiKOruuC9A==
X-Google-Smtp-Source: AGHT+IGoxNPqrzQnvQpxf09ljrKJcuFDtZ22xCNQN1xzBMU7KhiOpt13wtWf8ZZHmxNTvvRlv9Nqew==
X-Received: by 2002:a17:906:28d:b0:a19:a19a:eaa1 with SMTP id 13-20020a170906028d00b00a19a19aeaa1mr1635582ejf.90.1701522318738;
        Sat, 02 Dec 2023 05:05:18 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:908e:b829:354b:f8ee])
        by smtp.gmail.com with ESMTPSA id bs5-20020a170906d1c500b00a0bf09c9483sm3045324ejb.35.2023.12.02.05.05.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Dec 2023 05:05:18 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 2/3] ARM: dts: rockchip: Move i2c aliases to SoC dtsi for RK3128
Date: Sat,  2 Dec 2023 14:05:06 +0100
Message-ID: <20231202130506.66738-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231202130506.66738-2-knaerzche@gmail.com>
References: <20231202130506.66738-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231202_050523_256052_465B9EEA 
X-CRM114-Status: GOOD (  13.29  )
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

SoC TRM, SoC datasheet and board schematics always refer to the
same i2c numbers - even if not all are used for a specific board.
In order to not have to re-define them for every board move the
aliases to SoC dtsi for RK3128 like it's being done for all other
Rockchip ARM SoCs.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128-evb.dts | 1 -
 arch/arm/boot/dts/rockchip/rk3128.dtsi    | 4 ++++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3128-evb.dts b/arch/arm/boot/dts/rockchip/rk3128-evb.dts
index 776a483cc26b..c7ab7fcdb436 100644
--- a/arch/arm/boot/dts/rockchip/rk3128-evb.dts
+++ b/arch/arm/boot/dts/rockchip/rk3128-evb.dts
@@ -12,7 +12,6 @@ / {
 	compatible = "rockchip,rk3128-evb", "rockchip,rk3128";
 
 	aliases {
-		i2c1 = &i2c1;
 		mmc0 = &emmc;
 	};
 
diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 5b751284d6ca..dc149d98cf9e 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -20,6 +20,10 @@ aliases {
 		gpio1 = &gpio1;
 		gpio2 = &gpio2;
 		gpio3 = &gpio3;
+		i2c0 = &i2c0;
+		i2c1 = &i2c1;
+		i2c2 = &i2c2;
+		i2c3 = &i2c3;
 	};
 
 	arm-pmu {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
