Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 993CEC6FA8F
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JPSBSNBeI1KB2YvfwVxpmZWea5G/+0Adkh3AqWDsy7Y=; b=ziflNpLsw7zpqK
	z4Hfej0fplwc+LJcZRw9Vg7yqkc8gm8f32qeU8hn4rYN68ny7XohukZZ8i6BcgVUDuYIArbZgxKge
	KlI2qp230qzws3T+jV0tnicv5gcXCNknkOC8NMzgW80z3my+eCjTumPRW6fr3FmYFnOOXz7zzT8x/
	m7/N2MmDU+9wLws0qsNaRIX8ouHiL3tCKEwLvy7DCxnkajscldCTaplHnxXxUnbKY+o1Xgn27JW3e
	FCeWVJv5OKzXDC6sUQoGa23AiiaSuZzm9vAMcHkNVLEh/mtS7+BYt7QXc2zk5ssZQU31kNaQ3X9p7
	QwTISukq3k2Hb5Sr71Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2MX-00BwbZ-18;
	Tue, 29 Aug 2023 17:18:45 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2LX-00BvSN-1R;
	Tue, 29 Aug 2023 17:17:45 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-99cce6f7de2so609118266b.3;
        Tue, 29 Aug 2023 10:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693329461; x=1693934261;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ilnrPdFJtUf7kFovTN/fYGCIN4J3UZgI+cSnZSR/2yQ=;
        b=CojAhc332OPw8G4b1MSX2JQIfQDCWoVAGTFpYoYl0/vT085fGy4ePtubR/tl/ZlsIA
         l0uDDPewODZRXUPwQabgplzdC4JNc4myOQVV6TKtNZzHR/zTCdmDxbWrYTQ913Ug93dE
         Ljr8rF4aJIPgyle1ezaRXAKcCZkTsru1CJ6/LLnQPkaX9LMtCAx5R9bEMXBX7q51ItgT
         0PKjUs7ecYytckB82/OClp4+JYvRuR7KQWln7xSZiha8hHm+Z6Wsm4jgAPRIziHgSxMb
         QrTk4sU11HDveeQ1zL7bqYeR/6WYcSm4kFKKf6s8v0QQbLee2Jbv0SA/0k8j+1waMlo6
         r0CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329461; x=1693934261;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ilnrPdFJtUf7kFovTN/fYGCIN4J3UZgI+cSnZSR/2yQ=;
        b=ZsY2ASEyLE5I8PvCbq9P+KxoaY9gfk4zdxa7U954USSVcybFyMgcesteZLHfEUuZNO
         mswJiU8/aMUiQZT9gjh6DuwaAEcFPUTcHN4rvdEyV1vzE2/Sqbzxs54RTlAAaTGT6xuX
         A4O/1XXdIxrShsiEiKi4MUx9x3vOtC9v7ucOc7qpI2YCjiy2JSS/7w6Jr4Z//Vq/m54l
         PORsWrTkvcyr6odE+74eR5hjfuzz0ACpNatyibGo43TubT97EPHKP6HNQhmk6Pn0QKYM
         nukDg7M5XZ5hww+sL0xRJVsXE5YeGQsEm2CBIbUL00544Yirqnl3KF+A3onp9K6zUjvm
         bTnQ==
X-Gm-Message-State: AOJu0Yz4Iolq+Lj+j7GDWalSCVIZtLIq99O08XZ3MnAAs/bcr4bSAnY8
	DP24AuQyHsCKc/r+y3pWC8cYE4JSYg==
X-Google-Smtp-Source: AGHT+IFOS5fuKXmCLh8kzU0y1GLYjtXxy7bOhVtFki5w2Fgr+bDQyC2qYgPIiQH2f3gYvZC+LV/EnQ==
X-Received: by 2002:a17:906:3d29:b0:99d:f29b:f2e4 with SMTP id l9-20020a1709063d2900b0099df29bf2e4mr21968075ejf.29.1693329461237;
        Tue, 29 Aug 2023 10:17:41 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id a21-20020a1709062b1500b00993cc1242d4sm6115834ejg.151.2023.08.29.10.17.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 10:17:40 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Lee Jones <lee@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	alsa-devel@alsa-project.org,
	linux-clk@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 17/31] ARM: dts: rockchip: Add CPU resets for RK312x
Date: Tue, 29 Aug 2023 19:16:33 +0200
Message-ID: <20230829171647.187787-18-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_101743_514383_97BC8EBB 
X-CRM114-Status: GOOD (  11.22  )
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

Add the reset controls for all 4 cpu cores.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk312x.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk312x.dtsi b/arch/arm/boot/dts/rockchip/rk312x.dtsi
index 7aba97b2c990..b195ac525c37 100644
--- a/arch/arm/boot/dts/rockchip/rk312x.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk312x.dtsi
@@ -34,6 +34,7 @@ cpu0: cpu@f00 {
 			reg = <0xf00>;
 			clock-latency = <40000>;
 			clocks = <&cru ARMCLK>;
+			resets = <&cru SRST_CORE0>;
 			operating-points = <
 				/* KHz    uV */
 				 816000 1000000
@@ -45,18 +46,21 @@ cpu1: cpu@f01 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a7";
 			reg = <0xf01>;
+			resets = <&cru SRST_CORE1>;
 		};
 
 		cpu2: cpu@f02 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a7";
 			reg = <0xf02>;
+			resets = <&cru SRST_CORE2>;
 		};
 
 		cpu3: cpu@f03 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a7";
 			reg = <0xf03>;
+			resets = <&cru SRST_CORE3>;
 		};
 	};
 
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
