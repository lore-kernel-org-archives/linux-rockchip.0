Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45C31C636CC
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 20:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/DTeVwoquK2UeooLyMbWfl4y29cJV/N4cer8lpKMSc=; b=d5CVxMV1RrtiOa
	6mf8KXhF4Kij5Ft8kHWkhgYB9mSxujwftgU+BhT/14Kk7pLOaNnQPb7YUJgXrjleOCMOTxW9+4cUr
	yZXeYGYxFpHvyIAyYnkTkEB+6L0Ef/fh4ZDpWmu9HTvg51C6XQfryWwYgXsdcdiEAJT6/fSWaaV31
	jKqGL0dhPVD9C+/hwFR54L1jGVhizJxFpjBtZh2PhU1eVhcivQUXRSq89TesZ8De0/qb6kq+A+9Dn
	V60R3cFn+LgEjt6mlGFZI1YM6EH59mjU1PjHIpApDmDtDusoQMYxoW2FlIfFoQT9JgztAtUGe+PcG
	1bHdmTqzg11ah103OkoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOku-007GRN-PI; Wed, 15 Feb 2023 20:51:56 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOg2-007DKZ-Db; Wed, 15 Feb 2023 20:46:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E740F61DA2;
	Wed, 15 Feb 2023 20:46:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 064CDC433D2;
	Wed, 15 Feb 2023 20:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676494013;
	bh=dR48OY8aVGo34Mg7QbsDYaBAEmhILHfoEhTOHDO8UNA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=M9RquqTqcOlLcL5lwfTVXG8YmS+348rjIaCZpK3qDEpFHTAp89gX37ichnqJ4561u
	 /nllUKjMi8eWQzvtVNYeeeUE5hX0SfDOCn5Q6q9We/lelFrSkGyWUpwwzjtqbOuB7y
	 bZmWdP/DbKHyabhOvQtxNiVLq6VaCmORD5A758LpymHrDaEj45l/T4IvyHDjLIIRc1
	 Vv9FtaJPJm23YxdJUClwI6Fit4D5mlLALQP+pbvaDdr670C5+wkhl5Z853o17FXqnU
	 HBD25C+sCoVXRuW6vLSUdyTsTuLq9iMNzveaYRoevUls34GWxO3QnsRxlTUEoTVXoS
	 hACdWG7N08FoA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.10 2/8] arm64: dts: rockchip: drop unused LED mode property from rk3328-roc-cc
Date: Wed, 15 Feb 2023 15:46:43 -0500
Message-Id: <20230215204649.2761225-2-sashal@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230215204649.2761225-1-sashal@kernel.org>
References: <20230215204649.2761225-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_124654_604191_78561156 
X-CRM114-Status: GOOD (  10.92  )
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

From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

[ Upstream commit 1692bffec674551163a7a4be32f59fdde04ecd27 ]

GPIO LEDs do not have a 'mode' property:

  rockchip/rk3328-roc-pc.dtb: leds: led-0: Unevaluated properties are not allowed ('mode' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Link: https://lore.kernel.org/r/20221125144135.477144-1-krzysztof.kozlowski@linaro.org
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
index daa9a0c601a9f..22ab5e1d7319d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -91,7 +91,6 @@ power_led: led-0 {
 			linux,default-trigger = "heartbeat";
 			gpios = <&rk805 1 GPIO_ACTIVE_LOW>;
 			default-state = "on";
-			mode = <0x23>;
 		};
 
 		user_led: led-1 {
@@ -99,7 +98,6 @@ user_led: led-1 {
 			linux,default-trigger = "mmc1";
 			gpios = <&rk805 0 GPIO_ACTIVE_LOW>;
 			default-state = "off";
-			mode = <0x05>;
 		};
 	};
 };
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
