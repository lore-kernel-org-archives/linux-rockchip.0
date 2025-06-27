Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AA12C7EE2A
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Jun 2025 16:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hKSpQCMKjV4o/Pcae/VDGGdzN9zEAnkCTIxvQRqVZFM=; b=k0ffdwPym+hmyD
	v4dNTaPPNhX+PydoEWzD3JBCB7oVZi28+TvrIP5Jh4/OsMA2C4MyCbbPzeJUpqf1ioM9G6/e0gbk3
	UvNhaMYKpzzCUeDJKLLzDG1Vc//QnGBz6fVwTQlclBAyBjsJuKP9GO+muvNxXplJNzWJjVEW3EEld
	POR6CL33zYL5EWcunU8s9WQ9zlLXfnlofZNVkP2w/v7WHQHJZgG4EKtTK/8alQzzUEt7kUMpO9VJE
	6zJ1M/mXEOQf8skAilzKBp5np5N7gNzAQsjhi0AX+vGJnkbOLC+TT7K9JQPbGrA3HDUHc3oC00E8t
	rRC/T8eu2IAQIsEgz2aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVBY6-0000000FCrN-17VD;
	Fri, 27 Jun 2025 16:03:34 +0000
Received: from out-174.mta0.migadu.com ([91.218.175.174])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVAzD-0000000F6E5-1aPi
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Jun 2025 15:27:32 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1751038049;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kTB3zWm7oNw70pUsCc6ZoGv3uOF6aJxYArBzhguuOPM=;
	b=zegeCMgFHauTH2R35p0c8FdzreJQoK2TMRMP6hi3anjcv8GpCS6qMdBWFFaLXstfjX0EOI
	iiTijoKhrp2Ncd6fiVlgYOAotL3KOt/Z7WocZJtEC4/Wv9w/kmzZMRypDaJAri9LSiz2Jm
	05jEn1GeNLpnl7E1SBvvu/xUE0qOGEvPcSFONs+uK2LwPa4XeU3ex0i3K2Mtpv1uufy08s
	TkCAX01yTzsz15pK676T/bEljGqzGCn3H80/WlzWBYATv9tjQuWFGrOz9MVr5R8O0rbnUU
	1s+77xKVKcOvZQkocwL2eZ5HkwvXraoSJ/Y+323RDVzu/+I9p1sdnX46xop7Xg==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH 7/8] arm64: dts: rockchip: Drop unneeded address+size-cells on px30
Date: Fri, 27 Jun 2025 17:16:26 +0200
Message-ID: <20250627152645.740981-8-didi.debian@cknow.org>
In-Reply-To: <20250627152645.740981-1-didi.debian@cknow.org>
References: <20250627152645.740981-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_082731_555573_F477E5CD 
X-CRM114-Status: UNSURE (   7.95  )
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

On nodes with compatible "rockchip,px30-usb2phy-grf", the #address-cells
and #size-cells are required and consequently their child nodes should
have unit addresses. That is not the case for the px30-pmugrf and
px30-grf nodes, so remove them there.

This fixes the following DTB validation warnings:

  unnecessary #address-cells/#size-cells without "ranges",
  "dma-ranges" or child "reg" property

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 5034ad8019a8..46f64cd33b9b 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -351,8 +351,6 @@ power-domain@PX30_PD_GPU {
 	pmugrf: syscon@ff010000 {
 		compatible = "rockchip,px30-pmugrf", "syscon", "simple-mfd";
 		reg = <0x0 0xff010000 0x0 0x1000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
 
 		pmu_io_domains: io-domains {
 			compatible = "rockchip,px30-pmu-io-voltage-domain";
@@ -453,8 +451,6 @@ gic: interrupt-controller@ff131000 {
 	grf: syscon@ff140000 {
 		compatible = "rockchip,px30-grf", "syscon", "simple-mfd";
 		reg = <0x0 0xff140000 0x0 0x1000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
 
 		io_domains: io-domains {
 			compatible = "rockchip,px30-io-voltage-domain";
-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
