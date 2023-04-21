Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5B52C77B76
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Apr 2023 22:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n5NcHJYbrAlSv4AMom4Jn/ggxuaamKzz2dnAo6aKrCg=; b=u7zFruO2Yox9Pz
	PUkfjnXGu5B9fBfKPUyYAOhh2l2mFEE/tGPbEMbEanS7HpIUFT1jTLQI6SNg6E7hdVdiWbBLW6r+t
	udhPQQBKRprv2jQT4rOFkMYWdXj5bNbFJAJj1gZX4MEsT/dNgnAJG9URHbN2oD4nXvzbwvOrBJrLb
	2R8SSjWqbyRvGdGGsggssIkPUTxSDDumMj/suuXiSArYnZQIUjupW54HWuxNJdogSYeDP1lu9fzgC
	I71SRAe47M3b+pJ5xoVXWJ742A3yCMZOJBNYlOIhkNdfIkVpDtcTGUBuTBVyETqosXcHvLQdLO9qM
	GIEI4BGNAt3mA1B9rGPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppzIT-00BxR6-2A;
	Fri, 21 Apr 2023 22:32:05 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppzIF-00BxJq-2c
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Apr 2023 22:31:53 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-94f3cd32799so376804366b.0
        for <linux-rockchip@lists.infradead.org>; Fri, 21 Apr 2023 15:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682116310; x=1684708310;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7v4mG2PrvGHT4HWW2aD7kz/Jo5VqruKafQcmH0GEdHQ=;
        b=LRwxYnYte61pFMXBNA4fGK8jUs7j4rOkyOV4DdeP+ttViOoqcp1tzRcSM8sa6ZXXhX
         vhWQAmT5hkJY2mOlU7tXY5f/L/K/EhmJJrJrZ4+133xDbLq8LjeQ5pIfF+PvofBirVJ6
         bC59k8XvlJTnxagd5d1KHmr826EoFOSYDtlUPT12aCyD5RNHsKsg3vG7wPuvougchO8p
         0ZoczI3MB6arJx/H5gLkYcuv3bqEBBGwuz5XsLPqaSbQVmoI5anSkmBjrMQWKK47VdJw
         B6W++SAaY+DJSV8Z2ZCU7l0i2h7Qck4sB4jUnR24mbutUri2h/jAGjXx/ihbfCO7M3pU
         Elbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682116310; x=1684708310;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7v4mG2PrvGHT4HWW2aD7kz/Jo5VqruKafQcmH0GEdHQ=;
        b=bAXHEDNlycFJhOw/76m5a+yBl4jtJrxt/7i9NYaJ4g5/b9ko8/N4EWhYU8qteYcXh6
         HSG0rXV3iBmmEiXZKkbkInFZU2ZKIrHIciMNQ4haA3ER/BLWXhhflLjvvTsDdzxtvezf
         AgOD1fcE/MYukyeG2dyg4t4RahoJCaSGD2V4+tUgFb1c3oIyvke0TycryPA4dQeoa/QU
         AQ74uooSj/rSRN1RzKQPXz4VpwmEVY0CnyDZUPMe6zMyUug9qTKMHguel9WS4NZfE4Xz
         GZE6ikJzRhc9K2dWfkCjnD5TzqrYnVSU+UF8rxA28zATYoirkxeq/mwiqWMTzqwLt0sz
         vlTA==
X-Gm-Message-State: AAQBX9cJ5+4iKdvV3zxDn5LvojIgynOt9S5D8ndIZ898Gqv0X0vHKGUm
	9QscYDO5zwXhxzt+zgh/ecp1+Q==
X-Google-Smtp-Source: AKy350ZToStdpI3/6McxwF83TbNvU0TpEGKWh9SGPOim56WxkraHbbPATz3MtaW9Xt/+n4pzC+JJtg==
X-Received: by 2002:a17:907:7845:b0:957:12b7:30b0 with SMTP id lb5-20020a170907784500b0095712b730b0mr3566568ejc.18.1682116310636;
        Fri, 21 Apr 2023 15:31:50 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:687d:8c5:41cb:9883])
        by smtp.gmail.com with ESMTPSA id aa21-20020a170907355500b00957dad777c1sm308173ejc.107.2023.04.21.15.31.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Apr 2023 15:31:50 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: rockchip: add missing cache properties
Date: Sat, 22 Apr 2023 00:31:48 +0200
Message-Id: <20230421223149.115185-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_153151_852304_03B157F9 
X-CRM114-Status: UNSURE (   9.52  )
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

As all level 2 and level 3 caches are unified, add required
cache-unified properties to fix warnings like:

  rk3588s-khadas-edge2.dtb: l3-cache: 'cache-unified' is a dependency of 'cache-size'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Please take the patch via sub-arch SoC tree.
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi  | 1 +
 arch/arm64/boot/dts/rockchip/rk3328.dtsi  | 1 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 9 +++++++++
 3 files changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index dd228a256a32..2ae4bb7d5e62 100644
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
index 6d7a7bf72ac7..e729e7a22b23 100644
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
index 657c019d27fa..5badc68fe9f0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -230,6 +230,7 @@ l2_cache_l0: l2-cache-l0 {
 			cache-sets = <512>;
 			cache-level = <2>;
 			next-level-cache = <&l3_cache>;
+			cache-unified;
 		};
 
 		l2_cache_l1: l2-cache-l1 {
@@ -239,6 +240,7 @@ l2_cache_l1: l2-cache-l1 {
 			cache-sets = <512>;
 			cache-level = <2>;
 			next-level-cache = <&l3_cache>;
+			cache-unified;
 		};
 
 		l2_cache_l2: l2-cache-l2 {
@@ -248,6 +250,7 @@ l2_cache_l2: l2-cache-l2 {
 			cache-sets = <512>;
 			cache-level = <2>;
 			next-level-cache = <&l3_cache>;
+			cache-unified;
 		};
 
 		l2_cache_l3: l2-cache-l3 {
@@ -257,6 +260,7 @@ l2_cache_l3: l2-cache-l3 {
 			cache-sets = <512>;
 			cache-level = <2>;
 			next-level-cache = <&l3_cache>;
+			cache-unified;
 		};
 
 		l2_cache_b0: l2-cache-b0 {
@@ -266,6 +270,7 @@ l2_cache_b0: l2-cache-b0 {
 			cache-sets = <1024>;
 			cache-level = <2>;
 			next-level-cache = <&l3_cache>;
+			cache-unified;
 		};
 
 		l2_cache_b1: l2-cache-b1 {
@@ -275,6 +280,7 @@ l2_cache_b1: l2-cache-b1 {
 			cache-sets = <1024>;
 			cache-level = <2>;
 			next-level-cache = <&l3_cache>;
+			cache-unified;
 		};
 
 		l2_cache_b2: l2-cache-b2 {
@@ -284,6 +290,7 @@ l2_cache_b2: l2-cache-b2 {
 			cache-sets = <1024>;
 			cache-level = <2>;
 			next-level-cache = <&l3_cache>;
+			cache-unified;
 		};
 
 		l2_cache_b3: l2-cache-b3 {
@@ -293,6 +300,7 @@ l2_cache_b3: l2-cache-b3 {
 			cache-sets = <1024>;
 			cache-level = <2>;
 			next-level-cache = <&l3_cache>;
+			cache-unified;
 		};
 
 		l3_cache: l3-cache {
@@ -301,6 +309,7 @@ l3_cache: l3-cache {
 			cache-line-size = <64>;
 			cache-sets = <4096>;
 			cache-level = <3>;
+			cache-unified;
 		};
 	};
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
