Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A890C44506
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jul 2026 17:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wOFb4hEBA3WSwgNaLbRv/1AkvetUUy2nuOv+e+YPQT0=; b=q2oPypmJpRoHyE
	2Zu+B+Vq5XqA7Aq2K+ALriczFQ6yYX1sw4wOyAGoKwY5xj/tc6eT12jvsNgI3s9PEyW/1PCpFZii2
	td1T6cgTpdN5AFNjyPsEoRaj3goPowqWiCFY6kEhWOgb6Rbff4QtI50v0DCJUj1pKom5Vnh61o9F8
	nOiQdZ9TZZXH25O7LrfhaPyXUw5xIZxUvwrvGyWL/mXZBGP9/NBUihgkEXsb0FNWfE60fFDIlmWau
	17fu3olOvyOL17mO6XgLOHKDtz0ZRkj9CbJDa8XR0RQq5QkwnBA9pYSK28ewIH+u+eLLoyZ6uBz2w
	4d60mkqnmbGS/U1vAgMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whWYI-000000008vN-47VV;
	Wed, 08 Jul 2026 17:59:18 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whWYH-000000008sU-15ff
	for linux-rockchip@lists.infradead.org;
	Wed, 08 Jul 2026 17:59:18 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-c15c7c07a57so158613566b.1
        for <linux-rockchip@lists.infradead.org>; Wed, 08 Jul 2026 10:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783533555; x=1784138355; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=h3RbPrXYdQbVWUvs+F9bureO/gAjNoSjgQ1E6c4QgBI=;
        b=iu0b2Wb/EBlzS7nYtGj9VMNvcO7ASTASRrx6XGGIA/kJ5NL0kAII+1nVOproJ8imJi
         GZyEPu8lM+ufa/3di6QZC3eTVvz1UrMiEvkhQKspF0NCCCd/WSEBSZmYJC0JQGKcIFzI
         VmQUThCIuFXd8cBEniYNXafzTILVS//sucVvAsHNkICalVizTVTwkfN6Y8yAzLZOAQeR
         NCmp0wsnAm7zZTuvh/M//CzsHNrAdsvt3khbEVZDDDpvNESiLOynwOB00jevkpp08zLL
         N6Huuc1EYKmkADghAai+L9m6z3tjyjHfKIt/fi3sOrtqtMdT2y9fpG805xKSAYU+pVL6
         6SZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783533555; x=1784138355;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=h3RbPrXYdQbVWUvs+F9bureO/gAjNoSjgQ1E6c4QgBI=;
        b=qA/MsPryYLgXJnEe7WQzt2VwF/7bRNOpnFtNHOJ2bRexTeZTG7Yl4YCdng4p4ORmrW
         lBfAfWbXKHFg1gxWwTVU8Ap+Mbb7SCL5vGRd9BMvfhD2oaHQXEdrSMVtkBDlG95lW3Rl
         uwRjv5vSwS5v8zJb0FAQkXpoUkk2XoXD+Lu/ZgelwncU8Gcen+87YhmsJKegy8gsWHLS
         IJDAtAv582X9CI0quDJGx01kZSTVEVG75JbQfmNIYxLMUeHMRMqXesh7cebraILBPI0P
         60/O6lpxnz3/s6NHZQUuD971klDPgOW4/QeGFGAAvYqvze44ptx1zW5zJCbWjZm8A8Pp
         Sw2Q==
X-Forwarded-Encrypted: i=1; AHgh+RqRd4g47hUDsJPXDIskbz82YNVpgOa7vyHA2hn4m1pB1UkxvsJfsJRoVH0bWayTowZDgJ7fLUCCAvV27ZR37g==@lists.infradead.org
X-Gm-Message-State: AOJu0YyVDheg5SXhqk9Md1IMqtigmVOpA2soMEVh1MKY3omxLzEFcwt4
	T3rZFma9zL4tYjNyaCeG1u0OQ3mFw51dqRJrA4g+hMtEAY41+h7azbsw
X-Gm-Gg: AfdE7ckInHQE1mnIpgnA0Y3Y+51T0u8jJDbijUaD0XNiEiW0sKzfsM712E0xmr5jR3F
	oNZFGKJ7V/NYW82aQJVRDDa6RyuzGkQkeg4K+2eLTnLF0t+gWiivDtbbkdtDorVEw5cG0Rir4LO
	Ri06teqdgfCZVfcTlmNT6jyYEqR+JbRZBvQS74Vvw4AcXT3bCtLMvt+oOCwW9nOXh0XnOTDWlXN
	+vxXWggK8yjCiak29OqAxXzb4qF5mU/N4bVG9BJlibWOXeA9IXV4lvuYYwGoV/UCFYzom+s5k9y
	J9iAiHoEz2zFoS9Dn8byRa15RHI+sfpdxgLS3UAy9SJe7BzwkLGcte1KJoEiGsUEuB4XeKT+GSE
	PRSmNuRqndONUR68Q6VaAXmYVI46bZDoB8mp2N+ExtFt9EHI2Hflva5i0Qy4n1eCrTcaEhCwLrK
	omZRLywDqUhGi/70nO
X-Received: by 2002:a17:907:3f18:b0:c11:f4d6:48fc with SMTP id a640c23a62f3a-c15ce1c331cmr188941466b.45.1783533555363;
        Wed, 08 Jul 2026 10:59:15 -0700 (PDT)
Received: from olympus.. ([2a0a:ef40:ea3:3f01:2e0:4cff:fe68:285])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c15ad9bcc26sm357653666b.34.2026.07.08.10.59.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 10:59:14 -0700 (PDT)
From: Dawid Olesinski <dawidro@gmail.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
	"David S . Miller" <davem@davemloft.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Corentin Labbe <clabbe@baylibre.com>,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dawid Olesinski <dawidro@gmail.com>
Subject: [PATCH v2 4/4] arm64: dts: rockchip: Add crypto node to rk3588-base
Date: Wed,  8 Jul 2026 18:58:25 +0100
Message-ID: <20260708175837.1718437-5-dawidro@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260708175837.1718437-1-dawidro@gmail.com>
References: <20260708175837.1718437-1-dawidro@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_105917_316300_39E35D76 
X-CRM114-Status: GOOD (  12.93  )
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

Add the device tree node for the V2 cryptographic hardware accelerator
on RK3588.

On RK3588 the crypto IP sits inside the secure domain controlled by
SECURECRU, a register bank that is exclusively accessible to the
TrustZone firmware (TF-A). Linux must therefore obtain its clocks and
reset line through the ARM SCMI interface provided by the firmware
rather than mapping the CRU registers directly. Attempting direct MMIO
access to SECURECRU from the non-secure world triggers an asynchronous
bus fault.

The interrupt uses the four-cell GICv3 format as required by the RK3588
GIC node definition (the fourth cell is the CPU affinity/partition
specifier; 0 means no affinity constraint).

The node is disabled by default; board files that wish to use hardware
crypto offload must enable it.

Signed-off-by: Dawid Olesinski <dawidro@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index fc1fdbfd3162..a7560b09aeb6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -2447,6 +2447,18 @@ sdhci: mmc@fe2e0000 {
 		status = "disabled";
 	};
 
+	crypto: crypto@fe370000 {
+		compatible = "rockchip,rk3588-crypto";
+		reg = <0x0 0xfe370000 0x0 0x2000>;
+		interrupts = <GIC_SPI 209 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&scmi_clk SCMI_CRYPTO_CORE>, <&scmi_clk SCMI_ACLK_SECURE_NS>,
+			 <&scmi_clk SCMI_HCLK_SECURE_NS>;
+		clock-names = "core", "aclk", "hclk";
+		resets = <&scmi_reset SCMI_SRST_CRYPTO_CORE>;
+		reset-names = "core";
+		status = "disabled";
+	};
+
 	rng@fe378000 {
 		compatible = "rockchip,rk3588-rng";
 		reg = <0x0 0xfe378000 0x0 0x200>;
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
