Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32FB3C54E71
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Mar 2024 05:31:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TnQGyAqVzRuYa331kLTj1Mh7Snq6XCsx8KRhg6fYK1g=; b=j/hWXxoiH6xQ3b
	D4Cq+MH+dIxFgNR/BBZrcdoSZAhp1pEBgfr+rwe+IDvYWLPlzmhDYSZNbux3GvohAZl/PZx1JiIcf
	JzfqiawOYg9SITyPYcIKA52dJQ0HtMUKl7z3nywjMqQA1T5vEXga15hqC6ZLpcAMnMgJBSbwWbIl/
	8CLBRajVSEfbiZ4/QD2/gwsOp+ov8ZPTgkerCVp2jjfk/LTM4PPKVHGrhjFJDGrtZ19DQVbUCEigV
	2XIU6kAJXXUviXIZ3QRVolkG5uyrVJuEMFQ2cHLNnHvtV0liehwKpSqaPKn2WpTS1AI5UqM1oSdXi
	puNc2+FR2wNQ1vk0q2MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnXUu-00000005sHE-38cJ;
	Fri, 22 Mar 2024 05:31:20 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnXTS-00000005rHY-1PYz;
	Fri, 22 Mar 2024 05:29:59 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-1def59b537cso11235395ad.2;
        Thu, 21 Mar 2024 22:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711085388; x=1711690188; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+nQtnYW8cekda2E01DVGVjSk0pOF2YP92IFRmmPrICQ=;
        b=hb0rhVRWkwg2h9JTZxdxnPbfUBk/iuY+oGapm6KlJezuZ4vTG3bgDMtuysITpZCDe0
         Go6RnVoRIJ2D7N5dUXL7bmzEroEltPE2vbe5DhNAWjZYGAYxuv4t6s9QksCangDJEQYQ
         E5tpPHVFPwslPgddv/+eB9ero20UdPJgdg56CCP0R/YKoJKd8/mxvRcBcNv2yJvOZxHB
         8HFBzqhsSFJEMPyZqwC3N+uerZ24xRkXXcoLnazhX7vlZHSypyNN+thJuJBhUod8yddn
         lpuFm+7G/e4iqt/0V3GCMWilfF36MSKtCBS10XSCreIWYqjNjNSHCAvaVDONcfYC/tl+
         BieQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711085388; x=1711690188;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+nQtnYW8cekda2E01DVGVjSk0pOF2YP92IFRmmPrICQ=;
        b=Ur0DAS4ClJYxZdja5rwg88rlfTQ364bQG63R+Lc13jmhPaNm6x5Ljuw/+TOhzBWQR5
         yCWeuSsmNxoPPcERBO7HQaJUufDtqTJtNTvpw7Ai8MiQMQ/3rEIn09UKyt9UW44nMWDH
         7SNBBmrw1Q5n6YMk+LdXui9q2927Ls5SO+qawdC2i2LplN62m2IS/nFUyKU1Ql4+A73v
         IWvDiLZD48eWs4PReEnL/xYVwVRb/VSAylxf5SAJAqkKv81w88W3zcYBxvBaYV9cPdeD
         3exVKmNi3A30J26eTMtzAzEZyg8IdpRNCVaT95cBqDi522a98XVRt192zj5MzMALrxj9
         T+vQ==
X-Forwarded-Encrypted: i=1; AJvYcCVek5J0qZQxwZTBbuFsG6R7FJ3RBwUNnYO+MbQo1Vj4GU+W/CeC/4MEtZ558s6Auo4YyjznDqUlOJ7EKgl5IL0kaOAjGK4NdUZAYtuGF3tLr/KyVtk74SaD1epJFS1n6B4DzrDWz3vMd6IkqPGlm2eGQt74g0NTk68=
X-Gm-Message-State: AOJu0Yyol76ZyWBYdXEABedMJlUXlkTjTio1qMMARrB1dlX5CdwMZlwE
	ZZ9KH3C4JKR7U5R05iXOtO4p0jyQ3i4ngxhf1+hzc0oDDXQqutvW
X-Google-Smtp-Source: AGHT+IGWRWK0tGZwBaGff9HXSl9tVqTjf0FaaPeLL1/J/kZHM6H1XF3+uirsjSMrdpkZZK+QcAFgFg==
X-Received: by 2002:a17:903:2450:b0:1dd:a50c:1fdd with SMTP id l16-20020a170903245000b001dda50c1fddmr1873946pls.65.1711085388034;
        Thu, 21 Mar 2024 22:29:48 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.103])
        by smtp.gmail.com with ESMTPSA id e5-20020a170902d38500b001dffa622527sm882978pld.225.2024.03.21.22.29.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 22:29:47 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org
Cc: robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	jacob-chen@iotwrt.com,
	ezequiel@vanguardiasur.com.ar,
	mchehab@kernel.org,
	liujianfeng1994@gmail.com,
	sfr@canb.auug.org.au
Subject: [PATCH v1 2/2] arm64: dts: rockchip: Add RGA2 support to rk3588
Date: Fri, 22 Mar 2024 13:29:15 +0800
Message-Id: <20240322052915.3507937-3-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240322052915.3507937-1-liujianfeng1994@gmail.com>
References: <20240322052915.3507937-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_222950_549109_45BF378B 
X-CRM114-Status: UNSURE (   9.39  )
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

RK3588 also features a RGA2 block. Add the necessary device tree
node.

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 87b83c87b..8f130177b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -387,6 +387,17 @@ psci {
 		method = "smc";
 	};
 
+	rga: rga@fdb80000 {
+		compatible = "rockchip,rk3588-rga", "rockchip,rk3288-rga";
+		reg = <0x0 0xfdb80000 0x0 0x180>;
+		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_RGA2>, <&cru HCLK_RGA2>, <&cru CLK_RGA2_CORE>;
+		clock-names = "aclk", "hclk", "sclk";
+		resets = <&cru SRST_RGA2_CORE>, <&cru SRST_A_RGA2>, <&cru SRST_H_RGA2>;
+		reset-names = "core", "axi", "ahb";
+		power-domains = <&power RK3588_PD_VDPU>;
+	};
+
 	spll: clock-0 {
 		compatible = "fixed-clock";
 		clock-frequency = <702000000>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
