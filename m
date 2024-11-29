Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 346C6D70E01
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Nov 2024 00:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3F9U46DpUqXN5BQsT4+NqxNdVs942AnRrVNM1M/lwI0=; b=evtW41cI5UazY5
	0QcpyufuQJ9qWuc/7ZJMmMlQmEpHMsMf9yrRP6JFxZGOb3Sr3f67WcmEaEdg96DDDerDdWPkSm04x
	F4mai0kIJVpaXKSwv++PxQSKUqfuhdYuwpqfoNSg53/Z5/MofDrW4oLNkRXoReyT2UZNe4uSkDIDj
	3dbKBEWVgByyuh5xgwoA8u9VF6qyGof6ygQsj5iCyV5Yk1PqbzoFz0hABMnKLmS8n0zfHmsXTzUbO
	M22oyZ/ugGSbYlc0ERfLXPI2nKYKQt2Z+JJwkRwR7ZEgBA9xOAHSmMEv/D02yiL6uzH1YbfZwgY3t
	kfpwTGMZdqDUeXRMCn/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGoof-0000000Gcn4-3cz5;
	Fri, 29 Nov 2024 00:25:01 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGooc-0000000GcmK-1QII
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Nov 2024 00:25:00 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AT0OVdB020450;
	Fri, 29 Nov 2024 09:24:31 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        macromorgan@hotmail.com, jonas@kwiboo.se, andyshrk@163.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: add support for device tree overlays for Radxa devices
Date: Fri, 29 Nov 2024 00:24:19 +0000
Message-ID: <20241129002419.60404-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_162458_586681_5EF5F388 
X-CRM114-Status: UNSURE (   6.25  )
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

since Radxa devices use device tree overlays[1][2][3], make base .dts
support them.

[1] arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso
[2] arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-srns.dtso
[3] https://github.com/radxa-pkg/radxa-overlays

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/Makefile | 28 +++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 86cc418a2255..cac3f39af82a 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -1,4 +1,32 @@
 # SPDX-License-Identifier: GPL-2.0
+
+# Enables support for device tree overlays for Radxa devices
+DTC_FLAGS_rk3308-rock-pi-s := -@
+DTC_FLAGS_rk3308-rock-s0 := -@
+DTC_FLAGS_rk3328-rock-pi-e := -@
+DTC_FLAGS_rk3399-rock-4c-plus := -@
+DTC_FLAGS_rk3399-rock-4se := -@
+DTC_FLAGS_rk3399-rock-pi-4a-plus := -@
+DTC_FLAGS_rk3399-rock-pi-4a := -@
+DTC_FLAGS_rk3399-rock-pi-4b-plus := -@
+DTC_FLAGS_rk3399-rock-pi-4b := -@
+DTC_FLAGS_rk3399-rock-pi-4c := -@
+DTC_FLAGS_rk3399pro-rock-pi-n10 := -@
+DTC_FLAGS_rk3528-radxa-e20c := -@
+DTC_FLAGS_rk3566-radxa-cm3-io := -@
+DTC_FLAGS_rk3566-radxa-cm3.dtsi := -@
+DTC_FLAGS_rk3566-radxa-zero-3e := -@
+DTC_FLAGS_rk3566-radxa-zero-3w := -@
+DTC_FLAGS_rk3566-rock-3c := -@
+DTC_FLAGS_rk3568-radxa-cm3i.dtsi := -@
+DTC_FLAGS_rk3568-radxa-e25 := -@
+DTC_FLAGS_rk3568-rock-3a := -@
+DTC_FLAGS_rk3568-rock-3b := -@
+DTC_FLAGS_rk3588-rock-5-itx := -@
+DTC_FLAGS_rk3588-rock-5b := -@
+DTC_FLAGS_rk3588s-rock-5a := -@
+DTC_FLAGS_rk3588s-rock-5c := -@
+
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2-of10.dtb
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
