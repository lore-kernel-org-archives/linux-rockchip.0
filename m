Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 140A7C982EE
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 10:17:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RAuoVxgvSEvTEjsib5U7fljmIIIn1Iuc74+GR3Jj0V0=; b=1EBExfgl2N98H0
	DTk8mm/CyxhSkqi9C4CY8G84Ta5/sL7dYJtkXeRjowT09JKMuQnnYGQHjYJE2OxmcvMM2dKmMwVq2
	hE25s6T2Asni2b/w8XR4+HJYV2Nk/ZLuVLHNsOhKKkxkUq6IEH4wF47q/qcwGBtmsN3iHojGdUCDz
	kckxdh1UmPrIihVqmQ2up3Zdd7G+kDnmwsq1HsG9WxkkDHoCTQG235uj5+ITn/PZuto6Y/MGysBcY
	MMXGqrleIgIJRkEMK3xAae5aSguSATLiiINsGToNryl/E5qTcF+RjVObDVGXRdTGXqY9fLKEu9ENE
	dGdMjL1Yv5hSasVXZVig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8b5Z-00000001ecQ-1Zmc;
	Mon, 21 Sep 2026 10:17:33 +0000
Received: from mail.fris.de ([116.203.77.234])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8b5S-00000001eW0-28tK;
	Mon, 21 Sep 2026 10:17:30 +0000
From: Frieder Schrempf <frieder@fris.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=mail;
	t=1789985835;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=t+5kItn/dLA8g58laqBchtZJn0cTJ6aBuyxpWo3F+/g=;
	b=Dn2Ai9na/RuSGFC9OQUKmgxtv3Q7A38cSnV7c0hw/sP0PkYKDkks1x8uqZJ7l6jChn72QI
	e016oafrslm3pi1fI0tqG0aNwfNLz9E4kJ67fwdZ+nDGKU5a7rtnduq84yA6A0xR0WA1gs
	CovVSPvR17hS1TDc65XG59m2/PITGUp2VHOQCA0yCTCmnlvPw/y5IZeHomy3lTlonT9Klw
	2jPn9aJgxCQZoG83kofPlBGrwxJqUzd0PasjA5EcJRrPa40XGdygh4GjlwyPuvAbNi7hBP
	lnaHBmALz0dXyk/8WsnY5CdKIKTn8WP91nw01/2FJSGr+5F/E0E1a5WC/poCiQ==
Date: Mon, 21 Sep 2026 12:16:44 +0200
Subject: [PATCH v2 1/3] spi: dt-bindings: Clarify what rx-sample-delay-ns
 describes
MIME-Version: 1.0
Message-Id: <20260921-spi-sample-delay-cleanup-v2-1-b460d572fd32@kontron.de>
References: <20260921-spi-sample-delay-cleanup-v2-0-b460d572fd32@kontron.de>
In-Reply-To: <20260921-spi-sample-delay-cleanup-v2-0-b460d572fd32@kontron.de>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Frieder Schrempf <frieder.schrempf@kontron.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=2775;
 i=frieder.schrempf@kontron.de; h=from:subject:message-id;
 bh=TlRhZ1qfD0/hQwYMH3NUSnheV4zFAnhEGcsyBBxk8ps=;
 b=owGbwMvMwCWWWSatKlDTJMZ4Wi2JIWsji9b0f2zdv3o0Ni6tc97psa3G+97TxNBDK1ofL1u9u
 2LVwnlqHaUsDGJcDLJiiixS/Bavbc1ifeSPVUfBzGFlAhnCwMUpABM5nsrwP3q7m3Bn4WqrZpHZ
 XGLeBb5TKrIVp+677OTYoBxQlLwplOGv+IaqTLFZnCWrdPrP9R9UPc/80W1h5K3F/1wVXigcOWr
 HAwA=
X-Developer-Key: i=frieder.schrempf@kontron.de; a=openpgp;
 fpr=1A0F38EB3D365D4C1FC67B5A69761B25107C8216
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_031726_903374_AF1731B1 
X-CRM114-Status: GOOD (  14.89  )
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

From: Frieder Schrempf <frieder.schrempf@kontron.de>

The property is documented as an offset from the controller's default
sampling time. That says what the value does, but not what it is meant to
describe, and it leaves room for two readings: a delay that belongs to
the board, or a stand-in for the peripheral's own clock-to-output-valid
time, which has no other expression in a device tree today.

The first reading is the original one. The property was introduced for
Rockchip in commit 76b17e6e4923 ("spi/rockchip: Add device tree property
to configure Rx Sample Delay") to deal with "boards with high-capacitance
SPI lines", where "the controller samples the Rx data line too early".
The current wording arrived later, in commit 5ce78f4456a9 ("dt-bindings:
snps, dw-apb-ssi: Add sparx5 support, plus rx-sample-delay-ns property"),
where it described a DesignWare register and was qualified as such. That
qualification was dropped when the property was moved to the generic
schema in commit b658be56e867 ("spi: dt-bindings: Move
'rx-sample-delay-ns' to spi-peripheral-props.yaml"), leaving a register
description standing in for a definition.

The distinction matters because the two compose. A board delay is
specific to one design, while a datasheet timing parameter is the same
wherever the chip is soldered, so a mechanism that derives the chip side
from the chip would add to a value that already accounts for it.

Spell out that the property describes the board. Nothing changes in what
the value means or in how existing device trees are interpreted.

Assisted-by: Claude:claude-opus-5
Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
 Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml b/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
index 880a9f624566..afcf9c41c058 100644
--- a/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
@@ -91,6 +91,14 @@ properties:
       The delay from the default sample time before the actual
       sample of the rxd input signal occurs.
 
+      This describes the board rather than the peripheral, namely the extra
+      delay this particular design needs, for example because of the flight time
+      of the clock and data signals between controller and peripheral.
+
+      Timing parameters of the peripheral itself, such as its
+      clock-to-output-valid time, are the same on every board using that chip
+      and should be described with the chip.
+
   spi-tx-bus-width:
     description:
       Bus width to the SPI bus used for write transfers.

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
