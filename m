Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9FE6C001DF
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Oct 2023 22:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CmQoG32PnMzUaZQSiVPFcn4/RQBSDthrXXyPjMS74Vc=; b=yOVfVeewaUSUoR
	mxGcpupdDBuPPEcIV7NXD7zPxxlkgx6pziWdMEFZ1fs2Y8+OAUWe+SEdHIymT71TDAutqcsmGQSP6
	qyDP7WmSFblOVoq1vRwnAO0c8BcpbBgoIMa0tPabYMgKOA+SxDTubD7k+TXh+auII3ZpAEMpQdENG
	5iyaa49RZH92E+c1JB7FmcCyoHxxI8HQ6/YFEg3hgrrry4oCkJf/09lk0/X847mPnPKpF2Xn33n7U
	YrAYyT2wyoL5ht+8Wf7AdSj3JCCsirhJ3MjzNp6To11Z1EmGJCRu3mz6l0LRyTatFeBHxTTP2PF9s
	c3+ul65X/9gusDlohegg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtyEg-0038fT-2L;
	Fri, 20 Oct 2023 22:44:54 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtyEZ-0038eh-0j;
	Fri, 20 Oct 2023 22:44:51 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-5079f6efd64so1812733e87.2;
        Fri, 20 Oct 2023 15:44:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697841884; x=1698446684;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-signature:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hOWDIY6nzbPN7SfSuuu/ehG8xBxls07tFimOVKc/JDQ=;
        b=oUjDF69UsiQ3vqG6gbuhbRoClQWgXNvBxF2Tcks4UczCYuiK47xntzIzLgYb7QX8eV
         hhBfX9i0Ok8d4zyW860xYVV61VdDAj+5iLXjrQj5lJGkb8rXGvox44SwD8ej0CxjcZpB
         rS4lHvIKufoS+sk9VvcX3QY3sZe1C3rrYPnFyDhRriTHuqqM1bkxnVD5PpDEFEZTy52C
         E+eGdWAtCClcm/J8bmA0vdZhsaHKgI2jDKHOC32Gc4LzgGWnK5X2HtVPnmwCEZ6Gzsgc
         Fs2NdC1WnK3jePCD+KmUGIihaDf5ZDFztcrEMwEz5SQnsBfHpydbKvwLEO6liWvLZqlu
         d/fw==
X-Gm-Message-State: AOJu0Yw1KYE9V1FnbUpDzKNvp64p3y4qRoJs6BXIVCveIZEExvBbiWeK
	9fInCE3dJMW8HMgbhYWNONdvw5n2ItB64w==
X-Google-Smtp-Source: AGHT+IFOhtKFmTN76Ys/LH0wjuFNH8bb1b2JNupuFIPcnNij1b7oICCdqkmBx8PZU1C+klqz+w4BrA==
X-Received: by 2002:ac2:46c2:0:b0:502:cc8d:f206 with SMTP id p2-20020ac246c2000000b00502cc8df206mr2121435lfo.23.1697841883638;
        Fri, 20 Oct 2023 15:44:43 -0700 (PDT)
Received: from flawful.org (c-f5f0e255.011-101-6d6c6d3.bbcust.telenor.se. [85.226.240.245])
        by smtp.gmail.com with ESMTPSA id l6-20020ac24a86000000b004fdbb36a677sm561050lfp.288.2023.10.20.15.44.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 15:44:43 -0700 (PDT)
Received: by flawful.org (Postfix, from userid 112)
	id 6F7171372; Sat, 21 Oct 2023 00:44:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1697841882; bh=xZk22towdhIlWka7yL48w/UBUdZHB6iALebFJYrh2C4=;
	h=From:To:Cc:Subject:Date:From;
	b=GJ/XjNAWXeaZz/+Cusg+WfCY5BmF9UGUHYmp8ty6OEZ/j2HknVGg+0vauCiBNlYDB
	 9KD2Z0Ocaka/zTjBpqsO9h0CXduK1z1Q304hpkWeUESSASg6P/iHv1E0d5IKPHMKBY
	 OoDIp56G3J66WTOXWhSDQDKXzvhSBsTTGoTYqiic=
Received: from x1-carbon.lan (OpenWrt.lan [192.168.1.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by flawful.org (Postfix) with ESMTPSA id 72BAF746;
	Sat, 21 Oct 2023 00:44:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1697841865; bh=xZk22towdhIlWka7yL48w/UBUdZHB6iALebFJYrh2C4=;
	h=From:To:Cc:Subject:Date:From;
	b=gpGvhK4daOW8V5aafvKYcGum+3fxow84CUMaqOea/yLJBjs6e5zAKYVRwTPH7ZNmZ
	 yfqzb9bfFi8i06UN2CWZk5jDO87rqudIzSFQobWkzfX6iNQrsXmkU1D+K8nDL/mCR2
	 0k0WZeEnfYQdz3TB0b0I8mHz9r2NfjThNlowAxwc=
From: Niklas Cassel <nks@flawful.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Niklas Cassel <niklas.cassel@wdc.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: add missing rk3588 PCIe dma properties
Date: Sat, 21 Oct 2023 00:44:11 +0200
Message-ID: <20231020224412.3722784-1-nks@flawful.org>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_154447_883499_BCE33E85 
X-CRM114-Status: GOOD (  13.73  )
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

From: Niklas Cassel <niklas.cassel@wdc.com>

The rk3588 has 5 PCIe controllers, however, according the the rk3588 TRM
(Technical Reference Manual), only pcie3x4 supports the embedded DMA
controller (eDMA) on the DWC PCIe controller.

The size of the eDMA region equals to:
0x200 + MAX(NUM_DMA_RD_CHAN, NUM_DMA_WR_CHAN) * 0x200.

Where for each 0x200 region, the registers controlling the write channel
starts at offset 0x0, and the registers controlling the read channel
starts at offset 0x100.

pcie3x4 has two DMA read channels and two DMA write channels,
so it has size: 0x200 + max(2, 2) * 0x200 = 0x600

On the rk3588 based rock-5b board, when building with CONFIG_DW_EDMA=y:
Before this patch, only the iATUs are detected:
rockchip-dw-pcie a40000000.pcie: iATU: unroll T, 16 ob, 16 ib, align 64K, limit 8G

After this patch, both the iATUs and the eDMA channels are detected:
rockchip-dw-pcie a40000000.pcie: iATU: unroll T, 16 ob, 16 ib, align 64K, limit 8G
rockchip-dw-pcie a40000000.pcie: eDMA: unroll T, 2 wr, 2 rd

Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
---
Note: this patch depends on:
https://lore.kernel.org/linux-devicetree/20231020125221.3564951-1-nks@flawful.org/

 arch/arm64/boot/dts/rockchip/rk3588.dtsi | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
index d7998a9c0c43..e072f5fe655d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
@@ -101,8 +101,13 @@ pcie3x4: pcie@fe150000 {
 			     <GIC_SPI 262 IRQ_TYPE_LEVEL_HIGH 0>,
 			     <GIC_SPI 261 IRQ_TYPE_LEVEL_HIGH 0>,
 			     <GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH 0>;
-		interrupt-names = "sys", "pmc", "msg", "legacy", "err";
+			     <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 271 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 269 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 270 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "sys", "pmc", "msg", "legacy", "err",
+				  "dma0", "dma1", "dma2", "dma3";
 		#interrupt-cells = <1>;
 		interrupt-map-mask = <0 0 0 7>;
 		interrupt-map = <0 0 0 1 &pcie3x4_intc 0>,
@@ -122,8 +127,9 @@ pcie3x4: pcie@fe150000 {
 		reg = <0xa 0x40000000 0x0 0x00300000>,
 		      <0x0 0xfe150000 0x0 0x00010000>,
 		      <0x0 0xf0000000 0x0 0x00100000>,
-		      <0xa 0x40300000 0x0 0x00002000>;
-		reg-names = "dbi", "apb", "config", "atu";
+		      <0xa 0x40300000 0x0 0x00002000>,
+		      <0xa 0x40380000 0x0 0x00000600>;
+		reg-names = "dbi", "apb", "config", "atu", "dma";
 		resets = <&cru SRST_PCIE0_POWER_UP>, <&cru SRST_P_PCIE0>;
 		reset-names = "pwr", "pipe";
 		status = "disabled";
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
