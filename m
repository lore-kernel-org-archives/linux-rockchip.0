Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 194E5C5B572
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Aug 2026 19:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gAioj2FwcBHXEUT4C1+jXr0iwSlfmu+r9Lfl3KbDAQc=; b=QtMsOC6wCarT45
	JLEZp8omjS4SIOekgGpqqQaNtjW/+/bj+Ox6blgvWdlDiEp3ZFtBeTEi2ekMuA0+dN1kioCRRdGu3
	pOIsvNvN+FzKqvFu4BLlLaAflBp2PwXFBBtvtAMtcE4deoSuP3eBgKutLHVMYeoAz74LnVTguLgNM
	QUTm/mVfGBvkBJBTV3QkkfumGoqjA3ojyFwVx6jDllU0JygNqtqipr/4TM47uIx+XjJxTq9ykEpaR
	RgtLzA2TNo4GwZX1G5g9TNezSR4ByqE6sw+8bttemMoKgZwciM//wFUqDDfYOG7+ioVvXbamKBjYj
	jdNbVyVYT57OqJHb3xMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvgkK-000000052Ad-3tV9;
	Sun, 16 Aug 2026 19:42:16 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvgkE-0000000525E-1yhW
	for linux-rockchip@lists.infradead.org;
	Sun, 16 Aug 2026 19:42:12 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-482938466a7so1467761f8f.1
        for <linux-rockchip@lists.infradead.org>; Sun, 16 Aug 2026 12:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786909329; x=1787514129; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=p8nmwxeGtmUEsI+0IQq59S0kaD/GAoU83KLqHgNb9Mo=;
        b=k6yOsI1Ec1c3qhZb0k82hAAu6hYJ6OnGPC7YzKLTgLonK/ehpIojczT7fiDubex6mL
         bF6CiTsRsuoZyJcw7fGKJb6Nt/78QWHMHHqkgknpN0bAOEJO0BP5gNibzTA16mHtzzlO
         zp3qotJOoE7VZRd2aofLudWuV8hY6/8gCIrcljByqiAnNrfDUasWn0KVX5v5yh0YOJN2
         5yOnrPa6FuoaMZ0oJ4abo+hzFMs1kUEQciGREv7UtxuQxEfBDWeTMOpVrs6SZf3LH8mC
         2U1HCOba1UWDS7ni6lBmQSX0SaaVALs6nUa/hzmYocNtjyFfryHL5dQusOSyyzPTiyg0
         bB3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786909329; x=1787514129;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=p8nmwxeGtmUEsI+0IQq59S0kaD/GAoU83KLqHgNb9Mo=;
        b=eVS15HUpSckhpm7OqDwsHJWNCd0CHr/pucNHFkFU7XSIhSFBr63ickejyJRnlcvzIz
         PAKfOwQxiUjn213l7UtO/j8TJbZoOKMu6OGZhA9atk+5JM3brSJigqPLidyoEyK90QbP
         7PH/HQsW0EmzMNd5tZjSqoS55HKcEvyV8UlNV4QPFeg80xwp+52m3BrG5TxPHB69JZvP
         vLcsL6Nnvtg3rM0vzjYjQwur4c7ZRHkbmjycEdiedIi25tSYoJRh701wsrV4XZ+BcM05
         sKBbEQQE70oT1kSCL2ZKRGLsoS+OSZR+nbfDDRKLEYEX2hpQcQ2GeN2q3ATNoCz1kmWI
         Uung==
X-Forwarded-Encrypted: i=1; AHgh+Rp//1kINwWHll8r0Upw2p4z+I+/BR/fOxpr2DHNO6AShWOSyPsVTz0OGXwfJv8piLkH+DxBolU64awKCR4g7g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy5xEGPnP42R2QzHNNKGEu2RVE3RAJ7HuE2yqujWsT7/G7DgrdD
	99/7fP05ThZhzv/fnHr7fuP90lOTBOIyfG8krhwqsBcRVEzLhjL8yUhR
X-Gm-Gg: AR+sD112oYgrZLjDoshX2/YgjIVitL7UfHL23Z5YkHTIV3YtfED88OSir6sH0EFIWAF
	oEkG01aZ5uJhYmYbvYI0E65wgEgIfMoqMY5Ny1+S45ROoX7gi3BfM47KeWUcdLVXhllqROxuKH2
	9vemD9cMO+ettqTONHOI6au6fzNmf5hzQIXkij665YjUdXN1Q5dERtjg/uLf8j9M0cDIvnvvRO5
	t0DEoC8RtJ09NZJLq+VWDHc/I0zzIsor+6eIBgnJ5n4UaU5uxQ3nonyz0t4TWNU8B86SS0z1tB5
	CJXXLGBh0stutqXWlXw/6i7FaBOj2C3yBstDTRe934IwJJvRsGtNNrF/n1XI1THuUpR5UvBUqVu
	DEs+kHYpDATevQFv4Y7PSS51Bw9IQF3aN/HS5P8wBhLKg2BW+4f27oTUzitnNayOcxAUgbswMKx
	IK7TWb1mx9Js5mtFRfvcEmAnkqBU9NXyl10FSOiesWY9hw3mTQhns6eg==
X-Received: by 2002:a05:600c:3596:b0:499:8ed2:8234 with SMTP id 5b1f17b1804b1-4998ed286c1mr202943995e9.0.1786909328685;
        Sun, 16 Aug 2026 12:42:08 -0700 (PDT)
Received: from olympus.. ([2a0a:ef40:f1b:d401:2e0:4cff:fe68:285])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49996106c6esm100527875e9.5.2026.08.16.12.42.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Aug 2026 12:42:08 -0700 (PDT)
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
Subject: [PATCH v3 3/4] arm64: dts: rockchip: Add crypto node to rk356x-base
Date: Sun, 16 Aug 2026 20:39:46 +0100
Message-ID: <20260816194112.552100-4-dawidro@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260816194112.552100-1-dawidro@gmail.com>
References: <20260708175837.1718437-1-dawidro@gmail.com>
 <20260816194112.552100-1-dawidro@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_124210_529683_65A7D611 
X-CRM114-Status: GOOD (  11.00  )
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

Co-developed-by: Corentin Labbe <clabbe@baylibre.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
Signed-off-by: Dawid Olesinski <dawidro@gmail.com>
Tested-by: Diederik de Haas <diederik@cknow-tech.com>  # Quartz64-B,
NanoPi R5S, NanoPC-T6 LTS
---
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index 64bdd8b7754b..8b88d6de18c2 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -1111,6 +1111,17 @@ sdhci: mmc@fe310000 {
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
