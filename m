Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C76CC43458
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jul 2026 17:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NbI36CWnPMuZKV96iOL+aDYnTCn2qH8B3t8V9amgNIQ=; b=YoSrri7OrGewX9
	affiLoGKP+UP1XX5HmBlheRdcwNdpto6BKjIGJNe4ocMO/ZtN2lp2LMn6SFXqh+OJRSxI15T1t+MC
	xahayzJeSFENlqjsARh+fN/65HU7U3ptck1tgNKA2MyRbLillDr52d84cIsWujxk9T0gPQHxEMaqF
	cmthA+g0tPVvFM1uEWq5DX9DVYISyXhvZv7wpfaDoepF80qSUZy0RAWIOcqb8SbIujZB8jYMbvyZy
	R54jqrAn9FdNfeSafaIqvT9brzXcbOQjsfbYUR7HiOuXPT4+Al4AmzUYwf4rDry9YAy8xoE9W/TL+
	S3DTswHVc2QI/D71c/Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whWYF-000000008rj-3IzN;
	Wed, 08 Jul 2026 17:59:15 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whWYD-000000008of-2F5P
	for linux-rockchip@lists.infradead.org;
	Wed, 08 Jul 2026 17:59:14 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-c15cb6f5c12so200387766b.0
        for <linux-rockchip@lists.infradead.org>; Wed, 08 Jul 2026 10:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783533552; x=1784138352; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Sa+hq1ddPX1RzBXoQyE6BmGgQ/wGb1XIxI/SPhDUhIA=;
        b=o5Ji96B6TBLWZCt5T6m14NEGU6qdQyYUd9wHcap6geAEogu/ircpZqhnNa7NndXtQi
         35DqSEhzChACTfynFC3Okr3l10ZF6ZBFpccf5WxvOYr3dBMUNvXBJHBoFMioj1Yy+38N
         ZKhS04sKeJcSRXnAP45MCSWYWCdx18Qwnb+TfKqxC3Tl56KEvVNq1Uhx7Hg1C+tQp+7Y
         Wn5cgVspeVeCHukePcnd9mN8CfJm39uBet5goke/uLS3hHGGT5aLlMQmRR36anhDDu5b
         7jVTiKbPuipk5nudr9C7Nn3ulTtAz/xiORBd+kkaVUljpnCTyR6UkMy68CDN9guCEY4B
         XbVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783533552; x=1784138352;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Sa+hq1ddPX1RzBXoQyE6BmGgQ/wGb1XIxI/SPhDUhIA=;
        b=c5d/uUuVohLy3HQ7Z9uNaHWh8EYeyqsj9UCWu0177tO5LAktuDgpj0xyCZqT/30JwK
         0FZ3Bm1I0Uk94J/UtfjD8NMQIIgCEqFmGKO4gk7M30H2ha7yNCxcwuynMBp371g5kH9X
         P7V17npMCvOMIK9beP83cDa0bWb6SyhA/buIngDBTXOugUA24YY+FQlVqRzFgAGvMrSY
         OdyEdNvzsJbOTUYwNNqBsP5f3Wid1pIqo4oIiH6D+npyELDv1/oA96QkVWxV/pg1aexL
         fgFsi5CzMoqRUaHF5KmzGot6TG8tFKrR7rzQxQYm9jTlmy6pYKAXLnJHcHRkcUSWO5of
         bswQ==
X-Forwarded-Encrypted: i=1; AHgh+RqcyKWBVfjr2TtKGon4iuQH9sQb7E9PGzoNZaDn4wMwI0LBJBHcyuxvpN8CA6YwJZ6G7cj/DoPCcRunHHTgsg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yziy2gG22+6wlFbBMgHKqEsAwRzbkjjdVa3V6/PmPKI4iV+Nr1J
	V9seFgV5eKFy0ZZvXdD7l0w2wILAWlj8ZI3peO/oskZmFnemIgy3p8oJ
X-Gm-Gg: AfdE7cnD0SaN2BDQuNVjNASYHCwysZyBG3ASmAyg5v6eMKWKd4rrgA9O6rG5yypdhEm
	W9Yqe6O37y5h2Sg8+1AtE9NZcMFmbP2Ep1JDu7obJ+TiceG/mO0oAK55GeWvRlmpn7g41K5ebx8
	CPzue7v/tyKYrN9O+JtC1K70RuHM6FISUnvR0nzeEVnPN7Fwmnk1S6NhE+QbsxBl+YqdLnpOziY
	US+qoXCYSPFpVVJe0xbCwD1/5FT/swzQolSPgWFUWHmpfC5X9lwzNWYIk5y1vydM9/Crgi78QsP
	Nacfc1hHztDbBaOGHKg4+p3qevqVuP+K7JItpa/8Hnqd28pjDsbI7GLcXWj3s4s0GO62BWysJS3
	P3I/t2FjT0FgTsQzuENRijA86yOor20RF137Uqk6zwlbkcLXFC/fRxYyHH4PY2Agi76paxeFGUj
	ZaTjOW/w==
X-Received: by 2002:a17:907:9406:b0:c12:6a72:5882 with SMTP id a640c23a62f3a-c15cde71af8mr169523166b.5.1783533551631;
        Wed, 08 Jul 2026 10:59:11 -0700 (PDT)
Received: from olympus.. ([2a0a:ef40:ea3:3f01:2e0:4cff:fe68:285])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c15ad9bcc26sm357653666b.34.2026.07.08.10.59.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 10:59:11 -0700 (PDT)
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
Subject: [PATCH v2 3/4] arm64: dts: rockchip: Add crypto node to rk356x-base
Date: Wed,  8 Jul 2026 18:58:24 +0100
Message-ID: <20260708175837.1718437-4-dawidro@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260708175837.1718437-1-dawidro@gmail.com>
References: <20260708175837.1718437-1-dawidro@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_105913_605189_6453459A 
X-CRM114-Status: GOOD (  12.05  )
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
on RK356x SoCs (RK3566, RK3568).

The IP block sits in the non-secure peripheral domain. Its three clocks
(core, aclk, hclk) and reset line are accessible directly through the
main non-secure CRU, so no firmware intermediary is required.

The node is disabled by default; board files that wish to use hardware
crypto offload must enable it.

Signed-off-by: Dawid Olesinski <dawidro@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index a5832895bd39..9de7e7487ca1 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -1112,6 +1112,18 @@ sdhci: mmc@fe310000 {
 		status = "disabled";
 	};
 
+	crypto: crypto@fe380000 {
+		compatible = "rockchip,rk3568-crypto";
+		reg = <0x0 0xfe380000 0x0 0x2000>;
+		interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_CRYPTO_NS_CORE>, <&cru ACLK_CRYPTO_NS>,
+			 <&cru HCLK_CRYPTO_NS>;
+		clock-names = "core", "aclk", "hclk";
+		resets = <&cru SRST_CRYPTO_NS_CORE>;
+		reset-names = "core";
+		status = "disabled";
+	};
+
 	/*
 	 * Testing showed that the HWRNG found in RK3566 produces unacceptably
 	 * low quality of random data, so the HWRNG isn't enabled for all RK356x
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
