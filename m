Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0989C021B2
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Feb 2025 17:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rVtYuOcjnmWzZ8+B9M9eas+xoIF59wkqSWFCY67VfcM=; b=TPCt+JEmfmL1EU
	6ZG1BFZaeX43hqzqzFL/a7InK8cvQQxogorpgaFZ1kzlC5t5EYlrrIOspdTXyR0DGImBSny+N6vcM
	abBhbhUXM/tShYXrdrqDJjNZ4cvcRPSoKZpODi8XJ7yMYdb3Jf2Byb7rAJD4KFtQeN674CTma9KlP
	38VL0RIrMASuaaIU+Uw7YxhEpCWNxBtc1TQhVFclaTgZWc6cIPwpJax1Y0Cqg5ASvpVBZLfuwT3kN
	mc88ThJzKneA7gKSQCDpZcae6/0CFZfnxiTBOBryw1xcVkEGKI9sNfmL9rCT4wrfd//pwvavhPKqp
	3bZZ6ybml5sj3y6uSP2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmyZQ-00000000Zzy-2ZsH;
	Tue, 25 Feb 2025 17:18:12 +0000
Received: from sendmail.purelymail.com ([34.202.193.197])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmyMf-00000000XAy-0NKA
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Feb 2025 17:05:02 +0000
DKIM-Signature: a=rsa-sha256; b=My/Ik8yQXNApV1SCoUvMv/++qdBQ8pG74OekpLZgHMUC2V6KGYr7n+RXw8f9YulbQoIer0bWzY3zdFfJoGYplwqTPwzY4AStkYxHa1jLoy8NBOPpPLg+WV2EhqhRUYE5R+im1U7PK7W9QrTZyxlt8OXrv+Jht1n4IlGt65cCazMxgfZdnDLJmm0cMboMztI89zXmf5VW2ItrnnJC0pblrCWWUuCA1GOWTd/Bd4Wlyf0o1Hqe34ROXaFejQdDjTCFzdaft/MP7DURmLJqBMd6iy49F7knj1RO7K/Z4Pi5qDDoZSApJfIXLR5y7UUT3zKP5p9ycmv2wxawE9/VwrqNqw==; s=purelymail2; d=tidylabs.net; v=1; bh=DNXWRytIBbFeyPrIFkAaBq4o0JbNSGPn9DG6QfsZ6tE=; h=Received:From:To:Subject:Date;
DKIM-Signature: a=rsa-sha256; b=v2j+qGVgbCn4uxsEoPb+dkK1Eg89ymYijpb+93nCXlovjwyJ4TUQFDZOIxS4m9cmpSXKLKqeYGKglZSJwyf7nasa+QHw2ojpNbgRDfGCld3dLsQYcKIpOibih4K8lKIMVhIFAFYYaI2c51scKP5WJOKy51O6zgbzsnHSekWBvFC/wecleZF/I1pT+Z8SiB3T5pUOjtRQ2oKzvAXPLIRh84aUVvCyWL0dyZvMNsvNqXA3Kp0HO6pNGWflDt076pUAO8B9MQNkPSOI6wXDcc3S7VFA2mpIIF+QDHh40VnMyG64lxBPuQXsH7Iy1Tdjeg4057gy979ZmAl81bL8flGY2A==; s=purelymail2; d=purelymail.com; v=1; bh=DNXWRytIBbFeyPrIFkAaBq4o0JbNSGPn9DG6QfsZ6tE=; h=Feedback-ID:Received:From:To:Subject:Date;
Feedback-ID: 81901:11097:null:purelymail
X-Pm-Original-To: linux-rockchip@lists.infradead.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id 594455725;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Tue, 25 Feb 2025 17:04:31 +0000 (UTC)
From: Justin Klaassen <justin@tidylabs.net>
To: Tianling Shen <cnsztl@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Justin Klaassen <justin@tidylabs.net>,
	stable@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: fix u2phy1_host status for NanoPi R4S
Date: Tue, 25 Feb 2025 17:03:58 +0000
Message-ID: <20250225170420.3898-1-justin@tidylabs.net>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <48c705e65cc8e8d4716b41a4a87170e3@manjaro.org>
References: <48c705e65cc8e8d4716b41a4a87170e3@manjaro.org>
MIME-Version: 1.0
X-MIME-Autoconverted: from 8bit to quoted-printable by Purelymail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_090501_198422_091594FF 
X-CRM114-Status: GOOD (  10.42  )
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

The u2phy1_host should always have the same status as usb_host1_ehci
and usb_host1_ohci, otherwise the EHCI and OHCI drivers may be
initialized for a disabled usb port.

Per the NanoPi R4S schematic, the phy-supply for u2phy1_host is set to
the vdd_5v regulator.

Fixes: db792e9adbf8 ("rockchip: rk3399: Add support for FriendlyARM NanoPi R4S")
Cc: stable@vger.kernel.org
Signed-off-by: Justin Klaassen <justin@tidylabs.net>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
---
v1 -> v2: Updated commit message, added Fixes: and Cc: stable tags

 arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi
index b1c9bd0e63ef..8d94d9f91a5c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi
@@ -115,7 +115,7 @@ &u2phy0_host {
 };
 
 &u2phy1_host {
-	status = "disabled";
+	phy-supply = <&vdd_5v>;
 };
 
 &uart0 {
-- 
2.47.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
