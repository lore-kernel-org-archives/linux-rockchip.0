Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40F99C48BF6
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Feb 2024 17:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qk4WmpvoCrO/9zdoJCc4Af7xYBFyVdgPy7cOfOb0i7g=; b=hr87pYZsLPoJ6b
	9SmdtmwEhwV7rHYH1mGg8Zrxpz2OuSUR7a617tjHPIFBZxqcwDXaqnp8X0uLRITg2cGOsCbS8sOdB
	RLPNbS+bu/tZU/E1yM/YYUMj1kCcv+uudZJlzVr67Y2wY+xEHLOn9iucvEHizFq/aKX04qoqCJTqW
	ii0g5qsSjZl4LqMeEhJTC6rGGmmvjIVYIujuV2NiTY33EJQiyN4pdlvWHcaKf5ha3PvmxlEKFmu8R
	kVFM3Umm23BJJCfe3pShtJx/8nXQHgizVXjQYbHcEyQVVysFmGp8rELWI8U8V+Yb8uPh/4I8UX4iq
	DOtRVuxxcmRW7tzI4cUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb1eU-000000036fC-12iJ;
	Fri, 16 Feb 2024 17:05:30 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb1eK-000000036W2-3z6d;
	Fri, 16 Feb 2024 17:05:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1708103117;
	bh=N8XGqG6EO77dbuaFhDjXtSm+LE8VQGaOvq4GwvbAt0U=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=5djO+gs3MhhDRXxctlKKQB0f2cE7ixtZaRGR2jFfYYzMzjz56utdMtKVAQ9E5/BLP
	 ppNTPkWPKbgIrKBBn4NPp6TcgfTztcMAwd1rElJgMzqVUJHmy8gyWfn26u4W98F6If
	 O+17+78Lxa3ciYsjquDfi8NeA1PSnWBh2RiqWwEAvJT509s6FU73uNMAXRCEMUQve5
	 xcnAFNAVYHvgcG5H85OPBkPKeJLfA+flwYLXJPYUcWy20R6KHSjU13exfrp61npVs/
	 pHjWDuOIlwPO0wwWKDDrBhsKe11goRAfiwMRSA36PdTrV6l/T/9vHZXNEE1liXKpnp
	 how1JA30JlVZg==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 60D4237820BC;
	Fri, 16 Feb 2024 17:05:17 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id D71B14800D0; Fri, 16 Feb 2024 18:05:16 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v3 04/10] arm64: dts: rockchip: fix usb2phy nodename for rk3588
Date: Fri, 16 Feb 2024 18:01:19 +0100
Message-ID: <20240216170514.75200-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240216170514.75200-1-sebastian.reichel@collabora.com>
References: <20240216170514.75200-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_090521_181625_3E8638EC 
X-CRM114-Status: GOOD (  11.26  )
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

usb2-phy should be named usb2phy according to the DT binding,
so let's fix it up accordingly.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 36b1b7acfe6a..38e075b7b661 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -542,7 +542,7 @@ usb2phy2_grf: syscon@fd5d8000 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 
-		u2phy2: usb2-phy@8000 {
+		u2phy2: usb2phy@8000 {
 			compatible = "rockchip,rk3588-usb2phy";
 			reg = <0x8000 0x10>;
 			interrupts = <GIC_SPI 391 IRQ_TYPE_LEVEL_HIGH 0>;
@@ -567,7 +567,7 @@ usb2phy3_grf: syscon@fd5dc000 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 
-		u2phy3: usb2-phy@c000 {
+		u2phy3: usb2phy@c000 {
 			compatible = "rockchip,rk3588-usb2phy";
 			reg = <0xc000 0x10>;
 			interrupts = <GIC_SPI 392 IRQ_TYPE_LEVEL_HIGH 0>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
