Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C626DC369C2
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Apr 2025 10:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=axA0W7WyTtO+7UtY+0XgoMgJegHT4h/o/ob49X5ICZQ=; b=nUx+6eiCtV5IFP
	yf1CsMpYr6RrxYlY3yjUi2rJ8O7wxVej8lggTGCGOxraE10d4H+hmoa/YXHhHxP9JIbE5YnHF5hH9
	wsCRdaVmql+ouLHZe3N0j/DE5CJj92J78Drg0vFozL0/hvqR2wpQ7TWDnjakRikp9zHgHApQOacFj
	FpheKIx45v+Bnwl3X5JRDhVoKfApzMU6TCYsxpGWwy8L7KoXRWgSFePQVAkw5hnY79hvCC37X27Fd
	goOUVxfHqTO5C+BGdVUwUa41ek+HifP31NZYIzU3k/oOsAXlAdkhPQ1ozg9HmSrBil3MrkNWVQUbX
	5EqeL5PafKsAauarfoqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8G5O-0000000Gh6C-35I8;
	Fri, 25 Apr 2025 10:15:10 +0000
Received: from out-173.mta0.migadu.com ([2001:41d0:1004:224b::ad])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8FKT-0000000GXFp-1j3Q
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Apr 2025 09:26:42 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1745573199;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ahh+yK53sLvW3MEUdC7MxK8tfSXmwwVwKVWlt8YQ5zc=;
	b=XkbbbFs7uTmSV9FAemeiLpf9+0tATe4g7bK4bWySVhkNoXV9RvWhjk9Ja8/2ClWJGP3hdB
	YJJnO2D7/llOFrPIepAqYe1XNsuM0Pcr0QuBaZiNRsIHKDpTOW90BBm5tPdmHEUgRjwC5x
	RTAlRExplX457PkviW5AvORooTo9tAwNS87X98MITNvxbt+unT5ApsLHs3h9m6xs0cysM8
	rx2fMewJ1jw2vSVsFdfG9f+XmDtNhALmdWeAxtPLIaKjgOLxKCatMK1kDpzh+fXEJysYO4
	uZCUAkwKbjcaSy6ezlDZcrV7DQmK+9+DLTLhyZ+QO9NAQ6kddQDgLilI6ayruQ==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 3/4] arm64: dts: rockchip: Add vcc-supply to SPI flash on rk3566-pinetab2
Date: Fri, 25 Apr 2025 10:44:43 +0200
Message-ID: <20250425092601.56549-4-didi.debian@cknow.org>
In-Reply-To: <20250425092601.56549-1-didi.debian@cknow.org>
References: <20250425092601.56549-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250425_022641_581042_C7E82BFF 
X-CRM114-Status: UNSURE (   8.53  )
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
Cc: Detlev Casanova <detlev.casanova@collabora.com>, Diederik de Haas <didi.debian@cknow.org>, devicetree@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Dang Huynh <danct12@riseup.net>, Johan Jonker <jbx6244@gmail.com>, Dragan Simic <dsimic@manjaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

As described on page 37 of PineTab2 Schematic-20230417, the SPI Flash's
VCC connector is connected to VCCIO_FLASH and according to page 6 of
that same schematic, that belongs to the VCC_1V8 power source.

This fixes the following warning:

  spi-nor spi4.0: supply vcc not found, using dummy regulator

Fixes: e7f4e924f46d ("dt-bindings: mtd: jedec,spi-nor: add optional vcc-supply")
Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
index 26cf765a7297..3473b1eef5cd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
@@ -867,6 +867,7 @@ flash@0 {
 		spi-max-frequency = <100000000>;
 		spi-rx-bus-width = <2>;
 		spi-tx-bus-width = <1>;
+		vcc-supply = <&vcc_1v8>;
 	};
 };
 
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
