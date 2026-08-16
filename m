Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A39EFC5DF66
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Aug 2026 19:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fo03yDuyAimieo/A4p/e6q90pNk+/oXyQLIUBzlQxZg=; b=yytH9YvgAALIsf
	yEttjPTcioR99K42QLK9+go/EuQS+C+ffu9hPJgpmWW7TOuCu1pIz3Q2RhEsegVRljQg4qHVBeHA7
	5Q9gNTyKpJmdvWc3zPy2i9UtXqcTCbydnRzPgFLyY+8gjCbIEgbPbQJdafg5QJfCHcz7Ppmpn7kMd
	h1mV8S48LXs4vPTOi8kDa39X6fqxsAHoBShPgAilI+xMIyL0un+EDvA1oQ6bRFCNSdtV2t1cMZf9B
	bsY+Ngb9LMgbhn/Ga1j8CZNVKL+yyEnFUQEutxCs99A7w1C9INEINpDnctCCV1nLAOc0QhsWI2FBu
	VjDOFtUXHv0m9UkLlbrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvgkL-000000052Bc-1O5i;
	Sun, 16 Aug 2026 19:42:17 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvgkH-0000000526e-0fSn
	for linux-rockchip@lists.infradead.org;
	Sun, 16 Aug 2026 19:42:14 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-49545ba3d4eso12335355e9.3
        for <linux-rockchip@lists.infradead.org>; Sun, 16 Aug 2026 12:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786909331; x=1787514131; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=saCtLctEFieimkjt5839av7kQUg1qO8hSvOYlxjvmVA=;
        b=kK3A6mIFtXXKbVA3pNvMrrcAjFutH6dBhj7v2fwj93ssh49XrG5ZO7GiUsOG4stpP4
         bWnZqNhY2VxrWPf/IEWjaP3VPYbkA0Uj4QaK8GWIAu+qIwM8zfmHPJREkUnae9J0nEmV
         MOqaiMb0HPTXT6bE1xvBFihDb9M4Sj6DVtI6a+WjJ3znA+v+VhVz69B4EG43SR33wqNu
         ZVPV7KhK8nQsQMbpoOYjGe/yq+bGDu1mDAmD5ARpRy2lDpBzJUnEMq89aB8BHDlbgnI7
         9rtx/M8txuqg/bNmuW0Cx3Vp4bBJ//00782WSrutxbOGxBEX5Tspc7tVd2Tr5TwQI3RP
         U5og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786909331; x=1787514131;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=saCtLctEFieimkjt5839av7kQUg1qO8hSvOYlxjvmVA=;
        b=SK+DNQs1Al9lVoJ5XOkElGuZdzHSYBdpQEN1gMK9m+upnlI49aQFre96yv7qza2Gv9
         h6kTSzBU1bdKD9nIFiBkn1wk5AMZQ9E+KH5bcBYlcplyOo0tpGUh3tCzICH7qBTX1WB5
         7BpQWSIDuS44bNi3azUjZiEUw+66hKo3Mer3+HHKUI0RK/Tlffc38BftTYcKhJnawAdc
         qtARJ+TW4V4UJeU0lMbqGCAf74v2TMzi39zeaUsd+jAqtxwQjWyJU5jq4NPJxQwTXxvT
         WL0ZuBeTr7n0GUg69AG+vOpgeUogwau/9XB99Xoa/n2WM0pJBiFV9dlpQj/ng0cHpHqS
         mVrw==
X-Forwarded-Encrypted: i=1; AHgh+Rp2+y9bS3H1EdrdZ6d9Benv7pRXHgXjVSpb0xeax8LmedgQdkVVN4Q5DhgxA8zbyDAAWFg20afzlDw/l8kbwg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxNfecmc3kc837QPuIXWW3DuEzwJ2ipYmKWqj00yWBWMuXMT5Ij
	hoIzzn2Aa6bB4kdi5TrzEZPOVgpok6Zq6GtH3vB/DbPGp1EgyvUu/4KF
X-Gm-Gg: AR+sD12xZTK9vU1+FmHWYOy6slYXTiwKkKQBk5bM0zJRrFAyuKRLCVBDLCIwcqeMaG5
	FlZ9RLjlnVWnMcPoM88FEbE0EZbHTu3AfazUUfX6/aCu43kN3rjp3kAnukmIR7eLNjFlKifenFl
	gzyDKNdC1aIkEns2f/1UIy+glD+ohX1Y1uAMoBCeDqOvV4p3nJn3BpIGqt81TTrV55YOwH5/9+V
	jlL5IMLvikI90vqQ7ofXn8rTiiSHIlLXq21xOrF7NaBAvvAXM4lcmKMeWBgEV3leiPjQNTxwLj4
	Hzs4dgQKnjv75gxWR3YM1HRfRV8Qxd43ooLZLS+GpSeVIbMwl9JSpLdbJkm7baQjFjFUAMMG6H4
	nA7/rlaH6cKCl4KDsYJZ9qkrtLhGu9VR9CgRq0MQCEHKA+bmzE4jNzUxyax1+SBMhFZiA7FvN7u
	XVD9lztcWaMpPz5tG8ODrcdBmpi01Ub1E0eUNL4L2N5X22fy9SZSqhVA==
X-Received: by 2002:a05:600c:4754:b0:499:7e2b:8e5 with SMTP id 5b1f17b1804b1-4999a2f9ec3mr21366645e9.5.1786909331392;
        Sun, 16 Aug 2026 12:42:11 -0700 (PDT)
Received: from olympus.. ([2a0a:ef40:f1b:d401:2e0:4cff:fe68:285])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49996106c6esm100527875e9.5.2026.08.16.12.42.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Aug 2026 12:42:10 -0700 (PDT)
From: Dawid Olesinski <dawidro@gmail.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
	"David S . Miller" <davem@davemloft.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Diederik de Haas <diederik@cknow-tech.com>,
	Eric Biggers <ebiggers@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Corentin Labbe <clabbe@baylibre.com>,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dawid Olesinski <dawidro@gmail.com>
Subject: [PATCH v3 4/4] arm64: dts: rockchip: Add crypto node to rk3588-base
Date: Sun, 16 Aug 2026 20:39:47 +0100
Message-ID: <20260816194112.552100-5-dawidro@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260816194112.552100-1-dawidro@gmail.com>
References: <20260708175837.1718437-1-dawidro@gmail.com>
 <20260816194112.552100-1-dawidro@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_124213_350870_469A5DC2 
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

Co-developed-by: Corentin Labbe <clabbe@baylibre.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
Signed-off-by: Dawid Olesinski <dawidro@gmail.com>
Tested-by: Diederik de Haas <diederik@cknow-tech.com>  # Quartz64-B,
NanoPi R5S, NanoPC-T6 LTS
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 4fb8888c281c..980c345a5de0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -2249,6 +2249,17 @@ sdhci: mmc@fe2e0000 {
 		status = "disabled";
 	};
 
+	crypto: crypto@fe370000 {
+		compatible = "rockchip,rk3588-crypto", "rockchip,rk3568-crypto";
+		reg = <0x0 0xfe370000 0x0 0x2000>;
+		interrupts = <GIC_SPI 209 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&scmi_clk SCMI_CRYPTO_CORE>, <&scmi_clk SCMI_ACLK_SECURE_NS>,
+			 <&scmi_clk SCMI_HCLK_SECURE_NS>;
+		clock-names = "core", "aclk", "hclk";
+		resets = <&scmi_reset SCMI_SRST_CRYPTO_CORE>;
+		reset-names = "core";
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
