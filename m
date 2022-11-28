Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91C53C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Nov 2022 18:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vrCELkzGIxJhCbjsLBhqcBWK/+kd9GwXBwU0l9JELrY=; b=bri/DOnlyCDJ1v
	U5lLm8fFXTtTeA189d8KWSwLkKzczBlxZRG+NfZDYrbCwJYoJEJJNd251D5Ps85sDx/njmiIr1Bu8
	v69MBmQ3oLJGbRAgI9hzJ40VSrbXc7sgSZFIBoG58tFfzejiv6Xd3b07pa+cu/Z1/ss2AmxZXHQxw
	/Bqu8QPy+BmDsotXtGX41ZuVaUQudq5vF3FMzFkrKv4OzvmkdjNWN+NeSEfNoE6HjzAa70yMbZw+t
	qCicR77j9ZugLZ0EounAn6I9s0sfTgaqzx7kEK+KOxrdLq5mILqIgYlbRLsA99PGc+7f0V7pM+Ozr
	0BfeZNeQa3IWBNbOSy5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oziee-003Skv-Ir; Mon, 28 Nov 2022 18:14:56 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozi9Q-003B6V-C2; Mon, 28 Nov 2022 17:42:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D99D961302;
	Mon, 28 Nov 2022 17:42:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE534C4347C;
	Mon, 28 Nov 2022 17:42:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669657359;
	bh=FWzkxTY7Q9yvjljt2+FF9uusIg7dT0lFv4zrCzApXgw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NrqO93FWvVDsu2zEJDSCUIwVE1tE4nOejj0hcDHi75b6fmQ5j0tYpsVQWUrcsDJ73
	 sJ3EiiORUh+qIVnnB4h4YAzXOIWkyMJpYdHRPL4xSwXO7vwrbH2ux2Rl2Bg4xvUZX8
	 Pr7hcPKYZRef2IGKr9AoEebmQIpzgjIEGiQXkDcLUJlL7Lu3MduXFNwGm1WS+R00Yz
	 bW/hOYYvwZVBZp5fkGqqrnIPMjWUZKwWU8wYfEmZpkRnbsfKd/djwY+a35FJS/jWKa
	 qEZy34bGm/sH/6sR+1uLqGzfDQEVxuBHXMEHO8/cXRp+lKS8GrXId2lmwQ+deguKqb
	 woah2ZjFsHeiQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Johan Jonker <jbx6244@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 02/12] ARM: dts: rockchip: fix ir-receiver node names
Date: Mon, 28 Nov 2022 12:42:25 -0500
Message-Id: <20221128174235.1442841-2-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221128174235.1442841-1-sashal@kernel.org>
References: <20221128174235.1442841-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_094240_507310_41D401DD 
X-CRM114-Status: GOOD (  11.87  )
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

From: Johan Jonker <jbx6244@gmail.com>

[ Upstream commit dd847fe34cdf1e89afed1af24986359f13082bfb ]

Fix ir-receiver node names on Rockchip boards,
so that they match with regex: '^ir(-receiver)?(@[a-f0-9]+)?$'

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/ea5af279-f44c-afea-023d-bb37f5a0d58d@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rk3188-radxarock.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3188-radxarock.dts b/arch/arm/boot/dts/rk3188-radxarock.dts
index 4a2890618f6f..720d0136f1ab 100644
--- a/arch/arm/boot/dts/rk3188-radxarock.dts
+++ b/arch/arm/boot/dts/rk3188-radxarock.dts
@@ -67,7 +67,7 @@ spdif_out: spdif-out {
 		#sound-dai-cells = <0>;
 	};
 
-	ir_recv: gpio-ir-receiver {
+	ir_recv: ir-receiver {
 		compatible = "gpio-ir-receiver";
 		gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
 		pinctrl-names = "default";
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
