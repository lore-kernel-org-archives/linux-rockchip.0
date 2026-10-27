Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450CC606A31A
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 00:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=C2o34UaM;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=EJ8H00hp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version
	:Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=L+KogVpiIjpUK+gSaEtrlq3UhRcz+r6EOGmgYQ5PcYw=; b=C2o34UaMkQGJqF62TLc5ov8Th8
	KSItVlriCq726BhF+iZqM4C9sbGbP3lRUvUTlGHdl9qixT/tmBnMavL0I5ZoOW1YWG+ymyO7Ulq+D
	b6svO1KBBmEt7lc2Bvh4zinZ+jxoNamInR+uVH1pWaZRbzYrM564WPJx6d/thPaO79CUW7oNl1jts
	OIOhoViauOLg/O1+3tryWAQCbUO4V+aaAom0lakpVBMJGc7ZvWmm9NScqEYefRmF0XWXjcKf9CcO0
	I0r5ohLKCPw+/oVFNCMT+CJBSFcX4ZqGyDcDaykqwdCtTAKw8MgFEX1pwrEuqkFFVCOmCicNZEp/p
	4SctWJxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLUvl-00000003Wzm-2nAT;
	Tue, 27 Oct 2026 00:20:45 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLUvk-00000003WzX-1IoA;
	Tue, 27 Oct 2026 00:20:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 745DC601FE;
	Tue, 27 Oct 2026 00:20:43 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1793060443;
	b=RUElg6849JaUip0HaRuKn57fk4c8jLZ3H4mITajTe2nOXeguFiikSfYzDopB20bi+3kC
	 4+aUoiWiJzaHXjAfo4rIMc2NkDZCy0hHzUAhNPIgwMgTJP+1QviGJA8pWL2hd8xnOFXGi
	 FQkHv9iCBS0cmOXjaANeTI6YpiFM/h3QipPX0jL9aqTcCmbD6msSynaaytpjtoG3rFypG
	 2nls33m7bLECiTTj3pVm8Xd6LFm81Y/UhiTWlZA6dpEfiUhmgQnyLJKAyqYO11uuXNSGL
	 +jKqUk4EatYBmvyMEqhvIIsl2CiIyhmZAQGu234p0a2KPVV9xhhzcaZTQU7vmEGEmSg==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1793060443;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:X-B4-Tracking:To:Cc:X-Mailer:X-Developer-Signature:
	 X-Developer-Key:X-Endpoint-Received:X-Original-From:Reply-To:
	 Content-Transfer-Encoding;
	bh=IuMC/ItzG/Q2x0sIFmWFkQOqzTArFu2+LT0DtoyhLhs=;
	b=itMPSyvxErzTUcXWGSB52bYunuOdH27PZVicC99i/01TjuXFLOTHqZOKujobKJ2tAzDo
	 oY8UMULViarsFjFLKNUDqOOR8o94IVjpV36y1pebOTR5jyoZj4pP62F1OvDOii5UHuQON
	 HyCnXpeigOmHKpIuF7yKK/XSA8aCjDRGYgZVEuIlF8GxM2KtY9/E2Fh+piOUFg/rZcap9
	 ggr0t9LM8cyFspoTT5Bej2CF8k6aX40qNFnlH+gf/AXndbEvv/9p57udpkhfnCdkoHmsd
	 Ul91CeUtT7yBaWUEqJHaYaCTsqKbYUDWRVuZw89RKrAWH9UyJbMvlTSO+k3FAWHHi+w==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id AF7841F01825;
	Tue, 27 Oct 2026 00:20:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793060443;
	bh=IuMC/ItzG/Q2x0sIFmWFkQOqzTArFu2+LT0DtoyhLhs=;
	h=From:Date:Subject:To:Cc:Reply-To;
	b=EJ8H00hp5gx+7BMOKxFE3wfzhE+6IVGPv80Xc5H+f9ub637LBxOr9HmrFHnrfvST9
	 eMkMEEB51CLZ0+MZHJfK8NQtEa0/Kt45GLNoZUVqJUH95+dR96uo+hZYxMnS45LqhN
	 hBHhjJBbBd1/89rp0e2gGC6ImgcE3PRgxxOj76XARttZJum2OKem0sLZlT0f00lM1u
	 plic+WHebZRsVK0x6zv3q3Ip0hb5JVoXV7hye2Q20fzj8d+VIjzs25mpKhhWQVzaQC
	 j/nW+nuVhbBrS0IZnhLLLwskXD0ZaB6DXk3IgsB9qN4QsdkmgfshTbve+p7Ucf6voD
	 tWZmK3hL0yxzA==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 3EEC144F11;
	Tue, 27 Oct 2026 00:20:42 +0000 (UTC)
From: Igor Velkov via B4 Relay <devnull+iav.iav.lv@kernel.org>
Date: Tue, 27 Oct 2026 02:20:40 +0200
Subject: [PATCH] arm64: dts: rockchip: Add the watchdog reset to RK3399
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261027-rk3399-wdt-reset-v1-1-de9615abb0ec@iav.lv>
X-B4-Tracking: v=1; b=H4sIAFfu32oC/x3MSwqAMAwA0atI1gaaFj/1KuJCbNQgqKSignh3i
 8u3mHkgsgpHaLIHlE+Jsq0JlGcwzP06MUpIBmtsScZWqItz3uMVDlSOfOBQ1MESUWl8gJTtyqP
 c/7Lt3vcDe+b2R2IAAAA=
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Artem Shimko <a.shimko.dev@gmail.com>, 
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Igor Velkov <iav@iav.lv>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1530; i=iav@iav.lv;
 h=from:subject:message-id;
 bh=YfZXV/pwUDuzE4RfqVS8zgmubems4bbmhrrE9YcpAwk=;
 b=owGbwMvMwCVmNH1q96v4SmbG02pJDFn330We1c2qfCG7W7WJIXnL8s+XeMrZffpP7bbrWNY0u
 6tuYqhfRykLgxgXg6yYIsuEQxq3MpZc/evvYf4AZg4rE8gQBi5OAZhI9kyGv8K3etbdMbWcum1V
 8P8zlvO3iarF3nyiIG22Q626KPLUd2eG/6UXO0sXHZkaOKPcrEHV3oWv98XP52uvr7+wyvlWyyr
 ZTwwA
X-Developer-Key: i=iav@iav.lv; a=openpgp;
 fpr=90C228DA68A4D5FD4F4837E03297958BEA5F7903
X-Endpoint-Received: by B4 Relay for iav@iav.lv/default with auth_id=1060
X-Original-From: Igor Velkov <iav@iav.lv>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: iav@iav.lv
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Igor Velkov <iav@iav.lv>

The RK3399 watchdog at 0xff848000 is reset by SRST_P_WDT0 (bit 5 of
CRU_SOFTRST_CON20), but its node has no resets property. Its clock is
gated from SECURE_GRF_SOC_CON3[8], out of reach for Linux, so without
the reset dw_wdt_stop() can only set WDOG_HW_RUNNING and the watchdog
keeps counting through s2idle: on a Kobol Helios64 and a ROCK Pi 4A,
s2idle longer than the watchdog timeout ends in a watchdog reset.

With the reset line dw_wdt_stop() can stop the watchdog, and with
"watchdog: dw_wdt: manage reset line during system suspend/resume" the
driver holds it in reset while the system sleeps.

Signed-off-by: Igor Velkov <iav@iav.lv>
---
The dw_wdt side is applied in the watchdog tree:
https://lore.kernel.org/r/20261024140854.25664-3-a.shimko.dev@gmail.com
---
 arch/arm64/boot/dts/rockchip/rk3399-base.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-base.dtsi
index c46e58d4af0d..7b71b24c1f51 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-base.dtsi
@@ -1748,6 +1748,7 @@ watchdog@ff848000 {
 		reg = <0x0 0xff848000 0x0 0x100>;
 		clocks = <&cru PCLK_WDT>;
 		interrupts = <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH 0>;
+		resets = <&cru SRST_P_WDT0>;
 	};
 
 	rktimer: rktimer@ff850000 {

---
base-commit: d2abcbb905b0e4b2e06b257fa1e5bcf4faa6dbda
change-id: 20261027-rk3399-wdt-reset-c58d2111609d

Best regards,
-- 
Igor Velkov <iav@iav.lv>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
