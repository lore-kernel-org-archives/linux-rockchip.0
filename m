Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B789C3064D
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jul 2024 12:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TcTg05noNnfVTDqkeNcHR9LYmg96QNb2zuKVrp6He2Y=; b=y5kiGUw0HuTUwv
	xqrBmiWJitp+ylVs7E5h5ssFdH6FAXBbRye7xVk+TYAfhNoY/IhKIe50G9I4q1t4YX75xVCxXYN6T
	RWC5abLqDHeGH815lCLIg5NkzFp7lG3vs4/EKbrPUJ/Hjqshcp87idqiCLSRSmpjcqZuBWkCs8Yin
	1a1vDObcjhLokExkupfAuP8kawmYDg6yZ9OUXGWhddFUkNDTrvm1wejz7U3b/ZO/WE4+5yOwg1Nid
	qpW0hOKtBYGPCHI+NNRkKSrTF3JFBAuQTHcg4j9a2iKNFnxEwahPK0NFUgGKDQVUG5xfF3R1W8YOt
	I5oXyLxheb4VLVsxw2dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOczj-00000006kT7-068C;
	Tue, 02 Jul 2024 12:52:27 +0000
Received: from dd48830.kasserver.com ([85.13.164.221])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOczg-00000006kSi-0Ltb
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Jul 2024 12:52:25 +0000
Received: from ms7c95.fritz.box (p5098bff9.dip0.t-ipconnect.de [80.152.191.249])
	by dd48830.kasserver.com (Postfix) with ESMTPSA id 151616EC047D;
	Tue,  2 Jul 2024 14:46:29 +0200 (CEST)
From: Philipp Puschmann <p.puschmann@pironex.com>
To: linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	heiko@sntech.de,
	p.puschmann@pironex.com,
	devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: rk356x: add ethernet aliases
Date: Tue,  2 Jul 2024 14:46:26 +0200
Message-ID: <20240702124626.116290-1-p.puschmann@pironex.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-Spamd-Bar: ++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_055224_279125_24F7D861 
X-CRM114-Status: UNSURE (   9.46  )
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

Providing ethernet aliases solves a subtle problem for the rk3568. The
bus_id used for the sysfs directory name of the mdio. Without ethernet
alias the bus_id is always 0 and so creating the sysfs directory for the
second mdio fails with a duplicate filename error and by this the setup
of the second ethernet port fails too.

Note: The alias numbering is inverted as gmac1 comes from more generic
rk356x.dtsi but gmac0 comes from specialised rk3568.

Signed-off-by: Philipp Puschmann <p.puschmann@pironex.com>
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 4 ++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 1 +
 2 files changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index f1be76a54ceb..42018c8666e0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -8,6 +8,10 @@
 / {
 	compatible = "rockchip,rk3568";
 
+	aliases {
+		ethernet1 = &gmac0;
+	};
+
 	sata0: sata@fc000000 {
 		compatible = "rockchip,rk3568-dwc-ahci", "snps,dwc-ahci";
 		reg = <0 0xfc000000 0 0x1000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index d8543b5557ee..e13bd7b24752 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -43,6 +43,7 @@ aliases {
 		spi1 = &spi1;
 		spi2 = &spi2;
 		spi3 = &spi3;
+		ethernet0 = &gmac1;
 	};
 
 	cpus {
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
