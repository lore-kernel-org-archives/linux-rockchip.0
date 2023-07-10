Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0054FEB64D9
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 11:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fFql5FvTL3aZyzhozfvDqRhl8tyqKHLwoc2vz/sCXlM=; b=bnlUtZC4xmqtOc
	n3P7lGuT7T0ly7MAQDNH15/jw1nMbwrL1IQ8ORqZad8ijbJ1OiofJZ5Y44u+Q4kXdMUdYsDHxv/eR
	PNww9+gBYCJmpYPClf3ZRzwynB2/1lS1H7WN+NTch+KWqlup0pblQO61UuY7L3ht2LiZMxcQ6LgP2
	5AENsOUsSGBu9QuD78sIbWoCjBEwBIfzAd9U+fxQLlRchSQTNvGpFz2Dci19RKR5NscNGkbAaNMCM
	j16JjYf8Mgv4RteF4m5f9oilHtb25UDaK8xFXiOboqO0iDZt9K0KqmrdcJEbKNjoUK2IAT7zpffZb
	1RWxs6bz5kXi/dgwrDaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIpPh-00BW3A-0p;
	Mon, 10 Jul 2023 11:50:45 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIpPX-00BVxE-1z;
	Mon, 10 Jul 2023 11:50:38 +0000
Received: from obbardc-t14.home (unknown [IPv6:2a00:23c8:b70a:ae01:f690:3e44:90e:2421])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 79E446606FFA;
	Mon, 10 Jul 2023 12:50:30 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1688989830;
	bh=PjabzgQmfkL9GbnomNrVzecnkjDXllPi8P9uPmapx8U=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RQBNWkDc7DkBV17oflSU9vT/+juYyaD7Y2XRi4PnkVPyaYeKMtnX7swefAknOm2W3
	 HIrEIHnrI1KXsYwiPXJgRrhu1pxOn7grEf+p2ZSW6n3xIdrZtAE8ddcn1Mi25HJEWh
	 S3Bq/vmyXJGv6M8No/Cnm2d3Z3mgrt0CXhfE0Zq2Pm00oomT+z4v2kxrhhPwmIvSQ7
	 yy3i4gP+qkNQ36ZiWrNhSLDhO9NbsuIpbWRUCIWgwEBz1HP6qT9Ph53X5lXYNq4osp
	 yt3SL+h9iCYKuoOZrb8CmFhKh9j0ElozoauI3r2Og3fLyZPHG5oKHSDhpc3vgxP5L3
	 GySerQr1JCLVw==
From: Christopher Obbard <chris.obbard@collabora.com>
To: linux-rockchip@lists.infradead.org
Cc: kernel@collabora.com,
	Christopher Obbard <chris.obbard@collabora.com>,
	Conor Dooley <conor+dt@kernel.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] arm64: dts: rockchip: Move OPP table from ROCK Pi 4 dtsi
Date: Mon, 10 Jul 2023 12:50:23 +0100
Message-Id: <20230710115025.507439-2-chris.obbard@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230710115025.507439-1-chris.obbard@collabora.com>
References: <20230710115025.507439-1-chris.obbard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_045035_828073_AFB4770A 
X-CRM114-Status: GOOD (  12.62  )
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

The ROCK 4SE uses the RK3399-T variant of the RK3399 SoC, which has some
changes to the OPP tables. Prepare for the bringup of this SoC by moving
the inclusion of existing OPP tables from the common devicetree into
each board-specific devicetree.

Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
---

(no changes since v1)

 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts | 1 +
 4 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 907071d4fe80..ec307ee20c66 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -9,7 +9,6 @@
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/pwm/pwm.h>
 #include "rk3399.dtsi"
-#include "rk3399-opp.dtsi"
 
 / {
 	aliases {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
index 89f2af5e111d..931334aa3d62 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
@@ -6,6 +6,7 @@
 
 /dts-v1/;
 #include "rk3399-rock-pi-4.dtsi"
+#include "rk3399-opp.dtsi"
 
 / {
 	model = "Radxa ROCK Pi 4A";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
index 0806545922f5..e98a182f8572 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
@@ -6,6 +6,7 @@
 
 /dts-v1/;
 #include "rk3399-rock-pi-4.dtsi"
+#include "rk3399-opp.dtsi"
 
 / {
 	model = "Radxa ROCK Pi 4B";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
index 4053ba72618c..d32efab74e94 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
@@ -7,6 +7,7 @@
 
 /dts-v1/;
 #include "rk3399-rock-pi-4.dtsi"
+#include "rk3399-opp.dtsi"
 
 / {
 	model = "Radxa ROCK Pi 4C";
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
