Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58E95FED9EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Mar 2026 18:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EUNMHYM0+wvssKHCNwZJZHFoJ3WpLw5zY/2Qj6qdWAQ=; b=CbyTNm3MfMheDI
	ecr/5ObS1M8mnQ04e8CGVKmJLD/TRmEYFohvO2QW5IhvYTwn1ajbTHLuMvnIHvhkXKAzTGxUSe6Io
	1Oqnw+lLR3hT/cJz0F2Q2x6SRDJT9gfqVuY96wIGZgVWSojU0+QC0qyZ63qChlrweLIJB0V1s98j9
	jGW8zDqBnvheIaUhEVOSwDKIqkC2rTMjYkukXNNZuL9CVDBsCHw2fCA3E7qA9qJLh/Nxgts+jUrUn
	nli/SttktNiRpa8YqwO7fTjoYp23AJ9C/b0S9U6TYNebhf5BAhcdjPgAJPgLnnK8QjKllWLN1j7l6
	+MmAUK0MyHF2xnyLFF9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2YqC-000000071Cq-0ks0;
	Tue, 17 Mar 2026 18:08:28 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2YqA-0000000717I-0EZq
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Mar 2026 18:08:27 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-48535a0ef86so50635635e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Mar 2026 11:08:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773770904; x=1774375704; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z7IffOQPDV8+R2vLMwqGaiOzpiBs5raeLy7NwaqA2zE=;
        b=oPvvzNzXU4f85I4/A4Bgee2TTY3rK0UnCMTadxpq/mRhG0jguWvEwjPmy4Ig3FitHT
         jvS+jUzEL5h15r9erPDqdDqZ5Yog88p1UyuR9Tl1PrumjgWlAPTd/WmQK0zidePoTpti
         Px97wPp4deVMQk31xnFu9HvC5LtQuY7SF0zuxWnJrGV1ZSe1eMe/DLJGbE4ml95cjnFu
         mnlLUbT0GurP/10yF0NZLu1fuT6teL//vGz4r6ERsYjQPgd9QiwFS+pxpFD4DIcyvyoO
         YpLXkoaC+HqR3uP06T3nLGx/5p1kQADfZFznECme+BFh6d6wc8DcrQ0UeAIE5GTHExmY
         F42g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773770904; x=1774375704;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=z7IffOQPDV8+R2vLMwqGaiOzpiBs5raeLy7NwaqA2zE=;
        b=COvjKl3btUcVHBEFI2Z5k85qHq2rv1qXsjeiwH492eFdTEfOjJkIunHAmgHpViWacl
         BRIkzVo+raGt0RValVMXOHNbserK3LLnFFq0qQbAQ88beDgqW3I8zWghcBm5Ea4BRnwk
         oVgka/njHtQYhQiJjE+lTtdHgegV6T1CBiYCLujz8UxySf8N6P/f4z0KtRehP9M06A94
         mrhhDpybeUAyoeqPxDywWQuMGXYY15+5kCks9zf0R+/Og1TdFwb4HgMDxeP7PR6iFLEy
         4qIJUV0Kcy6kABWRLFY0ziFmjdQiv5huaXZPje6vdsY2t23yzB6CMLUjc2uz3H84RWoC
         cTvg==
X-Forwarded-Encrypted: i=1; AJvYcCXYcGfplpUKTymTSGfSjJOF116tIY7YQgWGet7tuC40Eu/jWEvLXjDKy8ytc5KmLT1UqiraNpD+fPLBJVALrw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwzejSKn8cF7XYaYH7g5ERF8aZDFgY4+rzYp3UcsMeJ4V2AWBvK
	hIh98aZPE9MME76l5bDY3RARmdMNJiaSWN1ZvQwMJdN/LJzkI78UZdIEGEej43v/LcY=
X-Gm-Gg: ATEYQzzn0K4/sJo1+Nma4Er7YgjrJqhDxUItbIY3hPnrKfh7tgHDd+saooSU/jgmDDN
	a8eoHdrIcPnB7UnIZ/OtVzeXlizpUy+dgRjaXc1/kpIkP3zEEAK1Vn+LZ7RidGS3CRj2xytEMIQ
	zH0fr00GGyQgw0JKOOrzjNcqi11QNK8LRc13wsYsmeHHumHhE+BgfC7CCCOLpKzJ5oFDIw2c+oF
	Uw8tZGV8sHnQqnDODQFu7f7AiJZuFPfqw4BthCYZxByybArrHTUQ1OT+TJtA+MRxd0EEXFremKM
	klwFuv7mPNBoyqW55EyC1XC36whj1ULC24igXGmHiKjMT1/WAcEwZtNmAbIkhroF1wFckVqTErD
	nhsA9oc02mWI4W4DFPwOPR7UTheT1iyCjjjJtrGqRMq1yuAWsBbISMYUZ1mAGUMmt6pzp3KrxQO
	6ulqXW5EwtRZKJEgBUIEmfkbbaoX5PrT9zlul96TD8Xt/iOCKpbDYGgLrvLLGwDQ6wzv9A9QbwO
	UH8yw==
X-Received: by 2002:a05:600c:620c:b0:485:40ed:2d1 with SMTP id 5b1f17b1804b1-486f4475049mr8830515e9.17.1773770903842;
        Tue, 17 Mar 2026 11:08:23 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b5184b8b9sm1436536f8f.1.2026.03.17.11.08.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 11:08:23 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 17 Mar 2026 22:08:02 +0400
Subject: [PATCH v2 5/5] arm64: dts: rockchip: Add HUSB311 Type-C controller
 on RK3576 EVB1
MIME-Version: 1.0
Message-Id: <20260317-husb311-v2-5-03c17c986abe@flipper.net>
References: <20260317-husb311-v2-0-03c17c986abe@flipper.net>
In-Reply-To: <20260317-husb311-v2-0-03c17c986abe@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Gene Chen <gene_chen@richtek.com>, Heiko Stuebner <heiko@sntech.de>, 
 Yuanshen Cao <alex.caoys@gmail.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1866; i=alchark@flipper.net;
 h=from:subject:message-id; bh=IcqKl6Q93uEU2+8AL9hVIxItRFtJRUZB5AVhl781nlw=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTunNHmJGfEaCm+fu6bly6VCnWlgeb5ohfcLIqPLNWa5
 uH96gR3x0QWBjEuBksxRZa535bYTjXim7XLw+MrzBxWJpAh0iINDEDAwsCXm5hXaqRjpGeqbahn
 aKhjrGPEwMUpAFM9WYqRYX257051ceGN7IdvJFzdefLKdct/7G8ynD1yF1zeGz17TyQjw/lPB+b
 XxN1Z7rlz644PXIxnD5b9YTqx5UVLWbBzYb/WBR4A
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_110826_130478_89ADE8B2 
X-CRM114-Status: GOOD (  10.70  )
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

Rockchip RK3576 EVB1 board has a Hynetek HUSB311 USB Type-C controller on
its Type-C OTG port, which also supports DisplayPort Alternate Mode.

Add the required DT nodes to enable basic HUSB311 operation.

Note that for full support of mode and orientation switching, the USBDP
PHY schema may need to be expanded, such as in [1]. This is left out for
now until the respective schema is finalized and merged.

[1] https://lore.kernel.org/linux-rockchip/20260313-rockchip-usbdp-cleanup-v3-1-3e8fe89a35b5@collabora.com/

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
index fb0dd1bc5148..df6c4b4b05f6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
@@ -11,6 +11,7 @@
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/soc/rockchip,vop2.h>
+#include <dt-bindings/usb/pd.h>
 #include "rk3576.dtsi"
 
 / {
@@ -769,6 +770,25 @@ regulator-state-mem {
 &i2c2 {
 	status = "okay";
 
+	usbc0: typec-portc@4e {
+		compatible = "hynetek,husb311", "richtek,rt1711h";
+		reg = <0x4e>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA5 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usbc0_int>;
+		vbus-supply = <&vbus5v0_typec>;
+
+		connector {
+			compatible = "usb-c-connector";
+			label = "USB-C";
+			data-role = "dual";
+			power-role = "source";
+			source-pdos = <PDO_FIXED(5000, 2000,
+						 PDO_FIXED_USB_COMM | PDO_FIXED_DATA_SWAP)>;
+		};
+	};
+
 	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
