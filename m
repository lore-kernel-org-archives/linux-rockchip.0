Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0048C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 20:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m1BlqizxwG22VMLb8BXRDGZnVUkaK3foJH4NgpAi8Jk=; b=TcM5Eha0OqXtVu
	9p7EsNsJxlsjK8EaM/zxhgwJs3yoLjLssbhi6sS/Jjy4BVoty2evMnMLhxbmizKdK+k9gx5DxsXym
	NQp6J5rY8fO6FzAz0OibhI/4pIH58dqwT3bfaPByizVEHpRNwlUiWi3Sd1JQQ6SP8ClL06ahdbRuX
	RGldLs4ALyyOHIp+TqHeomqrKubgdHOigpWmOq71yL706DeMSsGjxMC4obQdXFN81fmr6BKguIEiZ
	mzs0TbYD6HBW97/8LAu0SMmwCyPSvF54VBVV7MC2Aqkak3CSBwHuJY2XCfheEJNQm8cnp/bXPOFoq
	lHGWDclCqi0Xd85rS3uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnnkf-00BU8k-PM; Sun, 08 May 2022 20:43:37 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnm8w-00AyYE-1b
 for linux-rockchip@lists.infradead.org; Sun, 08 May 2022 19:00:35 +0000
Received: by mail-wr1-x42e.google.com with SMTP id d5so16713907wrb.6
 for <linux-rockchip@lists.infradead.org>; Sun, 08 May 2022 12:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QXNec13rQxx7mczo0Bb45Dl1W4/rRz+jQsRU4AeJnZM=;
 b=wUr00ZVSqJpz+TyFKEJpVL8SSj99SWOx9rBv/+AadNhGy7IgbkLHzAVN3kbxtYswNz
 5qrRS+RtbXGOkyzCO8qd6u+DzNXbqjZ87DXKCwIVDmbo+EWAJL0DsTNqYH1/uwPs+iOZ
 ajChSXEeTaJ1ogyzzIEumF7KNK1vwHTDFdbjvGS0Tbrx1yB1G4dofkhpftaveMv43QIA
 ItmpiorZ+4dpwR1KJFmI/QOXWoPBiqw2kbR9ioAB8v6XAil76TnJOtNqS2LdHQ3V9c7B
 511Btxxc7s2EQ5xe5D18btxiaHH2POZKJyx/NAz2yJc1hVDeZnJyP84NWN5AfxHNaUTb
 SkpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QXNec13rQxx7mczo0Bb45Dl1W4/rRz+jQsRU4AeJnZM=;
 b=Z/MzoTdFgKCWgjZeeLlaHF5GIyLydtPHLZOsuUWoI1eSELEwuwIsR+N0oFW6ONxzSe
 DwQ29+jcfHzZDxLMxx0+HWGCM/gU+9mjeUCjxoROV1YA6/acNoqbIkgHJnQVkBh6srlO
 SNFTHklQYC0696nSGzrZsau9a1ZztvNolaIZ+6+0POzSW5i443vbmxQkL1lzQgErg3s8
 WloEycXwFmnXjqe4CyP7BsVWsOBjHA/LetjHPguidfcM4GCbJkbuToAeaaQuct8YRalU
 KxdKGuJ8EzTPXuE8fXnwdVPa0RSMfyoRV4Atj+/+aT5tAKxmAtiUq5wHa8WZQwpL3KHQ
 EKBA==
X-Gm-Message-State: AOAM530dr27JFEWD768mG9qXiTsvd0RtzDFoOS6RlIxzr7RqbT+Rew5m
 AE6+4MS8A7Q0dJmeT5Igfl+9PQ==
X-Google-Smtp-Source: ABdhPJw5/UtIGu2Yl12LM79WcJ9WSawC8kvSOoNJwfXQAFHnRUIB1UugWPZEeX61eLTAcOF9ZKNTGQ==
X-Received: by 2002:a5d:6f01:0:b0:20c:660c:7c60 with SMTP id
 ay1-20020a5d6f01000000b0020c660c7c60mr10958778wrb.340.1652036433590; 
 Sun, 08 May 2022 12:00:33 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 n16-20020a05600c3b9000b00394699f803dsm10552348wms.46.2022.05.08.12.00.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 May 2022 12:00:33 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v7 27/33] arm64: dts: rockchip: add rk3328 crypto node
Date: Sun,  8 May 2022 18:59:51 +0000
Message-Id: <20220508185957.3629088-28-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220508185957.3629088-1-clabbe@baylibre.com>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_120034_156190_28386251 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

rk3328 has a crypto IP handled by the rk3288 crypto driver so adds a
node for it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 49ae15708a0b..96a7a777bae8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -1025,6 +1025,17 @@ gic: interrupt-controller@ff811000 {
 		      (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
 	};
 
+	crypto: crypto@ff060000 {
+		compatible = "rockchip,rk3328-crypto";
+		reg = <0x0 0xff060000 0x0 0x4000>;
+		interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_CRYPTO_MST>, <&cru HCLK_CRYPTO_SLV>,
+			 <&cru SCLK_CRYPTO>;
+		clock-names = "hclk_master", "hclk_slave", "sclk";
+		resets = <&cru SRST_CRYPTO>;
+		reset-names = "crypto-rst";
+	};
+
 	pinctrl: pinctrl {
 		compatible = "rockchip,rk3328-pinctrl";
 		rockchip,grf = <&grf>;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
