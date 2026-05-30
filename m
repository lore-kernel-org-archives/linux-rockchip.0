Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F051BCD6E4C
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 May 2026 16:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RpA1lU1YwN46mLiu2zup/FygHi7K5FXiSr0p3KtX6Bk=; b=KEmn/jCLb7vyh1
	XdCVS1ZnCDIbGURIV7T7KfgiYkpLcvbX1iuA9DqR11Wo/rjeJ6L42koX/QgdVSt3zK+/5LGx3fkXM
	ggEtqKfUq6leVlO0RC0cyR0DRh3x+PiFg/EdxWtIb5U2Qxm/UtvJfdkAp+JQ0vdQgJNGnSpLBKXCY
	gS6C3C9KvPo5pw6duCWgaIIxOhC0leWReTrM+pqY/lVI6NAm6HBTMoFqBYR2vQu7eJCqg/0Q09l4V
	UYM+iM5HOIo+9Sst4yJNZXyI0CVTLIlH/NnZytDkzNIu/zMTWu2R7zyrtRJdyRcRg1dMkM9R8Oq+m
	ljlKc5k7zdRx8jrxLD3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTMDe-00000008uFR-1nWk;
	Sat, 30 May 2026 16:07:26 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTMDZ-00000008uAl-3d1T
	for linux-rockchip@lists.infradead.org;
	Sat, 30 May 2026 16:07:22 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-45ef1629ff4so1297541f8f.0
        for <linux-rockchip@lists.infradead.org>; Sat, 30 May 2026 09:07:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780157240; x=1780762040; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+SJMrJ4Tyw4rnth10NKoarZEEEB3Q5hOPvF+j2hwsdo=;
        b=PEU0zsTN6o/PafM7Xhw5WwxC7M1Dh4BKtKosPYO8/ZdWHW2Vu87UzzcYbyqbMKTOub
         +qV+YlIoXd56KBEPoFhZyYzmzfRJfyKcubP5FAQVCjNUcYa3PHa73oTxc1lKKiZk7m4+
         DoMw/Pp1sLKTznxr7JS0poxhrKUB8C0YY0xx6jaLdvLKDZK5BZo4zSupFlsF3Km/dmzt
         6KbWgPFy2Z2yt/pHwiJAYlvMjWXZbJv1+hm9WKTWVUq80H7Np2qfW04p3KT2oNJyErxw
         iBndksOBtkPYwWraVO2JlswtnK/714ZHpLAtmNU1OYlzr4gqyq0ZjviE0HxCwutTIxLd
         n9iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780157240; x=1780762040;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+SJMrJ4Tyw4rnth10NKoarZEEEB3Q5hOPvF+j2hwsdo=;
        b=iMT/X0RlCBGzTtnJSV0ONrBIlGsAypL+WerjPMgVoU2CuFjPgIV2f51SPrNnWtBLxb
         z/OceY+O1dOeTi5MeqlQYoG0kko9Qtv/6Rz8mFQv7i3v7UqCldJ/Fw8vpE1MS13/DHhB
         1xQEoVJsUQLnIxmqN/0+Uj+jDPEL6vPyjt9v7tYE8tImyp0lPtWoETzU6UNkXH8QRgm7
         uQoJkrSVpMqDFMQ1ErVrXw5rMGP8BINsgvWL9EDd85MgLXZIryxb6ovnk2OpBlVziM7q
         ETN2dDR61qtvzVX7tVnZuvVnncGV6TGX+DokJz+Z5AmzoH8gspC1hxT1xqh5T0X+ctEr
         HT4Q==
X-Forwarded-Encrypted: i=1; AFNElJ/ug8FZSZcyh6OeZE4Rtzngwwb+UfUdTUT9WNfG0Fo/zkM8KIVMX1REcCF5HZUqYfd4uWRGoDXrD9mq259Byw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxq57m93TVNdRPw2dPINjR4rc2ZhY9ciQ2MFCP2ZrENdmZ89bTG
	w6heWm9aBjaxFqiGJIezXzYd59lC2vYe7cNkfda3BQuOn1Tk0tZoNi/+
X-Gm-Gg: Acq92OF0HipQss0cDe3Ex+6yUSOEAhsPzfQzSSNJoVP7h2/Oy+Rudw80tVcBua4k45p
	722boWnCf0gOpnHi5JAWfwTLjwkyd25fMt2RQA+yJoxi8MhP1tkRAUM+77ivZmzB+0R97DG8p1L
	hRdRT3OJX0lNP+Xwxrlf9/dPtBrbltZuxyCgcMR7rdAqMDSGkou4qpLCY3hm5xByHNAg0j31OwG
	WbMrJtjk5vLpx3IrPvPs/yfvPKtCAdzW7gu+PMepsUjFs7vTbdCeOv067qdoTS5GmwrLlG8CTEO
	NelZO93h3IS3Auu/dw9OpU4LAfHMMptcIgvgLBU7Qd6OM5cSypNJoIZBXYjLgPkbvUhqxRIoVm+
	oi+Z/TbITA6wsG8n2S7XvxxIRxdIRMJbj2ss2gzBTfxPl7tH7qNEbhKimg+t23B1TSO3BIeaGNJ
	I40IMWqr784pq02srqcZH8u+GxNpk=
X-Received: by 2002:a5d:5989:0:b0:45f:68a7:38d0 with SMTP id ffacd0b85a97d-45f68a73a2amr1942009f8f.0.1780157239975;
        Sat, 30 May 2026 09:07:19 -0700 (PDT)
Received: from olympus.. ([2a0a:ef40:ea3:3f01:2e0:4cff:fe68:285])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45ef32fabcasm11667339f8f.0.2026.05.30.09.07.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 May 2026 09:07:19 -0700 (PDT)
From: Dawid Olesinski <dawidro@gmail.com>
To: herbert@gondor.apana.org.au,
	davem@davemloft.net,
	heiko@sntech.de
Cc: linux-crypto@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	clabbe@baylibre.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	Dawid Olesinski <dawidro@gmail.com>
Subject: [PATCH 3/4] arm64: dts: rockchip: Add crypto node to rk356x-base
Date: Sat, 30 May 2026 17:06:44 +0100
Message-ID: <20260530160704.3453555-4-dawidro@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260530160704.3453555-1-dawidro@gmail.com>
References: <20260530160704.3453555-1-dawidro@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260530_090721_920929_D5EA2082 
X-CRM114-Status: GOOD (  11.02  )
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
index 64bdd8b7754b..3b73a56046e7 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -1171,6 +1171,18 @@ gpu_leakage: gpu-leakage@1d {
 		};
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
 	i2s0_8ch: i2s@fe400000 {
 		compatible = "rockchip,rk3568-i2s-tdm";
 		reg = <0x0 0xfe400000 0x0 0x1000>;
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
