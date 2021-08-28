Return-Path: <SRS0=b+1m=NT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85388C432BE
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Aug 2021 10:27:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F25F460EDF
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Aug 2021 10:27:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org F25F460EDF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jf1i0JbFPf+Fuyb0v+rg2FkCYckuLOfZaGODb7SGygA=; b=ZxRhbZhKHbUC+N
	JNr3w+0THU9OyvnfV9PE5u6/31XL3dwjcJlayPslJ3OVux7an590Nqb6/n/rWoB+o4dQN+OGUA5Kq
	ln3M4UP6180EPaO+8b3ohE3Fd9r8ympTps4FeuvM7AlmJ5uEisNp8goEkzbllFrNuN++0UPAejzcH
	7QL3pjEIT6EPrvI0erSi9a0N0RJryYr6xrlN6Vk1OhzEXVZZM+UkaEdpTzova6lLMz6RYNxEeTGGk
	wLJXW6hEwswo5HHyvvCM+IkrCPDQrIVpLg11+REriiQxKOQ5c29YyJqGcNw5/Rpo11T/O3tbPgh2B
	iZZ5TYqHq9zd2+c/B9Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJvYg-00E1Rz-HE; Sat, 28 Aug 2021 10:27:30 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJvYU-00E1Qs-5G; Sat, 28 Aug 2021 10:27:19 +0000
Received: by mail-ej1-x62b.google.com with SMTP id me10so19494081ejb.11;
 Sat, 28 Aug 2021 03:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tXzl0+fzsQFRNFfaE0xHEGy4Y7scX8OLe96hsEArTYw=;
 b=u1NGnfYAWhGLDOLASC9S+V8Kaidcgz1eztLCcF3Us7umRZYSZ+LV0ua9GYYG52hT1q
 TiYpNTqcd97SwNx5ydN28BfBDG8lse5cgIfMWhRmn53KgQ+3/50szns2BhsJ+0DR8ust
 mfW7ejHJqFJLrHBGGir+fB5z5hy/D7BgHEXtrajwwfg3lh9an+JPkasMyd9lMOOrwaDL
 HB+y3ZU6MAvbxvotiiyfOl1yys4CSgW9I7b35T3H/38UZiTZaacarYNabX3Q0wVtyZdQ
 huHKOjT1bpmcybO35KuX/m3lGbdpBnj8fSph1g5zjRr3gTKoqRq2fEUseZ6MSbfha9PG
 2ivQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tXzl0+fzsQFRNFfaE0xHEGy4Y7scX8OLe96hsEArTYw=;
 b=arRzpkRC5tVSlB1F07WYlHOJ6hLvhTq71KN9UxwaEj1eBGYlLQfe1apof/kmCa4Zk3
 H9bxokihlImpBPxP0IRoVl5qk8Q1Xic0mRXSPr4nYamz10AB2c1kNm8uAJWHvO5WQHxo
 65aBHJeCLRMjAvQ26tXEjOA6a0BSlvCAo4ryuV8kW2K7C52/7g5dATjPfnzUb0cBzUdv
 I1JCHTUQRftTiz+oq3PP8byI4AwAUprlhqCH3VGmB4zW+IyatUuiVY1oN8eO+rF/s062
 DQxjDG6rXQaE+0wsIIAiQgxy07E1W2ridXMLstr3lUbfj96uOESNUCyVkfN5cDHuaJ2A
 difw==
X-Gm-Message-State: AOAM533x0qIm12HLv48UfELMcEd+/jnUdslDcR2huFOKgl3RxA4Pi50s
 ef6zeRBSTcBgs1t7SfUFuJbx5oEF2E2zk60e
X-Google-Smtp-Source: ABdhPJy0McnAeRa3hj7JCBpxYEn4ABgUippP1b2Dcg+sfc5Q/FU8uTIytLVxGR4VwUppqGS4jPD29g==
X-Received: by 2002:a50:998f:: with SMTP id m15mr14162154edb.193.1630146425675; 
 Sat, 28 Aug 2021 03:27:05 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id e11sm4705445edq.30.2021.08.28.03.27.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Aug 2021 03:27:05 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: rockchip: swap timer clock-names
Date: Sat, 28 Aug 2021 12:26:59 +0200
Message-Id: <20210828102659.7348-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210828_032718_247286_F6BA569A 
X-CRM114-Status: GOOD (  11.93  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

With the conversion of rockchip,rk-timer.yaml the clock-names order
was set to "pclk", "timer", but nothing was fixed in the ARM dts section
of the mainline kernel, so the swap timer clock-names that don't fit.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036.dtsi | 4 ++--
 arch/arm/boot/dts/rk322x.dtsi | 4 ++--
 arch/arm/boot/dts/rv1108.dtsi | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index ffa9bc7ed..6864b8668 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -416,8 +416,8 @@
 		compatible = "rockchip,rk3036-timer", "rockchip,rk3288-timer";
 		reg = <0x20044000 0x20>;
 		interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&xin24m>, <&cru PCLK_TIMER>;
-		clock-names = "timer", "pclk";
+		clocks = <&cru PCLK_TIMER>, <&xin24m>;
+		clock-names = "pclk", "timer";
 	};
 
 	pwm0: pwm@20050000 {
diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 4021e92e0..dea025a64 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -477,8 +477,8 @@
 		compatible = "rockchip,rk3228-timer", "rockchip,rk3288-timer";
 		reg = <0x110c0000 0x20>;
 		interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&xin24m>, <&cru PCLK_TIMER>;
-		clock-names = "timer", "pclk";
+		clocks = <&cru PCLK_TIMER>, <&xin24m>;
+		clock-names = "pclk", "timer";
 	};
 
 	cru: clock-controller@110e0000 {
diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index 7d96a0d02..140434384 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -300,8 +300,8 @@
 		compatible = "rockchip,rv1108-timer", "rockchip,rk3288-timer";
 		reg = <0x10350000 0x20>;
 		interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&xin24m>, <&cru PCLK_TIMER>;
-		clock-names = "timer", "pclk";
+		clocks = <&cru PCLK_TIMER>, <&xin24m>;
+		clock-names = "pclk", "timer";
 	};
 
 	watchdog: watchdog@10360000 {
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
