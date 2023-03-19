Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CD3BC7618A
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Mar 2023 17:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pR5oNMkvCG7dfg4aTv9kCF4vPRshj90kNZGK2JZkJew=; b=Gx2GIHPiKPapLc
	MmvOje/0EV6+z99KuCxoFA5embWaMYTb4BJa4eWgT/SMmLQTtChy4qUPFmBnVe96hciWXi8HaydAl
	kIrxFfhBFFInMmpehccC6UomfCUllC/phntRMZJo/MD3wPMgTBHYdjA+prIX00FcsQrZCA4IH2FEj
	fQJls7JXpWnMbg8orNhQY8dlcSwbh82eY/mQGCon6ZmLNFlMHGNQKu0MgJ1AeasGwjb0wQdLSDmJG
	9Tu3mt+7tq/I2177qeMA1MTWxo6jKMiVPDQ4ihaU/IvUQyz/20FzWX3QofmGiReGR/do7INnwbh2E
	ikGWovr0oLT05BbZ0qxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pdx32-0076v4-2q;
	Sun, 19 Mar 2023 17:42:24 +0000
Received: from mail-io1-f46.google.com ([209.85.166.46])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pdx2z-0076tA-1K;
	Sun, 19 Mar 2023 17:42:22 +0000
Received: by mail-io1-f46.google.com with SMTP id m22so4512130ioy.4;
        Sun, 19 Mar 2023 10:42:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679247727;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dcI4BBLYtEvhPbu+xjdZvkfgUtEKrU3F0hXnGswV/Ug=;
        b=KYkdZma3R0TQEmi0ciOUQfYiN7pxp//NOMIabWHcL4Y/mbXANdrAt8t96ly8wvi1Gg
         gafoKDUd7cC5sT7IaS8axN8u7vL4uTs9gdzYsDgwYmZHQNcoPH7T3UNbfX2zYliL5C9W
         w+TGWUq9t58hs0K20qyHcA+EqUqrmzlMBcfuxRVDTZNzFBzP8G/8iumrTXvBmCc6S6TB
         qXnOxdYFeqILzjacmP5JRi3WZKGiTq1zqTvg0NJWFXo5BSH17uNvYgVUXBUIqI9W5iyo
         MnmCimVJq0+cKORtfpg4I25ritb2Fg3rqutsf9bVckqU76c0CY9H1pshP7aPmAjcb1Z3
         23vQ==
X-Gm-Message-State: AO0yUKWlSfUgXFwkUnff5F4H2Nlke2e9xpSUIXE7IAheO+dYRdrvJ0xu
	/If18kdO0E90udSAMMox7vWbPaYIrA==
X-Google-Smtp-Source: AK7set//n98nJ9+FQb0BtZHd7Da1WEWuL+VuV6QwEqnbAqyime0B6gw0uRYnbo/zcfdtajUZCIApqw==
X-Received: by 2002:a5e:da4b:0:b0:74c:b180:c5db with SMTP id o11-20020a5eda4b000000b0074cb180c5dbmr4082518iop.20.1679247726909;
        Sun, 19 Mar 2023 10:42:06 -0700 (PDT)
Received: from robh_at_kernel.org ([2605:ef80:80c2:711:b843:6628:3fd6:ded4])
        by smtp.gmail.com with ESMTPSA id l9-20020a5d8f89000000b00740710c0a65sm2288038iol.47.2023.03.19.10.42.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Mar 2023 10:42:06 -0700 (PDT)
Received: (nullmailer pid 44793 invoked by uid 1000);
	Sun, 19 Mar 2023 17:41:55 -0000
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64/arm: dts: rockchip: Fix DSI node names
Date: Sun, 19 Mar 2023 12:41:05 -0500
Message-Id: <20230319174105.43978-1-robh@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230319_104221_450915_070BD8FC 
X-CRM114-Status: GOOD (  10.42  )
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

DSI bus/controller nodes should be named 'dsi' rather than 'mipi'.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm/boot/dts/rk3288.dtsi            | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 2ca76b69add7..d401b850583c 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1114,7 +1114,7 @@ vopl_mmu: iommu@ff940300 {
 		status = "disabled";
 	};
 
-	mipi_dsi: mipi@ff960000 {
+	mipi_dsi: dsi@ff960000 {
 		compatible = "rockchip,rk3288-mipi-dsi", "snps,dw-mipi-dsi";
 		reg = <0x0 0xff960000 0x0 0x4000>;
 		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 1881b4b71f91..e44e1c40c0ba 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1954,7 +1954,7 @@ hdmi_in_vopl: endpoint@1 {
 		};
 	};
 
-	mipi_dsi: mipi@ff960000 {
+	mipi_dsi: dsi@ff960000 {
 		compatible = "rockchip,rk3399-mipi-dsi", "snps,dw-mipi-dsi";
 		reg = <0x0 0xff960000 0x0 0x8000>;
 		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH 0>;
@@ -1990,7 +1990,7 @@ mipi_in_vopl: endpoint@1 {
 		};
 	};
 
-	mipi_dsi1: mipi@ff968000 {
+	mipi_dsi1: dsi@ff968000 {
 		compatible = "rockchip,rk3399-mipi-dsi", "snps,dw-mipi-dsi";
 		reg = <0x0 0xff968000 0x0 0x8000>;
 		interrupts = <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH 0>;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
