Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2706FC7619A
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Apr 2023 09:51:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lSKsWsIEvgwTWHW7xajXyEupeTK2z9TDeRNcncQPkc8=; b=z4gJsOL/20qEEJ
	NbG2qzTyZcpAzZL9EGZFMDdXBUBXYXPadLLJ/eMmWHmIqFp4JdC8LvymI2yUhOypT59cP+fiz5Qz8
	4fZsqliT2ocPnNT1OxSa0h1DdGXtI7cg8/zl6pM0jGm6ofYcm3UP6sh9PSUBf8SinjDeYK2K/wgYY
	0vahIARjICZ+DoSYIxH7f/RWQnhM5/EMPWr8bO4lNIHqI9j5B3VjDI0KqE23cXqBOhD3T783aV7a2
	vuaWEiVWclYByjXc/PFSB7Ebzl2vo8s88F0x0mqkvc1/OwTeAxgo2i8/oaMhIK1b+Ag2dO7voYDJc
	y8OJcPOOifYeL1F4lJVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piuMj-00CBvw-0z;
	Sun, 02 Apr 2023 09:51:13 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piuMd-00CBry-1a;
	Sun, 02 Apr 2023 09:51:08 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AA5BE660313D;
	Sun,  2 Apr 2023 10:51:05 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680429065;
	bh=otwKTZ+LUzkWr51HoDAAyTXvgoa041tRNRUmqfxmfo4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DpvJMONWIUvQWf/Pz9uUmvEgABMS/2S1rppOj3+jUUu39V/rxYeVArTa5QS46wSpd
	 I0m6Lz60eeCxZ3/lP3LNl5lRLSEwa18qlhLe0NW/JiL+fIfREKsF6x/xrWcI7AsWHt
	 ROV6ZYdp9OVgx8AN2hhdEneFJHqQ8X7tqHLNPkpNRZoMZUqBXevDS5Sw2e1il/LI3X
	 rZyyHWa7zIzAVAXtYVTOMCpT0GvdutwRXbEw2wveUj7voH8ZTuE8SxCMHS/RMucY28
	 wToN5ELgGariQp6SHSaT3874opD0gZUJ+WurAoZgYGLgR4iVYIO9nrpPt/46JrWB9s
	 bj/fVoSisjGLA==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Kever Yang <kever.yang@rock-chips.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v4 2/5] arm64: dts: rockchip: rk3588s: Assign PLL_PPLL clock rate to 1.1 GHz
Date: Sun,  2 Apr 2023 12:50:51 +0300
Message-Id: <20230402095054.384739-3-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230402095054.384739-1-cristian.ciocaltea@collabora.com>
References: <20230402095054.384739-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230402_025107_657306_7932D355 
X-CRM114-Status: GOOD (  11.30  )
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

The clock rate for PLL_PPLL has been wrongly initialized to 100 MHz
instead of 1.1 GHz. Fix it.

Fixes: c9211fa2602b ("arm64: dts: rockchip: Add base DT for rk3588 SoC")
Reported-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 028dc62f63ce..e3546cfacc88 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -425,7 +425,7 @@ cru: clock-controller@fd7c0000 {
 			<&cru ACLK_BUS_ROOT>, <&cru CLK_150M_SRC>,
 			<&cru CLK_GPU>;
 		assigned-clock-rates =
-			<100000000>, <786432000>,
+			<1100000000>, <786432000>,
 			<850000000>, <1188000000>,
 			<702000000>,
 			<400000000>, <500000000>,
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
