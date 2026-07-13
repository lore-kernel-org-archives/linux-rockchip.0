Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70D7BC44514
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jul 2026 20:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WesYZw+K59Jax5duOVmWMnczxKCr0xBERrF1WRy1n94=; b=Ndf+2gn5PWi0hp
	eaw0pitBuUJAmZezjAuvpTP+QsFwqQCAY6WDb0wq27pl47Ejy2jOZoTfszTWAhlLbTejYy3u0iG9r
	rlACrAJiljIzLksDu8Uz2gw+ypQKCLBP+G2TolxlJGavwJgAg0Q7pkHR2jJkw4dygltDVuvQyWiHH
	/5hS4wvukS0SwyTwVeafA5e17lRFr3RVJ6srOMxNxdEHButGzJsRLxs5msqHJtOLkZ2EGkJ9EQp4t
	zsNjz4pC2Dpj4WlDW7Bw04dbv3cLz5VLwkQPhm3dCJu+hjyHoVNAA1LtCdDJpc6C0bTZUl32EEzDT
	Am6xmbzOuJVUKWofQyxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjNIs-0000000ANFD-0nZ3;
	Mon, 13 Jul 2026 20:31:02 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjNIk-0000000AMxq-0Vfw;
	Mon, 13 Jul 2026 20:30:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 69B5943B72;
	Mon, 13 Jul 2026 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4A764C2BCF7;
	Mon, 13 Jul 2026 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783974653;
	bh=slVXIX4GkzN7Eqrifla+gMTODGj1mtSLAwrAuVAdcAo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=IIp/u5Pp8yPOCWlxRKGmnD+TNKScn9DNTQTnWxHLL5FM4dA25NS02OmUtT9SCTR0Z
	 MrfTHGiroapCqD/FV2JM6JLmhD5hrFRfe5Gc/+SLDkdispzA4zoB6lF90xQF1NJl8Z
	 +RLS8DJNPpmAiVJaCZN8/47s6Z1AjFw/982TUnCthG57Pp177AZzHNWNgb/IHQuwne
	 6nvKPj0P8yaa1c9nPXyDTFvbVH1P4XbfIPNXTc731b+O6NiIPapT15wF5Hvb2c7Lbu
	 nUlT8t2SshYY7gH2n/68PFEolD9yGol18AqliOJsbkfJ9jkTEqK4Y1bL40Ff0VWcuc
	 chjh8WYbJFvOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38A97C44501;
	Mon, 13 Jul 2026 20:30:53 +0000 (UTC)
From: Joachim Eastwood via B4 Relay <devnull+joachim.eastwood.gmail.com@kernel.org>
Date: Mon, 13 Jul 2026 22:30:14 +0200
Subject: [PATCH v3 10/12] arm64: dts: rockchip: rk3588s-nanopi-r6: add
 comment to gmac phy-mode
MIME-Version: 1.0
Message-Id: <20260713-nanopi-m6-v3-10-227567ffc5dc@gmail.com>
References: <20260713-nanopi-m6-v3-0-227567ffc5dc@gmail.com>
In-Reply-To: <20260713-nanopi-m6-v3-0-227567ffc5dc@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, diederik@cknow-tech.com, 
 jonas@kwiboo.se, Joachim Eastwood <joachim.eastwood@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783974651; l=906;
 i=joachim.eastwood@gmail.com; s=20260701; h=from:subject:message-id;
 bh=QLwwfbhniGcF0c6ydiW48fJsP7DMQS+OrE042pH9bwc=;
 b=KbaJrHpRXzSCABELANIq9FRlYjtlJc4llt4uu8dxeJEegeT21VAkTQtnQ8U7BcYAAGCE0YtHy
 dxbgQosxMuLDXW/9xPjjHC3zkCuv4h0FNkNupRKjPLN5mlLIJWneyYb
X-Developer-Key: i=joachim.eastwood@gmail.com; a=ed25519;
 pk=ZN/8xWtdYaSd5oEfloYSZ1a+/ri0n0VZqjlEeHlbXFU=
X-Endpoint-Received: by B4 Relay for joachim.eastwood@gmail.com/20260701
 with auth_id=846
X-Original-From: Joachim Eastwood <joachim.eastwood@gmail.com>
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
Reply-To: joachim.eastwood@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Joachim Eastwood <joachim.eastwood@gmail.com>

Add comment to explain rgmii-rxid phy-mode usage. Note that the actual
delay in ns is not known. The tx_delay value of 0x42 comes from vendor
DT.

Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
index 84fde8a669a7..d67a7f3e7f8b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
@@ -199,7 +199,7 @@ &cpu_l3 {
 &gmac1 {
 	clock_in_out = "output";
 	phy-handle = <&rgmii_phy1>;
-	phy-mode = "rgmii-rxid";
+	phy-mode = "rgmii-rxid"; /* Vendor provided tx delay value below */
 	phy-supply = <&vcc_3v3_s3>;
 	pinctrl-0 = <&gmac1_miim
 		     &gmac1_tx_bus2

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
