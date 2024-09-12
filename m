Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7749CEED631
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Sep 2024 18:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AJY2+bxK1wFVrouHoezQ/hqTHbs2AuWKKcjJ+M6neVc=; b=0hBmJ9Xmnz+opT
	81qImAPQwQ36cOx6u4ey6SCfctyDj3cjTuEs8gm6P5AhAor5Ag+iCyYDYJoYEAMrOkLassRDGIQcS
	rutzpnyhmel35lqsR1jN2n+TeYuuuFzk912YojFzXMTHzSOeGeZ/Cv39kG8rc86d2tYRr0ZOflOwN
	g3u30JKUocJp959Veb9W8XpSlDKppe1dFXvXX5xY1S933GNu7aFlAZBV7c9FpoOK0TBRotXcEWhBo
	iyquAWwMEpLyWS0nX62U9UshX5LQJl0ItFx0aeb/ZFv0Dam5/WpX5uCLhYErUfLyjXmImAeGMwOtt
	QLfmO+Vfcv3/4Btl9aaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soo9m-0000000DrlG-1ajl;
	Thu, 12 Sep 2024 18:03:02 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soo8h-0000000DrgO-2lIx;
	Thu, 12 Sep 2024 18:01:56 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-20551e2f1f8so513845ad.2;
        Thu, 12 Sep 2024 11:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726164114; x=1726768914; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XTzb4Q0LRCOZctNYVbt3pa5aTUifZ6PkYnltkFvJtsU=;
        b=Ay8o5y+1P/NrYFt+HkXTxW7HK3cR0DEVDdRQe3dGxCoj9eD+lX/9EhqncPGYqBLJNM
         aIhitOqoRGi7K0Wohar+8hn0orrGTDrkXbLHyFwGimqsIg2xFpEGdfk+ET1KacC0D9ob
         LIsu6yG1MXmhqUuAuzmRzb/QMhCFcQJppZJ5rfahZzRDS1KNsn4Vs9gEkWQztnNxAFUb
         kq9PHkJM0jfgo8aDPOymPmHFaksDi1RVV/eh+R2VufTbWohafpwiBw1dGGip0SnL1ZTN
         ck32mDrvp6if649K/t7Uku4Lg1BMeqhbRbSF4PK5tGP0yv+rAVEt9UScno9mFc7rex+2
         HV6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726164114; x=1726768914;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XTzb4Q0LRCOZctNYVbt3pa5aTUifZ6PkYnltkFvJtsU=;
        b=UkVC5jtNOWX9+VyjqgMGi8zesxNtKAWWs9jVMA6rB8Q3NPlz3W/x7AdxQIoHMgPXjM
         djEujSn52Dzjo/wseh5JZtgi+uvz93RZcx2A3mbrzm+ou83PeKa57vQzZbcLPCpgqqeH
         uM1auIyBuzhRKqxYciBWK98xRM1fS4CvS1mwZE71f/VB2Hst8Ko9V/N3Tf1/N++jbOjx
         IhmZ5Z649IrIAED0nTguREyznRmOxlzr463J1u1bqukSy73tu1l0at0gRUnVfTb5nNAG
         C9suqeTZlIkICB7P4okPhB9IqlKn5gk0uCJC+iPbXaGf3yg8mwdgVnUl9tpmfwjPli74
         ZQPA==
X-Forwarded-Encrypted: i=1; AJvYcCU2/Gowo5I0FHXtYSM1JLLKOOCpdvZEIZPvEXuLt32mxK6TkkjVvOR0KMUz/y+DtVe3An99TrSnWtRz5MMlH6sQ@lists.infradead.org, AJvYcCVRSLJA7+ezbW2SMPtfYkwdbk7tAXXp+o2NccFUD0qkKhwP7kmdRfVP4uGIBmD3Om8l0ec3ODyF2IpA5oVk3Ss=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3EzMRqupSDdCX653tQJnxrC+6Z2RsD1UNF/EHzmW+LL6Z3djQ
	DLw4dsTt0wg1d4uicuPS24yJ92szj4BlPnfAN0JjZeHkL9GBtZ3a
X-Google-Smtp-Source: AGHT+IF6PVoW3GzdEiQjDPGaoS2GOiZTQP7EqQFVG64ohA0WAsC5hCjj+1mrSSKD0YOCyPD2npDqMw==
X-Received: by 2002:a17:902:f685:b0:205:73e5:4d7a with SMTP id d9443c01a7336-20781b46c0fmr253785ad.10.1726164114128;
        Thu, 12 Sep 2024 11:01:54 -0700 (PDT)
Received: from luna.turtle.lan ([2601:1c2:c184:dc00::315])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2076b01a0d1sm16759705ad.277.2024.09.12.11.01.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 11:01:52 -0700 (PDT)
From: Sam Edwards <cfsworks@gmail.com>
X-Google-Original-From: Sam Edwards <CFSworks@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ondrej Jirman <megi@xff.cz>,
	Chris Morgan <macromorgan@hotmail.com>,
	Alex Zhao <zzc@rock-chips.com>,
	Dragan Simic <dsimic@manjaro.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jing Luo <jing@jing.rocks>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	Joshua Riek <jjriek@verizon.net>,
	Sam Edwards <CFSworks@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Designate Turing RK1's system power controller
Date: Thu, 12 Sep 2024 11:01:48 -0700
Message-ID: <20240912180148.205957-1-CFSworks@gmail.com>
X-Mailer: git-send-email 2.44.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_110155_719732_0DBC6907 
X-CRM114-Status: GOOD (  10.26  )
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

Currently, the Turing RK1 board reboots when told to power off.

Resolve this by designating the RK806 as the system power controller, so
that the relevant driver can handle system shutdown requests.

Fixes: 2806a69f3f ("arm64: dts: rockchip: Add Turing RK1 SoM support")
Signed-off-by: Sam Edwards <CFSworks@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
index dbaa94ca69f4..33bd1bce2eae 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
@@ -289,6 +289,7 @@ pmic@0 {
 		compatible = "rockchip,rk806";
 		spi-max-frequency = <1000000>;
 		reg = <0x0>;
+		system-power-controller;
 
 		interrupt-parent = <&gpio0>;
 		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
-- 
2.44.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
