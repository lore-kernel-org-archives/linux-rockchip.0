Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CC96EEB59A
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Sep 2023 06:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wj5YDcg1Rh4ahilDtZUTX49GRkbdmNICzhEGmi/88AQ=; b=suRBElZSm/ptHl
	QfFBzTm3zaPYgBBe33Ag6OL5o2EyMKzgtfni5q+Xx2HMyJaVfdeqXcvB+B/1nk2tjpLwTuArHU8pr
	IdSMfRNktCrkB2MRvd7fIY6RJibwIXbTeMwOg1Oikv6vYNWh1YLY29e2PkBIco1F2J2TJ+WTkAbvS
	G448rQdRUYL6uAA0bSfNffXOKJ/E266TKwXfeOHRseQ+CB6Bo29zNehkZn4wa75ibds77bN0FpLW8
	ZE/E/NevhACrvn4n3CLlo1dDW98q9E7YsgcZOZVw3vpZojL45un6uD8jTBc6GdDBG5H6EtKg8BcUb
	HEgyAcYCRdignHU9bm/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgJdl-004qN5-38;
	Wed, 13 Sep 2023 06:46:22 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgJdk-004qMZ-0h
	for linux-rockchip@bombadil.infradead.org;
	Wed, 13 Sep 2023 06:46:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=LnuhZtE5UZ22VjjBhzFc6FvEaBlphQABYOyVJNzMzbk=; b=DnJPqntlsh14k9drYc6GvvFncS
	/2BqlZoUuNpoxNDNP2EPKeXpSgpKGUoh5Vwxh50HttMBTRcnbUH4tVv0dD15q4R4shZTzahEFhvsb
	noBQG7NwoKTjtdvGBo8AoswCi2AWG7E+aH4vjbn/Ai7CvTZnI0jQW0HxEH/GSJuKf60CLDKYhZHXn
	ZKh+Jrkv0ykCsr1cwvzitmxw7aqFGOYiiaZr0sXDC5PMJ3iuKk5PEYu1HvBNnnxc4TxeD+o6G7UvX
	DV50nxLjs+EMN02rw4KkMr9Srw0DI/4c5XGV0780XTq3EWrV+afOKFryqZLTE9+/7sTyCOsf40BIv
	S7K/NJeQ==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1qgJdc-00CKXV-ER
	for linux-rockchip@lists.infradead.org; Wed, 13 Sep 2023 06:46:18 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 38D6jGWg008744;
	Wed, 13 Sep 2023 15:45:17 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de, sebastian.reichel@collabora.com,
        kever.yang@rock-chips.com
Cc: linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/2] arm: dts: rockchip: rk3588s: add SFC (Serial Flash Controller) node
Date: Wed, 13 Sep 2023 15:45:04 +0900
Message-Id: <20230913064505.77393-1-naoki@radxa.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_074612_982925_D2D32254 
X-CRM114-Status: UNSURE (   5.86  )
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

this adds sfc node which is required for SPI flash.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 5544f66c6ff41..849e9568846d4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -18,6 +18,15 @@ / {
 	#address-cells = <2>;
 	#size-cells = <2>;
 
+	aliases {
+		spi0 = &spi0;
+		spi1 = &spi1;
+		spi2 = &spi2;
+		spi3 = &spi3;
+		spi4 = &spi4;
+		spi5 = &sfc;
+	};
+
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -1424,6 +1433,15 @@ sata-port@0 {
 		};
 	};
 
+	sfc: spi@fe2b0000 {
+		compatible = "rockchip,sfc";
+		reg = <0x0 0xfe2b0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 206 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru SCLK_SFC>, <&cru HCLK_SFC>;
+		clock-names = "clk_sfc", "hclk_sfc";
+		status = "disabled";
+	};
+
 	sdmmc: mmc@fe2c0000 {
 		compatible = "rockchip,rk3588-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xfe2c0000 0x0 0x4000>;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
