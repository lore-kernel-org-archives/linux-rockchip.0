Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB851C54FB3
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 May 2025 16:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B0g+QoQC51PARAAFlQD1IpKmXKrbcOE3yQiEmjwEmRw=; b=V1oTNZgjJlfnZE
	2Pgim3ChL1F0cqbKV51sTAg5Lg5Ykd0rRDyaULW6Zs9G6kQFMbHqbw8KZL7vAIf4kV3jmyk7lVVJ8
	g96pnfesoqByiJTJ8JsPLkvmOo+nfDVThiZrahjUx/KtxwGBPU2Cn9IPMLSNaMNbri0V8t3BjEqXG
	0jMhHnrpzUlFOzvrlV4UBl54KWWb0tkFB5XVUrO0NpejmyhIa0hVSLME40VwlkcdXC1hpH/u9VZy+
	3uUZyRH46xC+s+X/WaaXZYxf0bqYYVQI1KaIx1PBb7zVk1LjDRx3Wo3FHv9lLIgOacH0d2y5MRgvv
	OYaywzx0mTiw2ccKi+PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJaUB-00000009DB4-2IQt;
	Mon, 26 May 2025 16:15:35 +0000
Received: from out-171.mta0.migadu.com ([2001:41d0:1004:224b::ab])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJaU8-00000009D8r-3AfJ
	for linux-rockchip@lists.infradead.org;
	Mon, 26 May 2025 16:15:34 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1748276116;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=JafaCAGJGUzONesEsTwK7Fp4cbryqbnxv96ud7slC/o=;
	b=EaOgnIe2JbKBWXb5SWzSwqUTKqR+L7PNAjxIqpGlvjgLDlj1hbA82saH6+gN5BHl8vxVHk
	rUFh/sJ9pdxYXskigNRqSi1k4727NOLgFWp6QkuVLkn8AKOIq6MRUf+t8I3ZheJKrLeOQh
	852T8FRJzmP4VsY2PMGScf1V1HSO8obJzvFlflc3QzZUekB2jKjSrzWD58LEObJ1HEimlS
	OouE/t5t7CZwR/mESHouvXUoF3zRMXaT5QrwbZqpomC4xbTqB7QT6+lt6yoNwncQWUeE3V
	GuaUGnpp/b8C78+IrXOA2C/4bPfub3KWCC8IQZLNqLibLt90ew0y7C08B2J4Mw==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Maximilian Weigand <mweigand@mweigand.net>,
	Marek Kraus <gamiee@pine64.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>,
	hrdl <git@hrdl.eu>,
	phantomas <phantomas@phantomas.xyz>
Subject: [PATCH] arm64: dts: rockchip: Fix cover detection on PineNote
Date: Mon, 26 May 2025 18:14:47 +0200
Message-ID: <20250526161506.139028-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_091532_942648_4AD179B3 
X-CRM114-Status: UNSURE (   9.31  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The SW_MACHINE_COVER switch event was added to input event codes to
detect the removal of the back cover of the N900.
But on the PineNote its purpose is to detect when the front cover gets
closed, just like when a laptop lid is closed. Therefore SW_LID is the
appropriate linux code and not SW_MACHINE_COVER.

Reported-by: hrdl <git@hrdl.eu>
Helped-by: phantomas <phantomas@phantomas.xyz>
Link: https://lore.kernel.org/r/270f27c9-afd6-171d-7dce-fe1d71dd8f9a@wizzup.org/
Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
index 3613661417b2..5c6f8cc401c9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
@@ -55,7 +55,7 @@ switch-cover {
 			label = "cover";
 			gpios = <&gpio0 RK_PC7 GPIO_ACTIVE_LOW>;
 			linux,input-type = <EV_SW>;
-			linux,code = <SW_MACHINE_COVER>;
+			linux,code = <SW_LID>;
 			linux,can-disable;
 			wakeup-event-action = <EV_ACT_DEASSERTED>;
 			wakeup-source;
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
