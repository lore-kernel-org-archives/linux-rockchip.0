Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4199C77B7F
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Jun 2025 11:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+I3E8g13iM4EsbX0tpOae/eEcHAFlmXaOvLU3sOA0uU=; b=fnYEXWxfJlbGvq
	Sggx/5zCJoFBGyCNNjT8DB5FYlhLxzFyf8hWRHZ6jI6wveAKZ1htd/axoG0A9Hn2/8xNSQyQljc/e
	wv9QJbYxbki7En93HC+1pRwhSxXR00esdZMKbzQmDNILhGwPaBAR2TX2BZbmmzrPDxyIPeRyq3BSI
	glnN8rltVyYzuKTEqo1VujHAzLRpMnn+tA3yCj1oF+RuBRfHhKGkOBjEqjAnDqtmrXX41Wa0sDHjZ
	lrMBxLoCPWyr6MexO943l7XM62bamkJ8D+NHoLrXMSXrzCUnVPXWV4qmX2ZHGbitgtrIt20DlodPQ
	dfSc+xlaz2+T85b9JrXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV71c-0000000ERVb-0QhS;
	Fri, 27 Jun 2025 11:13:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV6is-0000000EMyf-3afR
	for linux-rockchip@bombadil.infradead.org;
	Fri, 27 Jun 2025 10:54:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=AD3QbfEP8ddYRWBgYY8r4PrV7sypvygJP1xSmjVZCwk=; b=R7N8LF1X7gK+sgWdVi2HwjJmyf
	2P9FvwcTs88zYqhuajEdghkNtCZGAMeQ9cobm7OMUnxuztKWBhMJy6J4ZxlUPDRJUX3eGE7TIz+bU
	VlZfIPg343wpgLRPStkNtjW8rmkbr9obnemb5da7bZyMRCxtDuJXKSncJP0274xa/5kPLT5jcXNuI
	l9UCYrUdcXRd0MmmFgMwWhAZm+OcrZNJiW0g0WZqOucRhilQd7axS9LAdMQxNiSltDWMtC+ZPhJGo
	eG/CSVglpFBSrFw3yNQT6z8fnyymfMqmSF8u8yVG5Q3LrdC7V8TINJdMv5u6zOmn9+zhLeK8RXpnt
	R1h2JV/A==;
Received: from smtp-bc0d.mail.infomaniak.ch ([2001:1600:7:10::bc0d])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV6ip-00000006J81-1I5h
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Jun 2025 10:54:21 +0000
Received: from smtp-4-0001.mail.infomaniak.ch (unknown [IPv6:2001:1600:7:10::a6c])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4bTC9Q2slpzVtZ;
	Fri, 27 Jun 2025 12:54:18 +0200 (CEST)
Received: from unknown by smtp-4-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4bTC9P25PgzxLs;
	Fri, 27 Jun 2025 12:54:17 +0200 (CEST)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Fri, 27 Jun 2025 12:53:57 +0200
Subject: [PATCH v4 5/5] arm64: dts: rockchip: force PMIC reset behavior to
 restart PMU on RK3588 Tiger
MIME-Version: 1.0
Message-Id: <20250627-rk8xx-rst-fun-v4-5-ce05d041b45f@cherry.de>
References: <20250627-rk8xx-rst-fun-v4-0-ce05d041b45f@cherry.de>
In-Reply-To: <20250627-rk8xx-rst-fun-v4-0-ce05d041b45f@cherry.de>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_115419_548801_E09A402D 
X-CRM114-Status: UNSURE (   9.68  )
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
Cc: Daniel Semkowicz <dse@thaumatec.com>, devicetree@vger.kernel.org, Quentin Schulz <quentin.schulz@cherry.de>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Quentin Schulz <quentin.schulz@cherry.de>

The bootloader for RK3588 Tiger currently forces the PMIC reset behavior
(stored in RST_FUN bitfield in register SYS_CFG3 of the PMIC) to 0b1X
which is incorrect for our devices.

It is required to restart the PMU as otherwise the companion
microcontroller cannot detect the PMIC (and by extension the full
product and main SoC) being rebooted which is an issue as that is used
to reset a few things like the PWM beeper and watchdogs.

Let's add the new rockchip,reset-mode property to make sure the PMIC
reset behavior is the expected one.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
index c4933a08dd1e3c92f3e0747135faf97c5eeca906..b44e89e1bb1599ee70b921598c2eb6fd54614f55 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
@@ -6,6 +6,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include "rk8xx.h"
 #include "rk3588.dtsi"
 
 / {
@@ -440,6 +441,7 @@ pmic@0 {
 		vcc13-supply = <&vcc_1v1_nldo_s3>;
 		vcc14-supply = <&vcc_1v1_nldo_s3>;
 		vcca-supply = <&vcc5v0_sys>;
+		rockchip,reset-mode = <RK806_RESTART>;
 
 		rk806_dvs1_null: dvs1-null-pins {
 			pins = "gpio_pwrctrl1";

-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
