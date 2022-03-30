Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4D7DC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 13:17:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=43fmR1sRt9ayy1RNBhFVl8Lj3tvJF3N0MqMSCZqkEbM=; b=Nvi4ptdIDnKTFZ
	AqD+k/6FlWj3Q0T0905u3GXVyrirjzAeysGG8uAgkHbtG5SlxPBier2IhMWBVW8I+1Vpu8pEmXQd2
	5HcgscX6Csvf9COLzl7e3OXHNXYQWrrlnaZOUwoQ9s9mSJJRHwcZFGC0jWEXHfGxCcB33MofxZBiA
	VNi/z5Lr3t9FfrwPtUstX38IEje7DUgiSwrAVgH3DZq2PPVn/X1vkDlh62g4m+f1ZBGdjdB/EwPL4
	Mcmnq7ymtrzduph905UvHnLTippD+6ypCMRvE//Mr02TwTcyBMlRVHiNNX4rCb7yorAscMePxgwZG
	pFMufcY2g3/T3BOKrCQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZYCa-00G2R7-5d; Wed, 30 Mar 2022 13:17:32 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZYBO-00G1vU-Bk; Wed, 30 Mar 2022 13:16:19 +0000
Received: by mail-ed1-x52c.google.com with SMTP id b24so24353742edu.10;
 Wed, 30 Mar 2022 06:16:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gs1vvcOmyeHWU2nvibJ9wj8P9a0Lnd/nEA7xnnwe/Uo=;
 b=S8gSdguyuYFeXvjQIF+N/KzFb5HSb0C6/XOwjXe1zZldnlDNiaxAUWaNvatdZSJ1T/
 DthKq0Wy4wRSeXYFnxTGBmI/Jb7lYzpDafiYhjDvtQZsbK39peu/8dmph4Oo0fAGhygU
 TErQRp6v6FAPVFmv6MOZgLiDa5Dzs0j37cvQrn3glhZEFNrpgaVzsOJ8DGkqVVOF75lE
 j85VMXD6+A7XhHwEVw2GpjrpvndWtUw8XmZ00uOnVMmOAscupQaCK2CEV+6yBTl3x80m
 B9XJcoKLREPpXXoK26KH21Ep/8npIyicj+zRj693C8m25q1JXFnGqBMCrjhPsQUTHKIz
 I2ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gs1vvcOmyeHWU2nvibJ9wj8P9a0Lnd/nEA7xnnwe/Uo=;
 b=rDcfEhGxdau0pUw8jG4UZaZMqJDZLmFpqklp5PR1J8wObg8UfB+zqcjsBREnYnrort
 Wp17hDbRVPMMU9vKM39JdH8KvUvWZ3CwjtOEW8maZuDtGIHXjxzq3aAYPkTGe2g1QX15
 Laqu9EJE3PdaA/axVF17sNScM5FVVFPCAc9Cm93TN5O0x8i15K7l2zWVXCb8qXdBnM0k
 AUHRDyHBYMmPnrp+s9KtouGscm2fq9mXxiDdAogqrkVgtxvOHGQgcf6yr3jwWXzSnC6i
 MB9hu+21SsxXPcqtE77xmSpJnSNjoTIRyz4r2gV+gUpf7Q/DTDUsnrleoep0X8MT+0It
 y9Kw==
X-Gm-Message-State: AOAM533znVEI1ueoryydof7Gw6CXfGUNySza2+MGjY3KdmUHsLhB3lwB
 wD+4M5UUiqSZx3igcADB0LE=
X-Google-Smtp-Source: ABdhPJxVHm9ajeOgUb7tlHvniIns/o2Y5rSQXdlfG1g7ZiVmjRT/qHDSX5u7MblMemJiINN8BKtiEw==
X-Received: by 2002:aa7:cc96:0:b0:410:b9ac:241 with SMTP id
 p22-20020aa7cc96000000b00410b9ac0241mr10577416edt.246.1648646176461; 
 Wed, 30 Mar 2022 06:16:16 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 ge13-20020a170907908d00b006e09a005d73sm6603476ejb.31.2022.03.30.06.16.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Mar 2022 06:16:15 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 3/3] ARM: dts: rockchip: Remove bogus "amba" bus nodes part
 2
Date: Wed, 30 Mar 2022 15:16:08 +0200
Message-Id: <20220330131608.30040-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220330131608.30040-1-jbx6244@gmail.com>
References: <20220330131608.30040-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_061618_442444_357EFAC1 
X-CRM114-Status: GOOD (  13.25  )
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

The "amba" bus nodes wrapping all the DMA-330 nodes serve no useful
purpose, and certainly bear no relation at all to the actual underlying
interconnect topology. They appear to be cargo-cult copying from a
design misstep in the very early days of FDT adoption on ARM, which was
righted with the "arm,primecell" compatible, and the last trace of the
idea finally purged by commit 2ef7d5f342c1 ("ARM, ARM64: dts: drop
"arm,amba-bus" in favor of "simple-bus"").

As such, they can simply be removed and the DMA-330 nodes fitted into
the normal sort order.
The node names should be generic, so rename it to "dma-controller".

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rv1108.dtsi | 29 +++++++++++------------------
 1 file changed, 11 insertions(+), 18 deletions(-)

diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index eceaa940b..c158a7ea8 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -85,24 +85,6 @@
 		#clock-cells = <0>;
 	};
 
-	amba: bus {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges;
-
-		pdma: pdma@102a0000 {
-			compatible = "arm,pl330", "arm,primecell";
-			reg = <0x102a0000 0x4000>;
-			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
-			#dma-cells = <1>;
-			arm,pl330-broken-no-flushp;
-			arm,pl330-periph-burst;
-			clocks = <&cru ACLK_DMAC>;
-			clock-names = "apb_pclk";
-		};
-	};
-
 	bus_intmem: sram@10080000 {
 		compatible = "mmio-sram";
 		reg = <0x10080000 0x2000>;
@@ -259,6 +241,17 @@
 		status = "disabled";
 	};
 
+	pdma: dma-controller@102a0000 {
+		compatible = "arm,pl330", "arm,primecell";
+		reg = <0x102a0000 0x4000>;
+		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
+		#dma-cells = <1>;
+		arm,pl330-broken-no-flushp;
+		arm,pl330-periph-burst;
+		clocks = <&cru ACLK_DMAC>;
+		clock-names = "apb_pclk";
+	};
+
 	grf: syscon@10300000 {
 		compatible = "rockchip,rv1108-grf", "syscon", "simple-mfd";
 		reg = <0x10300000 0x1000>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
