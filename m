Return-Path: <SRS0=vbLC=C2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 865BDC433E2
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Sep 2020 18:52:31 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DB79521973
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Sep 2020 18:52:30 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="bmD2o5GW";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="xha31VWN"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DB79521973
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kN/tB8nWmo0VK0DPq8a1H7ESkPzC65aA/WreoVsNsuo=; b=bmD2o5GWiQSZ7Lz8clsBfmWXdj
	jOc8WmJaoEzBSzwN9xm9opyd+dsqBvuZAjHgbXG7WjiWLch4QKaClf4StnFBg3fo1anDtQJOFn6nk
	n/z2Ht87u67f8QC+X+uKrdg1UfnOo/GzIPVW4y8k/VZ+v5m1PmxUh5J5Y9/fRThlMz1BCL/rtHgoV
	DsXL6twQca4DtqRsNvA8sW7GQWmJstfsDa38LJ2XD56aXWXM9MWygXDtvJ406ZKg/Vgx9XZYFaiAD
	Sf3erSO85wMCBgm/8WYNUS7onQcAHyvcW1ko3zZkQboan0mCxndJL6v6YXyoQOuBuzWoMAeaE80eS
	YkqmP+Uw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kIz16-0001Qz-Pf; Thu, 17 Sep 2020 18:52:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIz13-0001Pz-2d; Thu, 17 Sep 2020 18:52:21 +0000
Received: from kozik-lap.mshome.net (unknown [194.230.155.191])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D8DE206B2;
 Thu, 17 Sep 2020 18:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600368740;
 bh=XKp/ALCXKdogV898R63aYemHxOz/vb5HEsd5afFXsHs=;
 h=From:To:Subject:Date:From;
 b=xha31VWNPbcwTWQ1Qj7OW9FmHR3AheCdYBldwkejJwo8vrXEg+kjAy479DUWHSe6T
 dUM8nf1AkP9wW3GZRCYtPkVnmyegqczuSCko7yCBte5/cwLSewA1ZFTLCvlEAmD2KU
 qA9os2y9kMuaxIUqO0knW4W1GjYj4JRflneqn79Q=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Johan Jonker <jbx6244@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 Vivek Unune <npcomplete13@gmail.com>, Alexis Ballier <aballier@gentoo.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Anand Moon <linux.amoon@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] ARM: dts: rk3188: correct interrupt flags
Date: Thu, 17 Sep 2020 20:52:10 +0200
Message-Id: <20200917185211.5483-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200917_145221_200168_AA002A95 
X-CRM114-Status: GOOD (  15.22  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
These are simple defines so they could be used in DTS but they will not
have the same meaning:
1. GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE
2. GPIO_ACTIVE_LOW  = 1 = IRQ_TYPE_EDGE_RISING

Correct the interrupt flags without affecting the code:
  ACTIVE_HIGH => IRQ_TYPE_NONE

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Not tested on HW.

Changes since v1:
1. Correct title
---
 arch/arm/boot/dts/rk3188-bqedison2qc.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3188-bqedison2qc.dts b/arch/arm/boot/dts/rk3188-bqedison2qc.dts
index 66a0ff196eb1..b191347894f6 100644
--- a/arch/arm/boot/dts/rk3188-bqedison2qc.dts
+++ b/arch/arm/boot/dts/rk3188-bqedison2qc.dts
@@ -7,6 +7,7 @@
 /dts-v1/;
 #include <dt-bindings/i2c/i2c.h>
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/interrupt-controller/irq.h>
 #include "rk3188.dtsi"
 
 / {
@@ -479,7 +480,7 @@
 		reg = <1>;
 		compatible = "brcm,bcm4329-fmac";
 		interrupt-parent = <&gpio3>;
-		interrupts = <RK_PD2 GPIO_ACTIVE_HIGH>;
+		interrupts = <RK_PD2 IRQ_TYPE_NONE>;
 		interrupt-names = "host-wake";
 		brcm,drive-strength = <5>;
 		pinctrl-names = "default";
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
