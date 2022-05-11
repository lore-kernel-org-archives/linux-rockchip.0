Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67EFAC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 15:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rpCZ0+KZnQjSHkMdPBubbWNFngPFJwzzuUBtPsuzV1I=; b=4zJ7t9Jn/WZg8p
	MGNNz9s5XPHfwrLi+ijjru06lgu9agswBUs6rA+B57+GOWMRPIUqKTmSjEOjGBYSKphEJKXwWXMlq
	u3EsJ2LekRItln3s6BQD30v1rjiteB9CWHMfgy+pNNIetQjCCNVjkxMvTlKVPhwf1qaP4W0IfNlri
	diIm3KZkiu7NytUWEejTEckHAk/iP+49JLNUVukrD7J9Pir6QFqOYN9G4NjohQrzLQgSN0jfpzj87
	Q7TMdwVCTzPI/xFE0edY/3NhcINgFRZGG/boftmF06DfxV5hTWxBl1IV55/t867hhhnEbqQaA79Lp
	IIu8Y0s6DZGd1T0vvfNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noof9-007erx-9M; Wed, 11 May 2022 15:54:07 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nooev-007ejy-AQ; Wed, 11 May 2022 15:53:54 +0000
Received: by mail-ej1-x62a.google.com with SMTP id l18so4935509ejc.7;
 Wed, 11 May 2022 08:53:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3fg5Nzjhs3fr5rSwk6Iz/2XPkRGYgF2tY/d4ceMcAoM=;
 b=YcB+oMZTgmuRzalJJyIxDg7S8mCjfLNaBcjTjI6H/O/9pBVI5JZAcGOM4KgIdk/psE
 29sA0AHei/DQ7FaqWxRmy18uOoSk4AAqHkcWqr1+NWKejifLM7u7Sa9LyoLudIvPzJrv
 o4EVHDilSgpS1K7VMpEMdc43NqMGWwY949pvQOgmDCJdymeVAot+bs2YsVMBOG58H6vY
 H9NrLiLDwQmmi3TbZhTk/BMhEg0ubePrb2+U6O025RuUXpdXOuwSqmZUiQ3We2RNXPnj
 9yslpZQ+sYoP6AdE26hlXlCG28K2+Praw+OpWVUnMs5S+EZDhFX9F1rMZLhau+CoSsbQ
 NPUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3fg5Nzjhs3fr5rSwk6Iz/2XPkRGYgF2tY/d4ceMcAoM=;
 b=lOwQYZ+j4xmU94nj+nXjWBu9ugOa7o/JuFfjaHLWuBz0/n4FtSmPdZqDCh1TgxyNzk
 qgCDA4+SUBvq7EztmAxX57SDdLCk5U2DbJnu9830Mr/lv08khCUBLdS+kCNwsZuAzQhO
 d1A3UjAaf7lgSEbO6QRJFoucIUMXGHXTSdWxOxQD/7NkvvJVLrR8MqqM4gQhxbLB5tNr
 qu/sscSEwkkX2JQ5ViJA+3HUj3VH470VBZQ+iXDo1rOEl6LWY3nRfIfBTNvHJYfYONRS
 6HO/u0Y0qoGIT3z/dyOsmkPES18cq0slIBzcW0npy9Ffm3KMI01Zae5uZKMWrtm9+yNn
 k75g==
X-Gm-Message-State: AOAM533D5mJpb34Le8kK4g6MYYdYvM2Svs8hjGU7s/hlWSPQEFudeaT8
 pO59fFx1JgK2iqW3fCmn2Mfz2MzkFcut2A==
X-Google-Smtp-Source: ABdhPJybtTb4hy/yCAfASXiU8rK4aH8rB3XXtZigSeku4xIBcXrFT2uAPQURviyW/zkQezUOEjlnCQ==
X-Received: by 2002:a17:906:e9b:b0:6f3:cfcc:922e with SMTP id
 p27-20020a1709060e9b00b006f3cfcc922emr24996863ejf.346.1652284431371; 
 Wed, 11 May 2022 08:53:51 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84]) by smtp.gmail.com with ESMTPSA id
 fb21-20020a1709073a1500b006f3ef214e1fsm1072458ejc.133.2022.05.11.08.53.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 May 2022 08:53:50 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/3] arm64: dts: rockchip: Add Hantro encoder node to rk356x
Date: Wed, 11 May 2022 17:53:08 +0200
Message-Id: <20220511155309.2637-4-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220511155309.2637-1-frattaroli.nicolas@gmail.com>
References: <20220511155309.2637-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_085353_400090_8AE0A601 
X-CRM114-Status: GOOD (  12.72  )
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

The RK3566 and RK3568 come with a dedicated Hantro instance solely for
encoding. This patch adds a node for this to the device tree, along with
a node for its MMU.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 7cdef800cb3c..2e3c9e1887e3 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -508,6 +508,27 @@ gpu: gpu@fde60000 {
 		status = "disabled";
 	};
 
+	vepu: video-codec@fdee0000 {
+		compatible = "rockchip,rk3568-vepu";
+		reg = <0x0 0xfdee0000 0x0 0x800>;
+		interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "vepu";
+		clocks = <&cru ACLK_JENC>, <&cru HCLK_JENC>;
+		clock-names = "aclk", "hclk";
+		iommus = <&vepu_mmu>;
+		power-domains = <&power RK3568_PD_RGA>;
+	};
+
+	vepu_mmu: iommu@fdee0800 {
+		compatible = "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdee0800 0x0 0x40>;
+		interrupts = <GIC_SPI 63 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_JENC>, <&cru HCLK_JENC>;
+		clock-names = "aclk", "iface";
+		power-domains = <&power RK3568_PD_RGA>;
+		#iommu-cells = <0>;
+	};
+
 	sdmmc2: mmc@fe000000 {
 		compatible = "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xfe000000 0x0 0x4000>;
-- 
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
