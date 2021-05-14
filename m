Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D8B4C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 11:37:50 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 529B9610EA
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 11:37:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 529B9610EA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=manjaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bSkVq2wCVgkcfrCzXwlxir9qQJbRa+26b1xR/CF8LO4=; b=c2N22lm9kGitxU4p4H+LikX23
	ITsfeyFqJ6lLv79QJmrVfzDVAgLirRHYvtwCnkkozJKQsvw247ss19LYjWblRhSSIQFr41E/v99Uz
	9RDrEp/GMmlLcUskHiheweiiN3Wr/l1NIfc+TSz3BKh8oYDehtsu061RgH+otUpwAWoTXIGMrl5u1
	kK9Dps6DQblENbsKvxkZJDdvTDfbmEgBpXbkgBTisTy9udLJLvUSrKmTmpT82vY1dFSWaCp4i6PXm
	qufH10XCIcJzRF8IRZ2TVB1FJWyvUBWvTcXZrrWD4KP4LTkaqSncryz6J/DmSGqN+D2WAm29+Mqmt
	2JUX3lCTQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhW8Z-007vOZ-0l; Fri, 14 May 2021 11:37:47 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhW7q-007vAz-Ho; Fri, 14 May 2021 11:37:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=0/U0rlWwIVezjZJmLQxOlrunj3US2eW319IiRFW40tw=; b=e/FMrU9VynM9gg9VCYpgVTzz8X
 ghChnWxRCIdtCo1GoPF/flpeKOzvdqKjLEpBtNS29tWL9y7hs00wJg9hAVDlMQmV8Py++TIKbOm/t
 ualhSYODBvt7viL8miMy7DW0vOgCmudtEnMlRUf+QxLu7G7Qi+O1fYFBSORTY2lOghEgI8oKxWMer
 P7p9C26mRpRVObaWvhqusBM1lMqkCFRmp/YeWlj3HiUCUMVKHMKMVJGb9RusURJ5qS/371ue1aq80
 WX4V30teq8224RtfzXqYlBk8EItZwkO/joDi6lyynqAjTVFRebHZTqcemkH4dvTof2Lc8hB1a9gcv
 4gDNK9Jw==;
Received: from mail.manjaro.org ([2a01:4f8:150:448b::1])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhW7o-00BwQQ-0S; Fri, 14 May 2021 11:37:01 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id 7BD8C222567;
 Fri, 14 May 2021 13:36:58 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YuOpJ9Xe6iI3; Fri, 14 May 2021 13:36:55 +0200 (CEST)
From: Tobias Schramm <t.schramm@manjaro.org>
To: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
Cc: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 David Wu <david.wu@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Tobias Schramm <t.schramm@manjaro.org>
Subject: [PATCH 3/3] arm64: dts: rockchip: add gmac to rk3308 dts
Date: Fri, 14 May 2021 13:38:13 +0200
Message-Id: <20210514113813.2093534-4-t.schramm@manjaro.org>
In-Reply-To: <20210514113813.2093534-1-t.schramm@manjaro.org>
References: <20210514113813.2093534-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_043700_222652_CCE4FE42 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The RK3308 SoC has a gmac with only the RMII interface exposed. This
commit adds it to the RK3308 dtsi.

Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 0c5fa9801e6f..b815ce73e5c6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -637,6 +637,28 @@ nfc: nand-controller@ff4b0000 {
 		status = "disabled";
 	};
 
+	gmac: ethernet@ff4e0000 {
+		compatible = "rockchip,rk3308-gmac";
+		reg = <0x0 0xff4e0000 0x0 0x10000>;
+		interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "macirq";
+		clocks = <&cru SCLK_MAC>, <&cru SCLK_MAC_RX_TX>,
+			 <&cru SCLK_MAC_RX_TX>, <&cru SCLK_MAC_REF>,
+			 <&cru SCLK_MAC>, <&cru ACLK_MAC>,
+			 <&cru PCLK_MAC>, <&cru SCLK_MAC_RMII>;
+		clock-names = "stmmaceth", "mac_clk_rx",
+			      "mac_clk_tx", "clk_mac_ref",
+			      "clk_mac_refout", "aclk_mac",
+			      "pclk_mac", "clk_mac_speed";
+		phy-mode = "rmii";
+		pinctrl-names = "default";
+		pinctrl-0 = <&rmii_pins &mac_refclk_12ma>;
+		resets = <&cru SRST_MAC_A>;
+		reset-names = "stmmaceth";
+		rockchip,grf = <&grf>;
+		status = "disabled";
+	};
+
 	cru: clock-controller@ff500000 {
 		compatible = "rockchip,rk3308-cru";
 		reg = <0x0 0xff500000 0x0 0x1000>;
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
