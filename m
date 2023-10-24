Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48ECEC07545
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Oct 2023 15:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QtNsTReg90RETT44qXixh/hK2KqIXC7AnA1FDiRaxHM=; b=zCpe1XB81+u8O1
	Acyutg+m7ySthIe3MFLXmSXFzp5tZ4lX8+xE7LIRvVbSVSwjS6/WnWVGdGXihiHXPJLbIYWHVSiCe
	MCbRE0rZSBcGyppPpE7XYAlN62O0s0ulBuJ3E4wPiXIilT/xy+1tR2bnTIJ79LeGRZep+4ds8tyLN
	3ycaF8iY6SKQIBIEFgJgIuDrbH5+huwjqq6jUEndmguvT1iRjjwXzvIUqHH4oYQDn9yNFvSmwH7YG
	ik0EglQFws0gEBgHFGv++VKCKC5QXhAxppvC3L7A7aMyBsB0RCNlueISJA+ToZXpbq0zKEhZNa7l0
	2kZtPzZGE8WwChhqW+8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvJ5Z-00ADiK-1z;
	Tue, 24 Oct 2023 15:13:01 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvJ5S-00ADfY-2Z;
	Tue, 24 Oct 2023 15:12:59 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-507a0907896so6838170e87.2;
        Tue, 24 Oct 2023 08:12:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698160373; x=1698765173;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fs5BWqZ4KWd4eF9fOCTK8GAB1nXsPd0oZ+/iEQRlIeA=;
        b=PDqWY+za9FMKx1oJCjDcMhadxKqbDnu5MkOrZaiGWqABM7KnJgSREIMIxaYGldzsFk
         Z78ticVj9kKRgJsmaH6RImmMPjoZYlwIyXtwoVocQy95Ojh0CdCFV4Eu4JPbPTF3uiST
         I6IwzvLq+4+xZDHeZ+3O8Q+NqZ+AWVPBhcTEd/uwN9IplZ1oqPX0VbAYYYHiRNLEelQq
         06A0+CICZV7jgiUCL8wzhHhR1/uTaIYpilNRLsyzHqxSJ6ItEekXQ1uR3k61adNLzGFk
         ZaJ+aTYncVEiBBh8M1GBwTmRK7vEdXh83jNxkflOnl7OEzLd1T1MThmA05E+VC5Yp0MK
         dw9Q==
X-Gm-Message-State: AOJu0YwGPqTGmfGdyjEvA75WmwLfVrPSR3wV11tbN947DezjHX+PBqqc
	7ccqbGFUayizslg5YKFC1W1HCfLkYGhLRg==
X-Google-Smtp-Source: AGHT+IElQIcLeW05x/jdLDGam56xjtaINRHgX9059f3IAHt2r8zQHVfJzJrzB1aTmSAtrXe5ECPJWw==
X-Received: by 2002:a05:6512:2085:b0:505:7896:18de with SMTP id t5-20020a056512208500b00505789618demr8578526lfr.45.1698160373200;
        Tue, 24 Oct 2023 08:12:53 -0700 (PDT)
Received: from flawful.org (c-f5f0e255.011-101-6d6c6d3.bbcust.telenor.se. [85.226.240.245])
        by smtp.gmail.com with ESMTPSA id k16-20020ac24f10000000b00507c5216aeasm2170277lfr.263.2023.10.24.08.12.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 08:12:52 -0700 (PDT)
Received: by flawful.org (Postfix, from userid 112)
	id BAA1F1646; Tue, 24 Oct 2023 17:12:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1698160371; bh=ErqCJiP8U44ISh4Im9EcpFWgOzEosEpfBHoDJ+9Kgdw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=a6XTnA0RrJtadaLvr5GHrTZu9Fm+nIAvpOL2VT9a4z4fPnNArrlfrMRw12unO3Hzr
	 RYDsnEXTcCy5C88zZBy/gCoaC/5uc99EcPOGovnMDjAnj3pBnshJQb6ZerWVqRiLdb
	 ewHQJ6PasJO2zPzj0Z+GLrCsdktzJdTdcJcqdtjI=
Received: from x1-carbon.lan (OpenWrt.lan [192.168.1.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by flawful.org (Postfix) with ESMTPSA id 14D5015E1;
	Tue, 24 Oct 2023 17:10:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1698160247; bh=ErqCJiP8U44ISh4Im9EcpFWgOzEosEpfBHoDJ+9Kgdw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YPetIezbIGPz/6ySQtofIO1XKUtjvcIGK/RwOaRqbMiPAspV+G+wA19XlHTfwKvMH
	 k/lMSgd2DckEIDOIiVS1bMBWcP7XbW5zAbz7sqw9MpjZnpQqKtAbhr90knfA8lZo0u
	 s9tgKPeOxCbawAWwZVFr7XzoLGyJVZHmuyY/0MeQ=
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
Subject: [PATCH v2 4/4] arm64: dts: rockchip: add missing rk3588 PCIe dma properties
Date: Tue, 24 Oct 2023 17:10:11 +0200
Message-ID: <20231024151014.240695-5-nks@flawful.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231024151014.240695-1-nks@flawful.org>
References: <20231024151014.240695-1-nks@flawful.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231024_081254_834448_D8D5FCE4 
X-CRM114-Status: GOOD (  13.85  )
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
