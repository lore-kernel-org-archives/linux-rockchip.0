Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13D5BC3064D
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jun 2024 21:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tOZW45GP60/y2XFa3syJj4y/9AHxJEmUw4pZiduS/n8=; b=qXXlm29lc3JftD
	SGP9ncwGOqJSWXBnH0HnTevp4tQaVIOHUfrjuFkP81bEp0/0DuUS2p07uHUAEaAaqPG3xcVC4G+Dw
	yGKErnij+8QPZDasYRm3swLdkCJ1HoEt40vmQ1zJ6c1PDFjf+VRZqoe0JzHjM5CvG4bCDFwC4+hV2
	dOe/CP+Cr+esW86XBeM0t2cVY/LPWBjg1heZfqhtl7A6uN8NP/JkB38mcde5U9YHLkrXcqB34Hxhd
	tcI16N/7OI8SZfytB4qKbfxLQMW48UVg1saf1pixkuP8caW6/OPG1vINnF9474NOzgiKp+8ROmpna
	EfcrpqyIJbk2DtFVXIdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMwVj-0000000Bk7v-0JVV;
	Thu, 27 Jun 2024 21:18:31 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMwVK-0000000BjuZ-20qY
	for linux-rockchip@lists.infradead.org;
	Thu, 27 Jun 2024 21:18:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1719523070; bh=0BtZMq8zO5HEvZyObBXvIv2npwPnM6su7k47D0xt2CA=;
 b=TKT++WofO43b2TL0yjALZDTpYUwJpbOLpHP0HRM21ABpLMVniQDFwdx3kIkNUdP/kxwRxPlau
 1wWoKoMzhB0gG6uCzQl7BqxnuWGUZgMGy8Yht3isOzvthcnA8stbI2qbHx/PDJAYQgf2avv89yT
 47QKbhVlGKrh/R5FMONNHk3Z72umj8MEc7qxE6p9R5Ypm9TSdPEQ75SSCrBtWFPJr0oW/rj6eYd
 MeN7X/rrcBLQUZx4gu8d3mtwtorpPVxDeKy8Hf2WarjDViYurkAlLDEtxTYSiYsTwZ6CJNRgCT5
 V7O8n7Ig/hrDVnEAjE3S293FrIrkdFZZvdRspsP+B/MA==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: FUKAUMI Naoki <naoki@radxa.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>, Krzysztof
 Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add Radxa ROCK 3B
Date: Thu, 27 Jun 2024 21:17:30 +0000
Message-ID: <20240627211737.1985549-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240627211737.1985549-1-jonas@kwiboo.se>
References: <20240627211737.1985549-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 667dd6fb392543b4ce9ac5ef
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240627_141806_652127_5908EF25 
X-CRM114-Status: UNSURE (   7.61  )
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

Add devicetree binding documentation for the Radxa ROCK 3B board.

The Radxa ROCK 3B is a single-board computer based on the Pico-ITX form
factor (100mm x 75mm). Two versions of the ROCK 3B exists, a community
version based on the RK3568 SoC and an industrial version based on the
RK3568J SoC.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
v3: no change
v2: Collect a-b tag
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d2e887415d5d..bbb2d7c217fc 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -811,6 +811,11 @@ properties:
           - const: radxa,rock3a
           - const: rockchip,rk3568
 
+      - description: Radxa ROCK 3B
+        items:
+          - const: radxa,rock-3b
+          - const: rockchip,rk3568
+
       - description: Radxa ROCK 3C
         items:
           - const: radxa,rock-3c
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
