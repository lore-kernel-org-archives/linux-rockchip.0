Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 884B8C369D1
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Apr 2025 10:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9qwYplvQdKN6gngncm3aFa/8VawK9glxYeD5htDVR50=; b=hpncVYDctR6hcH
	750yxzbRQYltWZaoIQ58R/vgwB31JBhGPyHOEAjk2lkE1G5G+gD7M8jwiNdFMBTeq5l9Ybr8pV102
	az8Q+7FGlCQrhpbNLCjzUhqwDVDMf3iAP+/Gs1g5p6Vta7Ms9g5hO66QEsaWK9/cuc3dUEBU3QeXo
	5PgZJg6Xcw7puY/yt1HpRhx478p8xfdix3z0YAuDmimfzVeloNx0PI92Em1UO57kYa81k2+4HzD3y
	fG3G0BDMCjxWvSVOdwCYUo2Q6wqUUTl/BCFlJQC3KBk57Js4lyrweiW95QodTnjHwTKOrKF3f5SPJ
	XN2kKKZ0LIeoOpMxKlYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8G52-0000000GgwL-2xCl;
	Fri, 25 Apr 2025 10:14:48 +0000
Received: from out-181.mta0.migadu.com ([2001:41d0:1004:224b::b5])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8FKK-0000000GXD7-1pJ5
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Apr 2025 09:26:33 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1745573189;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8IWFeZwQkKxKDNc32b6AQqa8Tbi3kqSkUWXHW/RB4xQ=;
	b=bvGmNe8WywhaYqVBAc60FF65NJltCetdn45FTsqiGHTawpD83xmIccx1HDuMIWO422PudS
	W8gEtY6zLaoi/ndbRSwl2eKtGbjZJ+4pZVFDhvfu4OlsqeaJXPEa/SNsXuU1wF0jPlTL8w
	GoFg8PldKlrGcFUf97TPFhaGFjmxazLKlqdthMljYv2adSmBSMcRe7BXVkmNS1gAzSYIUu
	8Qftpj18dvKi2px1HdAlYOwEfU5jppXUGG+FbPhr1b3KE3RU+i9vqRFM4WRjlCxR9TAYe3
	GQZ/F7zTEhATo4fAY1kE6ZPA3Rgq2yLIAgN4glzpJfKg+p4dGncJVelOI4u4fg==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 1/4] arm64: dts: rockchip: Add vcc-supply to SPI flash on rk3328-rock64
Date: Fri, 25 Apr 2025 10:44:41 +0200
Message-ID: <20250425092601.56549-2-didi.debian@cknow.org>
In-Reply-To: <20250425092601.56549-1-didi.debian@cknow.org>
References: <20250425092601.56549-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250425_022632_609288_DF4ABA87 
X-CRM114-Status: UNSURE (   8.65  )
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

As described on page 6 of the Rock64 schematics for both v2.0 and v3.0
the SPI Flash's VCC connector is connected to the VCC_IO power source.

This fixes the following warning:

  spi-nor spi0.0: supply vcc not found, using dummy regulator

Fixes: e7f4e924f46d ("dt-bindings: mtd: jedec,spi-nor: add optional vcc-supply")
Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index e550b6eeeff3..5367e5fa9232 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -343,6 +343,7 @@ flash@0 {
 
 		/* maximum speed for Rockchip SPI */
 		spi-max-frequency = <50000000>;
+		vcc-supply = <&vcc_io>;
 	};
 };
 
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
