Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1431C48260
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 16:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qk4WmpvoCrO/9zdoJCc4Af7xYBFyVdgPy7cOfOb0i7g=; b=za+KWAFWliTvUS
	shLjEliXwnWLwzRziyUbUrvxD6AJTF2dk4bZe0yJYLvInYhhKHUCRpNt3zkST74U4CMVapL2QcXpL
	0zlF8J3lVCtofqS/+EHqrqHjQr7uL+Ofaku7A3BFrS9nYyZpKGTrs27y0/E2hKmvj/Sj8H/Zpk7Za
	M6kc2rKXuZCyoReq6XUgY+cqt3ylMGAc+tz+eWcwcsF3fhuLP9PqW6CvHkPTlmjOFFvjUVjlL1wlq
	2X3K1z87wsObiePWKrVc52vCMIEJ+JBzepwYPAkVPVAgrQUF3awzFCTeuSvH6uxzTXA27DBscWK+J
	8W8TUb19bNRSL3NNjf6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZvlj-00000009yOj-33KV;
	Tue, 13 Feb 2024 16:36:27 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZvlZ-00000009yF3-1LHk;
	Tue, 13 Feb 2024 16:36:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1707842172;
	bh=N8XGqG6EO77dbuaFhDjXtSm+LE8VQGaOvq4GwvbAt0U=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WnFS03xLIK3rqImjfP2peI+x3omVK9bf7sCs5rP/oVyf2QtgMVFAW6wic1tGyqsrO
	 M6Vzqq0/6Dtl228KlpVPb4HEh3Poo9ZrSV97lfu8s6aJb/aMkzoCVekNp16PZu5MLE
	 w90lvkGpkf2ok4WritcNnTwDkilQn4zYadon5JJu4krGMQ5fYZ9YwIVbVcJoTCXIXV
	 lY7Hj9f4VWrA4kkVCpQPj46MAumLIX+m3lCnHKsikxzBNYLKEs+63Q7YTszNT3pbPa
	 o+joqvrFjAKDli7lh9uSsjBHqxfWbl7cw0dRJ54LmMkJgAV2YKGG0v0bBTt5YNWJvA
	 v0xTdSYs3oCIQ==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id DD3543782077;
	Tue, 13 Feb 2024 16:36:11 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 052084800D4; Tue, 13 Feb 2024 17:36:11 +0100 (CET)
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
Subject: [PATCH v2 06/12] arm64: dts: rockchip: Fix usb2phy nodename for rk3588
Date: Tue, 13 Feb 2024 17:32:40 +0100
Message-ID: <20240213163609.44930-7-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240213163609.44930-1-sebastian.reichel@collabora.com>
References: <20240213163609.44930-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_083617_543235_A3229B16 
X-CRM114-Status: GOOD (  11.06  )
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
