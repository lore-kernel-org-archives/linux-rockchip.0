Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 094C1EB64DD
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Jun 2023 19:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3MsL8DUWs+/P7sAogXoPp01RWPg4Zl4fE9GhJ5zRRWw=; b=JVBlS95v7d4PFC
	r0iQA95ThNlFD4DNMU7Z7EZx5gfkC3xocFS70k0KnQyjni/oNlZ9v7A+fLnSjrCq+CjXU9c1wAUtp
	4IrtQ+/MAgpx7AgzatmL+AHFS7cEaI9PKGHNWL5vuwebow5DYk/1CfNLwafcag2aDpodRbGu8xgIZ
	Xw5KamGV/cKg3VaUNUB1x3+rE8o/GI9t1FJoAJHme2FaVNNNp/ZzkjflMuFVYxShax+i1w9Fi9m5F
	oIhWVpIOw2Ra3ZC9zNx6KXENpdtb1+YcqRs+CfOFRmcbKVumFjOsk9Hk0JQQv02w8W6Y23QyVeJsx
	jSUhGg1sjmetrzHxiqtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qEwtJ-001rBG-35;
	Thu, 29 Jun 2023 19:01:17 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qEwtD-001r89-1k;
	Thu, 29 Jun 2023 19:01:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A88F0615FD;
	Thu, 29 Jun 2023 19:01:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0601C433C0;
	Thu, 29 Jun 2023 19:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688065268;
	bh=t6tJ/Q1fOcgaFAQAESAkuZw1gOKfqYq6LvhpMuTlPOk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jxcue+TP9Ie9bp1+ALdgLFrk1KSP+vS26Drk6JloulKhXPQCt66ziolzDJzgcBBjl
	 P6DyL6lCR57euOKg0YBdeyORDGKkTk2H/HenTmxNKt7fToFa0TbjODWoKGpwWkpXAw
	 T1+CBwWpQOTnWtki9+SeHUbrge6sointOjr8NpTX/3RUEtEBcaVbXkAN9JDAO7KGZ/
	 FPrVt+WOZh8XoJyoerikpU6SwHPnkxqyRitooSyDAYC1ozEMS9H61calTfdTWSvfoe
	 Qa2Q9s0BBUgjRK7C+u9EWLbmV2PI6GKIH5mpD9wmc1VMYdYsqLj9lyeqO0ZzCQ+Y7u
	 tXNDHbr/MQoqg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	pierre.gondois@arm.com,
	clabbe@baylibre.com,
	cristian.ciocaltea@collabora.com,
	sebastian.reichel@collabora.com,
	zhangqing@rock-chips.com,
	kever.yang@rock-chips.com,
	shreeya.patel@collabora.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.3 02/17] arm64: dts: rockchip: add missing cache properties
Date: Thu, 29 Jun 2023 15:00:31 -0400
Message-Id: <20230629190049.907558-2-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230629190049.907558-1-sashal@kernel.org>
References: <20230629190049.907558-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230629_120111_903185_0DC63947 
X-CRM114-Status: GOOD (  10.20  )
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

[ Upstream commit 42dcd054a6493e1adf292c3e246d1a2a9258942e ]

As all level 2 and level 3 caches are unified, add required
cache-unified properties to fix warnings like:

  rk3588s-khadas-edge2.dtb: l3-cache: 'cache-unified' is a dependency of 'cache-size'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Link: https://lore.kernel.org/r/20230421223149.115185-1-krzysztof.kozlowski@linaro.org
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi  | 1 +
 arch/arm64/boot/dts/rockchip/rk3328.dtsi  | 1 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 9 +++++++++
 3 files changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index dd228a256a32a..2ae4bb7d5e62a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -97,6 +97,7 @@ CPU_SLEEP: cpu-sleep {
 		l2: l2-cache {
 			compatible = "cache";
 			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 6d7a7bf72ac7e..e729e7a22b23a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -103,6 +103,7 @@ CPU_SLEEP: cpu-sleep {
 		l2: l2-cache0 {
 			compatible = "cache";
 			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index f4eae4dde1751..ff4470a28ffa4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -223,6 +223,7 @@ l2_cache_l0: l2-cache-l0 {
 			cache-line-size = <64>;
 			cache-sets = <512>;
 			cache-level = <2>;
+			cache-unified;
 			next-level-cache = <&l3_cache>;
 		};
 
@@ -232,6 +233,7 @@ l2_cache_l1: l2-cache-l1 {
 			cache-line-size = <64>;
 			cache-sets = <512>;
 			cache-level = <2>;
+			cache-unified;
 			next-level-cache = <&l3_cache>;
 		};
 
@@ -241,6 +243,7 @@ l2_cache_l2: l2-cache-l2 {
 			cache-line-size = <64>;
 			cache-sets = <512>;
 			cache-level = <2>;
+			cache-unified;
 			next-level-cache = <&l3_cache>;
 		};
 
@@ -250,6 +253,7 @@ l2_cache_l3: l2-cache-l3 {
 			cache-line-size = <64>;
 			cache-sets = <512>;
 			cache-level = <2>;
+			cache-unified;
 			next-level-cache = <&l3_cache>;
 		};
 
@@ -259,6 +263,7 @@ l2_cache_b0: l2-cache-b0 {
 			cache-line-size = <64>;
 			cache-sets = <1024>;
 			cache-level = <2>;
+			cache-unified;
 			next-level-cache = <&l3_cache>;
 		};
 
@@ -268,6 +273,7 @@ l2_cache_b1: l2-cache-b1 {
 			cache-line-size = <64>;
 			cache-sets = <1024>;
 			cache-level = <2>;
+			cache-unified;
 			next-level-cache = <&l3_cache>;
 		};
 
@@ -277,6 +283,7 @@ l2_cache_b2: l2-cache-b2 {
 			cache-line-size = <64>;
 			cache-sets = <1024>;
 			cache-level = <2>;
+			cache-unified;
 			next-level-cache = <&l3_cache>;
 		};
 
@@ -286,6 +293,7 @@ l2_cache_b3: l2-cache-b3 {
 			cache-line-size = <64>;
 			cache-sets = <1024>;
 			cache-level = <2>;
+			cache-unified;
 			next-level-cache = <&l3_cache>;
 		};
 
@@ -295,6 +303,7 @@ l3_cache: l3-cache {
 			cache-line-size = <64>;
 			cache-sets = <4096>;
 			cache-level = <3>;
+			cache-unified;
 		};
 	};
 
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
