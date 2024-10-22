Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B0B6CDD0DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 19:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6KehcQnI5bKPCYVVOtHaBbX6a3s8hVs0fI7Lkrecj00=; b=CFuF0I9Dswr+u1
	sM+GHqpcvlTnyGv2PtB5GCUEu0GJc7GY/vUsTwRFXlcYJTcZaSzq525qQgjcQxzlGBPizKsMso/jT
	bS/RSDz7hh8vTZazw3Zu4lF+5Rof52g4DH4/cniaXeefYEYYwC92/vzaRt7fTpJZ3kH//2bzQSaPF
	SqznqKaizVslYiK15L2+/1/mPEatmKF993PmNDjU6bWjfMl6N5O9VQe+XNY+NRUFP0O3fftnPVk3z
	jhKubdz2VPJf3Sm4Cx4K8K/SDHqF3CKJqq3yYk1zzzOR7HCObqL1FQs0gZQU77SGj3cJlWYOgFFFw
	YE6kMQPHNGfxPkzJtIRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Knc-0000000BzIb-1Hlw;
	Tue, 22 Oct 2024 19:44:12 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Kg2-0000000BxgA-3RLl;
	Tue, 22 Oct 2024 19:36:25 +0000
Received: by mail-pg1-x535.google.com with SMTP id 41be03b00d2f7-7ea7ad1e01fso132562a12.0;
        Tue, 22 Oct 2024 12:36:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729625782; x=1730230582; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OX3rGRTXjTnfbyh3jkkVkK45Jb1/cfnPyM7MP3Mq4nk=;
        b=iWvkLpZjE2ab/DUUxndOOA6uzJ0BNvBxIdnDEcxwAVoEfkafH3UvxhHgcE4TssZw1L
         vC7PVnnUPH8/UZJsKdwRJlKQ7dTdDppZ1pz8jaGzM0jvoacFf0rV5633c9aKNRhvtzD/
         DGyj0HdqOieRplVs1Wo0zlTs/dFbHSeyY76ayX46TbfgLABbLI6MaM5r181DvanAS3W/
         d0EpARpn4laTFhPmX161n29ykEr/mlVeUPLnD1iUZIuttgvJo0b/TxWC7p/CRB3Zpgl3
         tG1Okftg0U7rS34ENfMCYH+XoUoeczlRx4qftEDqmxGHDuX6USJ107cK+5IZ9rppAxw3
         KTkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729625782; x=1730230582;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OX3rGRTXjTnfbyh3jkkVkK45Jb1/cfnPyM7MP3Mq4nk=;
        b=lYDY7/0L4WqVTbZ7bNKDCyuwAox4zl8Ks2F2E8t+fSSQqPSxs3/N1ArRQnIgfmlP42
         0auutk4kxXrCm3K0BZQ+vRyywXAlsPHehOr9mQiGFeew+s41VoQO/dYd9l6Q8KHZi6xa
         +PWuqaQAl2EdMl6LmVfCN7FKRnE9Iq/zqsxkI++YWcNyNXa+sR+9jw5xaelMpbTJUCQG
         45DfFDvvZIggHsSyPf/zAF89rvGSYi0A7LYbgIgnLOt9DT/fiPM6HXv0YzvcOlq2LgJ1
         0TACrayTgPKBisDLFfY9C4epefUFx9Kiq32WBQCmayHJdMi7dffx2CEExFYmtvjmf03h
         4eWg==
X-Forwarded-Encrypted: i=1; AJvYcCWhfCOkt7lgnIblga6UdP/qh0mEQC5CnrpJbxnCVNxihtF4BnLTRMuoWRPHvNq23CF9FKLBHh43cJTah4sH0BY=@lists.infradead.org, AJvYcCXgmN5w9yDRRePaLrTNCx+RNaYXeFbVK2C0gF1txtK97/8aDQaBENI3YmT6aqHd7oL8AqHJYrgehOwGyGrDkQcv@lists.infradead.org
X-Gm-Message-State: AOJu0YwubhCEPMcMhxdrTh8S3MO1/6EZZ/6XZTHHV1WpZsczm3l7Bpke
	M2F0wwFQuqc4xiK0fX4/1faD3s877A3k5vjCIeFAYpB3EdYAG//E
X-Google-Smtp-Source: AGHT+IGxChW/ByuZYjhL4nrxVUwxoOienwQqLSub4S6jDZ1mxsfZoXM4s4/2IaaNf54eWRFhDaDgpw==
X-Received: by 2002:a05:6a21:7747:b0:1d8:a9fa:f7fe with SMTP id adf61e73a8af0-1d96c29621fmr4948174637.10.1729625781417;
        Tue, 22 Oct 2024 12:36:21 -0700 (PDT)
Received: from CNSZTL-DEB.lan ([2408:8262:245d:4d65:bc4b:53ff:fead:2725])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7eaeaafb1e0sm5467316a12.3.2024.10.22.12.36.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 12:36:20 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Andy Yan <andyshrk@163.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Tianling Shen <cnsztl@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/5] arm64: dts: rockchip: enable eMMC HS200 mode for NanoPi R3S
Date: Wed, 23 Oct 2024 03:35:29 +0800
Message-ID: <20241022193537.1117919-5-cnsztl@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241022193537.1117919-1-cnsztl@gmail.com>
References: <20241022193537.1117919-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_123622_919994_D655DFD7 
X-CRM114-Status: GOOD (  10.32  )
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

It is required to boot from eMMC without additional patch in u-boot.

Fixes: 50decd493c83 ("arm64: dts: rockchip: Add FriendlyARM NanoPi R3S board")
Suggested-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts b/arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts
index 243574f8da78..03a2f90f6217 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts
@@ -491,6 +491,7 @@ &pmu_io_domains {
 &sdhci {
 	bus-width = <8>;
 	max-frequency = <200000000>;
+	mmc-hs200-1_8v;
 	non-removable;
 	pinctrl-names = "default";
 	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
