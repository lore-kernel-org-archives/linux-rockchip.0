Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80F43606A327
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 21:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=018htZq4;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.a=rsa-sha256 header.s=fe-e1b5cab7be header.b=a0rkLRwF;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=forwardemail.net header.i=@forwardemail.net header.a=rsa-sha256 header.s=default header.b=efMWD6c/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=CksBfNel5HeAIBQHyXjJby9gN2BB+wRKTuekZoaJIBU=; b=018htZq4CWVMAezq3EKOv09ps5
	mNVzTvhktmwodneZBLob5P85PVTNJLlPkHTe8ntakZ711WTGXViTcWqleOBkC6iitF5LykP3nH3Wu
	wFiVE1k3SPwf9N207MCht3mIJeno59nAuVOkHAb0Z0OBe/mp0L8uSQ0bHtY7sJGZon9JkPpWLUXfi
	WgEGmD5YtJ23v0tbtPamWcYUhEaUNojvgpn1T3LwVPq0rtEpKy4yduEsfKV3m7b5hkweXyP2abeEz
	CABF/EezPUJ2JUoAvOlN9ZFbehl1TDuWBjzCHg8bHIUe1bRDBZrIQ261mhSSA7IdH8jKw6bo+x78g
	ddSs0HCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWKng-0000000BOdi-0W0Y;
	Wed, 25 Nov 2026 21:45:12 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWKnY-0000000BOXn-2tWG
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Nov 2026 21:45:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From: CFBL-Address: CFBL-Feedback-ID;
 q=dns/txt; s=fe-e1b5cab7be; t=1795643103;
 bh=y5SCKUzhUGoAqeZEeFTmcGTW3YAUQPcSyJPK60KPAFY=;
 b=a0rkLRwFQw8K4cKy0pYwHLlKfmWjsbTvLP22UJjY8KB4zc8HRwPx0j5v1EDJjmWGtdPMYghek
 DLws1LFVbdKEgaipN9Ed/97UPt2HabbX3N8H9w11bQ2Eij2qPrie3TxkIy1XtvzHj4UKqoXKSYc
 RGi2x1XO/S6T2bHLpue/QqMPsf+UukVyPe0umxtvFWbpJP7xHusKlWcIo3zeEK8UX+ROo+8V2o2
 L376AmiS5redOHke06bU9H2/7cbY/cRgHdO01SkeyiKi80gYQLcOqPoyluamXPhZHa+LGWJWoqf
 SLOeU/XKPfoGVFfbmSRiyzdSb9xLyZS77sJcN2wBAr9A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=forwardemail.net;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From: CFBL-Address: CFBL-Feedback-ID;
 q=dns/txt; s=default; t=1795643103;
 bh=y5SCKUzhUGoAqeZEeFTmcGTW3YAUQPcSyJPK60KPAFY=;
 b=efMWD6c/iY42563eNxdL9gdB5hGdihcgii67gUrgo4iaKiWPQePN1QhvP4p7R4dwoCzSBFJf7
 dCtHMhbjbAWs6LQZX27cL54RLoPgP4zYlBDgYRV3/viMy5tdO7m2dvvS1/NNrDbSgqAdoAuUZKL
 Pzbva6LJ+z1JF0HGzq7CJpQ=
CFBL-Feedback-ID: 6b0756ccf930f38bf754f9e9:d9f3869de73d583c5b2ea30ceb86e4c7
CFBL-Address: abuse@forwardemail.net; report=arf
X-Forward-Email-ID: 6b0756ccf930f38bf754f9e9
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.19.39
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v3 6/6] ARM: dts: rockchip: Add Luckfox Lyra Zero W board
Date: Wed, 25 Nov 2026 21:44:18 +0000
Message-ID: <20261125214421.1580359-7-jonas@kwiboo.se>
X-Mailer: git-send-email 2.56.1
In-Reply-To: <20261125214421.1580359-1-jonas@kwiboo.se>
References: <20261125214421.1580359-1-jonas@kwiboo.se>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_134504_809352_6BF7F3E9 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -2.0 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Luckfox Lyra Zero W is a compact wireless development board powered by
the Rockchip RK3506B SoC. It includes 512 MB of DDR3 memory, 256 MB of
SPI NAND flash, 2.4 GHz Wi-Fi 6, Bluetooth 5.2, and BLE connectivity.
MIPI DSI, USB OTG, USB Host, and RM_IO interfaces are available for
peripheral expansion.

Link: https://wiki.luckfox.com/Luckfox-Lyra/Luckfox-Lyra-Zero-W
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
Changes in v3:
- Add spi_nand label to flash@0 node
Changes in v2:
- No change
---
 arch/arm/boot/dts/rockchip/Makefile           |  3 ++-
 .../rockchip/rk3506b-luckfox-lyra-zero-w.dts  | 23 +++++++++++++++++++
 2 files changed, 25 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/rockchip/rk3506b-luckfox-lyra-zero-w.dts

diff --git a/arch/arm/boot/dts/rockchip/Makefile b/arch/arm/boot/dts/rockchip/Makefile
index 9a699bb8fc5a..faebeb20f467 100644
--- a/arch/arm/boot/dts/rockchip/Makefile
+++ b/arch/arm/boot/dts/rockchip/Makefile
@@ -48,4 +48,5 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rk3288-vyasa.dtb \
 	rk3506-luckfox-lyra-plus.dtb \
 	rk3506-luckfox-lyra.dtb \
-	rk3506b-luckfox-lyra-ultra.dtb
+	rk3506b-luckfox-lyra-ultra.dtb \
+	rk3506b-luckfox-lyra-zero-w.dtb
diff --git a/arch/arm/boot/dts/rockchip/rk3506b-luckfox-lyra-zero-w.dts b/arch/arm/boot/dts/rockchip/rk3506b-luckfox-lyra-zero-w.dts
new file mode 100644
index 000000000000..1ca6a25382f5
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rk3506b-luckfox-lyra-zero-w.dts
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+#include "rk3506b-luckfox-lyra.dtsi"
+
+/ {
+	model = "Luckfox Lyra Zero W";
+	compatible = "luckfox,lyra-zero-w", "rockchip,rk3506";
+};
+
+&fspi {
+	status = "okay";
+
+	spi_nand: flash@0 {
+		compatible = "spi-nand";
+		reg = <0>;
+		bootph-pre-ram;
+		bootph-some-ram;
+		spi-max-frequency = <80000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
+	};
+};
-- 
2.56.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
